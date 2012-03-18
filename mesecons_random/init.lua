--Launch TNT

mesecon:register_on_signal_on(function(pos, node)
	if node.name=="experimental:tnt" then
		minetest.env:remove_node(pos)
		minetest.env:add_entity(pos, "experimental:tnt")
		nodeupdate(pos)
	end
end)

-- REMOVE_STONE

minetest.register_node("mesecons_random:removestone", {
	tile_images = {"jeija_removestone.png"},
	inventory_image = minetest.inventorycube("jeija_removestone_inv.png"),
	material = minetest.digprop_stonelike(1.0),
    	description="Removestone",
})

minetest.register_craft({
	output = '"mesecons_random:removestone" 4',
	recipe = {
		{'', '"default:cobble"',''},
		{'"default:cobble"', '"mesecons:mesecon_off"', '"default:cobble"'},
		{'', '"default:cobble"',''},
	}
})

mesecon:register_on_signal_on(function(pos, node)
	if node.name=="mesecons_random:removestone" then
		minetest.env:remove_node(pos)
	end
end)