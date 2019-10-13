dofile( "data/scripts/lib/utilities.lua" )
function add_random_projectile( entity_filename_array )

	local rand = Random
	local index = rand(1,#entity_filename_array)
	local projectile_type = entity_filename_array[index][2]

	case ={

	['IS_PROJECTILE'] = function ( )
	        add_projectile( entity_filename_array[index][1] )
	 end, 
	['IS_ENTITY'] = function ( )
	         execute_random_entity( entity_filename_array[index] )
	 end,
	}

	if case[projectile_type] then
		case[projectile_type]()
	end
end

function execute_random_entity( projectile )

	if reflecting then
		Reflection_RegisterProjectile( projectile[1] )
		return
	end
	local entity = GetUpdatedEntityID()
	add_projectile( projectile[1] )
	for i=1,projectile[3]-1 do
		local x, y = EntityGetTransform( entity )
		EntityLoad( projectile[1], x, y-8 )
	end
	--add_projectile( projectile[1] )
	EndProjectile()

end