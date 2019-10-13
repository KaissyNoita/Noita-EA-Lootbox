dofile( "data/scripts/lib/utilities.lua" )
function add_random_projectile( entity_filename_array )
	math.randomseed(os.time())
	local index = math.random(1, #entity_filename_array)
	
	local projectile_type = entity_filename_array[index][2]

	case ={

	['IS_PROJECTILE'] = function ( )
	        add_projectile( entity_filename_array[index][1] )
	 end, 
	['IS_ENTITY'] = function ( )
	        add_projectile( entity_filename_array[index][1] )
	 end,
	}

	if case[projectile_type] then
		case[projectile_type]()
	end
end