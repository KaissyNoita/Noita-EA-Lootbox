table.insert( actions,
{
	id          = "EA_LOOTBOX",
	name 		= "EA Lootbox",
	description = "50% chance to receive gold, 50% chance to explode",
	sprite 		= "data/ui_gfx/gun_actions/ea_lootbox.png",
	sprite_unidentified = "data/ui_gfx/gun_actions/light_bullet_unidentified.png",
	type 		= ACTION_TYPE_STATIC_PROJECTILE,
	spawn_level                       = "0,1", -- LIGHT_BULLET
	spawn_probability                 = "1,1", -- LIGHT_BULLET
	price = 100,
	mana = 5,
	--max_uses = -1,
	action 		= function()
		add_random_projectile({
			{ "data/entities/projectiles/deck/lootbox_explosion.xml", "IS_PROJECTILE", 1 },
			{ "data/entities/projectiles/deck/lootbox_coins_x100.xml", "IS_ENTITY", 100 }
		})
		c.fire_rate_wait = c.fire_rate_wait + 70
	end,
} )