// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyScripts(){

}

function EnemyStateFree()
{
	if(instance_exists(oPlayer))
	{
		dir = point_direction(x, y, oPlayer.x, oPlayer.y);
		
		xSpd = lengthdir_x(moveSpd, dir);
		ySpd = lengthdir_y(moveSpd, dir);
	
	}
	else//RESET Movement
	{
		xSpd = 0;
		ySpd = 0;
	}
	
	EnemyTakeDamage();
	//COLLISION
	
	EnemyCollision();
	
	x += xSpd;
	y += ySpd;
	
	if(hp <= 0)
	{
		global.enemiesKilledThisRound++;
		instance_destroy();
		
	}
}




///
///Collision
///
function EnemyCollision()
{
	if(place_meeting(x + xSpd, y, oEnemy))
	{
		xSpd = 0;
	}
	
	if(place_meeting(x, y + ySpd, oEnemy))
	{
		ySpd = 0;
	}
}




///
/// Take Damage
///
function EnemyTakeDamage()
{
	if(place_meeting(x, y, oAttack))//BASIC, GÖR MER KOMPLICERAD
	{
		hp -= 10;
	}
}