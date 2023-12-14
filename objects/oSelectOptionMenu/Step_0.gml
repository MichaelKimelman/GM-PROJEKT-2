/// @description Insert description here
// You can write your code in this editor


itemsLeft = 4 - ds_list_size(global.attackList);

//if(!instance_exists(oSelectOptionMenuItem))
//{
//	for(var i = 0; i < availableItemsSize; i++)
//	{
//		var _inst = instance_create_layer( ((room_width/2) - (20 * availableItemsSize)) + i * 1, room_height/2, "Instances", oSelectOptionMenuItem);
		
//		with(_inst)
//		{
//			item = ds_list_find_value(other.availableItems, i)
//			sprite_index = item.spr;
//		}
//	}
//}

if(mouse_check_button(mb_left))
{
	//global.gamePaused = false;
}