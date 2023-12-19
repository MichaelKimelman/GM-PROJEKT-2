/// @description Insert description here
// You can write your code in this editor


itemsArray = [];//VET EJ
itemsLeft = 0;

availableItems = ds_list_create();

global.gamePaused = !global.gamePaused;

for(var i = 0; i < ds_list_size(global.weaponList);i++)
{
	if(ds_list_find_index(global.attackList, ds_list_find_value(global.weaponList, i)) == -1)
	{
		ds_list_add(availableItems, ds_list_find_value(global.weaponList, i));
	}
}

availableItemsSize = ds_list_size(availableItems);

for(var i = 0; i < availableItemsSize; i++)
{
	var _inst = instance_create_layer( ((room_width/2) - (20 * availableItemsSize)) + i * 30, room_height/2, "Instances", oSelectOptionMenuItem);
	
	with(_inst)
	{
		item = ds_list_find_value(other.availableItems, i)
		sprite_index = item.spr;
		index = i;
	}
}