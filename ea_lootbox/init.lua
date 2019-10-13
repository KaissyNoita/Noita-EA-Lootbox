function OnModPreInit()
	print("Mod - OnModPreInit()") -- first this is called for all mods
end

function OnModInit()
	print("Mod - OnModInit()") -- after that this is called for all mods
end

function OnModPostInit()
	print("Mod - OnModPostInit()") -- then this is called for all mods
end

function OnPlayerSpawned( player_entity ) -- this 
	-- GamePrint( "Mods says: Player entity id: " .. tostring(player_entity) )
end


-- this code runs when all mods' filesystems are registered
ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/ea_lootbox/files/ea_gun_actions.lua" ) -- basically dofile("mods/example/files/actions.lua") will appear at the end of gun_actions.lua
ModLuaFileAppend( "data/scripts/gun/gun.lua", "mods/ea_lootbox/files/ea_gun.lua" ) -- basically dofile("mods/example/files/actions.lua") will appear at the end of gun_actions.lua
print("Lootbox Activated")
