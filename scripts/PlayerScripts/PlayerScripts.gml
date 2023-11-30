// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerScripts(){

}




///
/// Player Free State
///
function PlayerStateFree()
{
	xSpd = lengthdir_x(inputMagnitude * moveSpd, inputDirection);
	ySpd = lengthdir_y(inputMagnitude * moveSpd, inputDirection);
	
	//INSERT COLLISION FUNCTION
	
	x += xSpd;
	y += ySpd;
	
	PlayerAttacksExecute();
	//if(mouseButtonLeft)
	//{
	//	instance_destroy();
	//}
}




///
/// Execute Player Attacks
///
function PlayerAttacksExecute()
{
	for( var i = 0; i < ds_list_size(attackList); i++)
	{
		script_execute(ds_list_find_value(attackList, i));
	}
}




///
/// Attack 0 
///
function Attack0()
{
	if(attack0Cooldown != 0)
	{
		attack0Cooldown--;
	}
	
	if(attack0Cooldown == 0)
	{
		var directionOfAttack = 1;
		
		repeat(2)
		{
			var attackInst = instance_create_layer(x + 10 * directionOfAttack, y, "Instances", oAttack0);
			
			with(attackInst)
			{
				if(directionOfAttack)
				{
					dir = 0;
				}
				else
				{
					dir = 180;
				}
				
			}
			directionOfAttack *= -1;
		}
		attack0Cooldown = 180;
	}
}