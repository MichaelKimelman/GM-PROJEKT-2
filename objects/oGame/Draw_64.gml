/// @description Insert description here
// You can write your code in this editor

if(!global.victoryCondition)
{
	draw_text(50, 50, "Round: " + string(global.currentRound))
	
	draw_text(50, 100, "Enemies Onscreen: " + string(instance_number(oEnemy)));
	
	draw_text(50, 150, "Killed Enemies: " + string(global.enemiesKilledThisRound));
	
	draw_text(50, 200, "Enemies Spawned This Round: " + string(global.enemiesSpawnedThisRound));
	
	draw_text(50, 250, "Game Paused?: " + string(global.gamePaused));
	
	draw_text(50, 300, "SelectOptionMenu Exists?: " + string(instance_exists(oSelectOptionMenu)));
	
	draw_text(50, 350, "Hover over menu item?: " + string(position_meeting(mouse_x, mouse_y, oSelectOptionMenuItem)))
	
	draw_text(50, 400, "Mouse Clicked?: " + string(mouse_check_button(mb_left)));

}
else
{
	draw_text(50, 50, "Victory");
}