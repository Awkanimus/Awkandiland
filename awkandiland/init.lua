local modpath = minetest.get_modpath(minetest.get_current_modname())

local function register_crafts()
    -- The player *could* drop gravel, then mine it, then drop it.... but why?
    -- Here's a non-grindy way to do that.
    minetest.register_craft({
	type = "shapeless",
	output = "default:flint",
	recipe = { "default:gravel" }
    })
    -- The player *could* grind junglegrass into cotton_seed but why? Here's a
    -- non-grindy way to accomplish that.
    minetest.register_craft({
	type = "shapeless",
	output = "default:cotton_seed",
	recipe = { "default:junglegrass" }
    })

    -- We have three kinds of blueberries but only one of them is farmable.
    -- This bridges that by converting two of them into the farmable ones.
    minetest.register_craft({
	type = "shapeless",
	output = "farming:blueberries",
	recipe = { "bushes:blueberry" }
    })
    minetest.register_craft({
	type = "shapeless",
	output = "farming:blueberries",
	recipe = { "default:blueberries" }
    })


    -- Add a receipe for the elepower tome
    minetest.register_craft({
	type = "shapeless",
	output = "elepower_tome:tome",
	recipe = { "group:book", "elepower_machines:crank" }
    })

end


minetest.register_on_mods_loaded(function()

    minetest.log("error", "Forcing manual garbage collection.")
    collectgarbage("count")
    minetest.log("error", "Manual garbage collection done.")

end)
-- This is fatal.
-- dofile(modpath.."/grow.lua")

register_crafts()
