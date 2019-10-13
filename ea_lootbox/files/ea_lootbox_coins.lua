dofile( "data/scripts/lib/utilities.lua" )

local coin_count = 100

local entity = EntityGetWithTag( "player_unit" )[1]
for i=1,coin_count do
	local x, y = EntityGetTransform( entity )
	EntityLoad( "data/entities/items/pickup/goldnugget.xml", x, y-8 )
end