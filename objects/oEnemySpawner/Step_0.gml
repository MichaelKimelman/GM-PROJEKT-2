/// @description Insert description here
// You can write your code in this editor


if(global.enemiesKilledThisRound <= global.enemiesMaxThisRound && spawnedCreatures <= spawnLimit && spawnCooldown == 0 && instance_number(oEnemy) < global.enemiesMaxThisRound)
{
	var directionNumber = irandom_range(0, 359);
	
	var spawnPositionX = lengthdir_x(radius, directionNumber);
	var spawnPositionY = lengthdir_y(radius, directionNumber);
	
	instance_create_layer(x + spawnPositionX, y + spawnPositionY, "Instances", oEnemy);
	spawnedCreatures++;
	spawnCooldown = 400;
	
}

spawnCooldown--;