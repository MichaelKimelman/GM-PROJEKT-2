// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameScripts(){

}




///
/// New Round
///
function NewRound()
{
	global.enemiesKilledThisRound = 0;
	if(currentRound <= 6 )
	{
		currentRound++;
	}
	
	switch(currentRound)
	{
		case 1:
			
			global.enemiesMaxThisRound = 10;
		
		break;
		
		case 2:
			
			global.enemiesMaxThisRound = 30;
		
		break;
		
		case 3: 
		
			global.enemiesMaxThisRound = 40;
		
		break;
		
		case 4:
		
			global.enemiesMaxThisRound = 60;
		
		break;
		
		case 5:
		
			global.enemiesMaxThisRound = 100;
		
		break;
		
		case 6:
		
		
		
		break;
		
		default:
		
		break;
	}
	
	with(oEnemySpawner)
	{
		spawnedCreatures = 0;
	}
}