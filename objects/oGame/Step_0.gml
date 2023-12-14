/// @description Insert description here
// You can write your code in this editor



if(global.enemiesKilledThisRound >= global.enemiesMaxThisRound)
{
	if(!global.victoryCondition && global.currentRound > 0)
	{
		global.enemiesKilledThisRound = 0;
		NewRound();
		if(!global.victoryCondition)
		{
			instance_create_layer((room_width/2) - (sprite_get_width(sPauseMenu)/2), ((room_height/2) - (sprite_get_height(sPauseMenu)/2)), "Instances", oSelectOptionMenu);
		}
	}
	
	if(global.currentRound == 0)
	{
		NewRound();
	}
	//
}

escButton = keyboard_check_pressed(vk_escape);

if(!instance_exists(oSelectOptionMenu))
{
	if(!instance_exists(oPauseObject))
	{
		if(escButton)
		{
			instance_create_layer((room_width/2) - (sprite_get_width(sPauseMenu)/2), ((room_height/2) - (sprite_get_height(sPauseMenu)/2)) - 100, "Instances", oPauseObject);
			global.gamePaused = !global.gamePaused;
		}
	}
	else 
	{
		if( escButton || (position_meeting(mouse_x, mouse_y, oPauseObject) && mouse_check_button(mb_left)))
		{
			global.gamePaused = !global.gamePaused;
			
			with(oPauseObject)
			{
				instance_destroy();
			}
		}
	}
}