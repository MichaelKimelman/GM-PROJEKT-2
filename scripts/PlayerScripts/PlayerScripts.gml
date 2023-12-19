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
	for( var i = 0; i < ds_list_size(global.attackList); i++)
	{
		var _listItem = ds_list_find_value(global.attackList, i);
		//var _listArraySize = 0;
		
		
		//var _dir1 = _listItem.args[0];
		//var _dir2 = _listItem.args[1];
		//var _index = _listItem.args[2];
		//var _timer = _listItem.args[3];
		
		//var _cd1 = ds_list_find_value(global.attackCooldowns, 0);
		//var _cd2 = ds_list_find_value(global.attackCooldowns, 1);
		//var _cd3 = ds_list_find_value(global.attackCooldowns, 2);
		//var _cd4 = ds_list_find_value(global.attackCooldowns, 3);
		
		if(!global.victoryCondition)
		{
			script_execute_ext(_listItem.scr, _listItem.args);
			
			//var _debugStep = 0;
		}
		
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
		
		//Damage List Mechanic
		var instList = ds_list_create();
		
		instance_place_list(x, y, oEnemy, instList, false);
		
		var listSize = ds_list_size(instList);
		
		for(var i = 0; i < listSize; i++)
		{
			var inst = ds_list_find_value(instList, i);
			
			if(ds_list_find_index(damageList, inst) == -1)
			{
				ds_list_add(damageList, inst);
				
				xSpd = lengthdir_x(20, newDirection);
				ySpd = lengthdir_y(20, newDirection);
				
				hp -= 2;
			}
		}
		
		ds_list_destroy(instList);
		
	}
	
	//Free Up damageList Space
	var damageListSize = ds_list_size(damageList);
	
	for(var i = 0; i < damageListSize; i++)
	{
		var inst = ds_list_find_value(damageList, i);
		
		if(!instance_exists(inst) || !place_meeting(x, y, inst))
		{
			ds_list_delete(damageList, i);
			i--;
			damageListSize--;
		}
	}
}




