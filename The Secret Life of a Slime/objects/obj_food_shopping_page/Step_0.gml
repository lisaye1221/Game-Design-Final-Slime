event_inherited();


if (global.seedTier == 1 and global.addedSeeds1 == false) {
	variable_struct_set(inventory,"radish",new create_shop_item(global.item_list.radishes,20,5));
	variable_struct_set(inventory,"carrot",new create_shop_item(global.item_list.carrots,20,5));
	variable_struct_set(inventory,"lettuce",new create_shop_item(global.item_list.lettuce,10,5));
}	


if (global.seedTier == 2 and global.addedSeeds2 == false) {
	variable_struct_set(inventory,"radish",new create_shop_item(global.item_list.pumpkins,30,5));
	variable_struct_set(inventory,"carrot",new create_shop_item(global.item_list.roses,35,5));
	variable_struct_set(inventory,"lettuce",new create_shop_item(global.item_list.stars,40,5));
}	

