/// @description Insert description here
// You can write your code in this editor

if(!global.victoryCondition)
{
	draw_text(50, 50, "Round: " + string(currentRound))
	
	draw_text(50, 100, "Enemies Onscreen: " + string(instance_number(oEnemy)));
	
	draw_text(50, 150, "Killed Enemies: " + string(global.enemiesKilledThisRound));
	
	draw_text(50, 200, "Enemies Spawned This Round: " + string(global.enemiesSpawnedThisRound));
}
else
{
	draw_text(50, 50, "Victory");
}