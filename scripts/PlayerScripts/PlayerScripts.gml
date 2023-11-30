// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerScripts(){

}




///
/// Player Free State
///
function PlayerStateFree()
{
	if(hp <= 0)
	{
		instance_destroy();
	}
	
	xSpd = lengthdir_x(inputMagnitude * moveSpd, inputDirection);
	ySpd = lengthdir_y(inputMagnitude * moveSpd, inputDirection);
	
	//INSERT COLLISION FUNCTION
	PlayerTakeDamage();
	
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
/// Take Damage + Move away player
///
function PlayerTakeDamage()
{
	var collidedEnemy = instance_place(x, y, oEnemy);
	if(collidedEnemy != noone)
	{
		var newDirection = point_direction( collidedEnemy.x, collidedEnemy.y, x, y);
		
		xSpd = lengthdir_x(20, newDirection);
		ySpd = lengthdir_y(20, newDirection);
		
		hp -= 2;
		
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
					image_angle = dir;
				}
				else
				{
					dir = 180;
					image_angle = dir;
				}
				
			}
			directionOfAttack *= -1;
		}
		attack0Cooldown = 60;
	}
}




///
/// Attack 1 
///
function Attack1()
{
	if(attack1Cooldown != 0)
	{
		attack1Cooldown--;
	}
	
	if(attack1Cooldown == 0)
	{
		var directionOfAttack = 1;
		
		repeat(2)
		{
			var attackInst = instance_create_layer(x , y + 10 * directionOfAttack, "Instances", oAttack0);
			
			with(attackInst)
			{
				if(directionOfAttack)
				{
					dir = 270;
					image_angle = dir;
				}
				else
				{
					dir = 90;
					image_angle = dir;
				}
				
			}
			directionOfAttack *= -1;
		}
		attack1Cooldown = 60;
	}
}