///
/// Attack 0 and 1 but reusable code
///
function Attack0ChooseDir( _dir1, _dir2, _cdIndex, _cdTimer)
{
	
	
	var _cdCurrentValue = ds_list_find_value(global.attackCooldowns, _cdIndex)
	
	if(_cdCurrentValue != 0)
	{
		if(_dir1 == 135 && _dir2 == 315)
					{
						global.attack3Test1 = "true";
					}
					else
					{
						global.attack3Test1 = "false";
					}
		_cdCurrentValue--;
		ds_list_insert(global.attackCooldowns, _cdIndex, _cdCurrentValue);
		
		if(_dir1 == 135 && _dir2 == 315)
					{
						global.attack3Test2 = "true";
					}
					else
					{
						global.attack3Test2 = "false";
					}
	}//After this if attack3 -> no work
	
	if(_dir1 == 135 && _dir2 == 315)
					{
						global.attack3Test3 = "true";
					}
					else
					{
						global.attack3Test3 = "false";
					}
	
	//CHECK VALUE AGAIN
	_cdCurrentValue = ds_list_find_value(global.attackCooldowns, _cdIndex)
	//if(_dir1 == 135 && _dir2 == 315)
	//				{
	//					global.attack3Test3 = "true";
	//				}
	//				else
	//				{
	//					global.attack3Test3 = "false";
	//				}
	//ATTACK
	if(_cdCurrentValue == 0)
	{
		var directionOfAttack = 1;
		var horizontalOffset = 0;
		var verticalOffset = 0;
		
		//if(_dir1 == 135 && _dir2 == 315)
		//			{
		//				global.attack3Test3 = "true";
		//			}
		//			else
		//			{
		//				global.attack3Test3 = "false";
		//			}
		repeat(2)
		{
			var diagonal = false;
			var currentDir = _dir1;
			//DECIDE OFFSET
			if(directionOfAttack != 1)
			{
				currentDir = _dir2;
				//if(currentDir == 135 || currentDir == 315)
				//	{
				//		global.attack3Test2 = currentDir;
				//	}
				//	else
				//	{
				//		global.attack3Test2 = "false";
				//	}
			}
			
			if(directionOfAttack == 1)
			{
				//if(currentDir == 135 || currentDir == 315)
				//	{
				//		global.attack3Test1 = currentDir;
				//	}
				//	else
				//	{
				//		global.attack3Test1 = "false";
				//	}
			}
			
			if((currentDir > 135 && currentDir < 225) || (currentDir > 315 && currentDir < 361) || (currentDir < 45 && currentDir > -1))//SET HORIZONTAL
			{
				horizontalOffset = 10;
				verticalOffset = 0;
			}
			else if((currentDir > 45 && currentDir < 135) || (currentDir > 225 && currentDir < 315))//SET VERTICAL
			{
				horizontalOffset = 0;
				verticalOffset = 10;
			}
			else
			{
				diagonal = true;//DIAGONAL CHECK ONLY COUNTS DIAGONAL ANGLES: 45, 135, 225, 315
				
				//if(_dir1 == 135 && _dir2 == 315)
				//	{
				//		global.attack3Test = diagonal;
				//	}
				//	else
				//	{
				//		global.attack3Test = "false";
				//	}
			}
			
			if(diagonal)
			{
				if((currentDir > 0 && currentDir < 90) || (currentDir > 180 && currentDir < 270))//SET DIAGONAL RIGHT UP/LEFT DOWN
				{
					horizontalOffset = 10;
					verticalOffset = -10;
				}
				else if((currentDir > 90 && currentDir < 180) || (currentDir > 270 && currentDir < 360))//SET DIAGONAL LEFT UP/RIGHT DOWN
				{
					horizontalOffset = -10;
					verticalOffset = -10;
				}
			}
			
			var attackInst = instance_create_layer(x + (horizontalOffset * directionOfAttack), y + (verticalOffset * directionOfAttack), "Instances", oAttack0);
			
			with(attackInst)
			{
				
				if(directionOfAttack)
				{
				
					dir = _dir1;
					image_angle = dir;
					
				}
				else
				{
					dir = _dir2;
					image_angle = dir;
				}
				
			}
			directionOfAttack *= -1;
		}
		ds_list_insert(global.attackCooldowns, _cdIndex, _cdTimer);
		
		_cdCurrentValue = ds_list_find_value(global.attackCooldowns, _cdIndex)
	}
}




/////
///// Attack 0 
/////
//function Attack0( _dir1, _dir2, _attackCD)
//{
//	if(attack0Cooldown != 0)
//	{
//		attack0Cooldown--;
//	}
	
//	if(attack0Cooldown == 0)
//	{
//		var directionOfAttack = 1;
		
//		repeat(2)
//		{
//			var attackInst = instance_create_layer(x + 10 * directionOfAttack, y, "Instances", oAttack0);
			
//			with(attackInst)
//			{
//				if(directionOfAttack)
//				{
//					dir = 0;
//					image_angle = dir;
//				}
//				else
//				{
//					dir = 180;
//					image_angle = dir;
//				}
				
//			}
//			directionOfAttack *= -1;
//		}
//		attack0Cooldown = 60;
//	}
//}




/////
///// Attack 1 
/////
//function Attack1()
//{
//	if(attack1Cooldown != 0)
//	{
//		attack1Cooldown--;
//	}
	
//	if(attack1Cooldown == 0)
//	{
//		var directionOfAttack = 1;
		
//		repeat(2)
//		{
//			var attackInst = instance_create_layer(x , y + 10 * directionOfAttack, "Instances", oAttack0);
			
//			with(attackInst)
//			{
//				if(directionOfAttack)
//				{
//					dir = 270;
//					image_angle = dir;
//				}
//				else
//				{
//					dir = 90;
//					image_angle = dir;
//				}
				
//			}
//			directionOfAttack *= -1;
//		}
//		attack1Cooldown = 60;
//	}
//}