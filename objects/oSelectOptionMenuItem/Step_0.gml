/// @description Insert description here
// You can write your code in this editor


//CLICK ME -> GIVE PLAYER WEAPON -> DESTROY MENU + MENU ITEMS -> NEWROUND() + UNPAUSE
//if(global.currentRound < 50)
//{
//	global.currentRound++;
//}
//else
//{
//	global.currentRound = 1;
//}
if(instance_position(mouse_x, mouse_y, self.id) && mouse_check_button_pressed(mb_left))
{
	
	//global.currentRound++;
	
	//with(oSelectOptionMenuItem)
	//{
	//	if( id != other.id)
	//	{
	//		instance_destroy();
	//	}
	//}
	
	ds_list_add(global.attackList, item);
	
	global.gamePaused = false;
	
	//NewRound();
	
	with(oSelectOptionMenu)
	{
		instance_destroy();
	}
	
	with(oSelectOptionMenuItem)
	{
		instance_destroy();
	}
	
	//instance_destroy();
	
}