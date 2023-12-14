// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weaponCreate( _id, _scr, _args, _spr = sAttackMenuIcon0 )constructor
{
	weaponId = _id;
	scr = _scr;
	args = _args
	spr = _spr
}




///
/// New Round
///
function NewRound()
{
	global.enemiesKilledThisRound = 0;
	global.enemiesSpawnedThisRound = 0;
	
	if(global.currentRound <= 6 )
	{
		global.currentRound++;
	}
	
	switch(global.currentRound)
	{
		case 1:
			
			global.enemiesMaxThisRound = 1;
		
		break;
		
		case 2:
			
			global.enemiesMaxThisRound = 1;
			//struct1 = 
			//{	
			//	weaponId: 1,
			//	scr: Attack0ChooseDir,
			//	//Args: dir1, dir2, index in cdlist
			//	args: [ 270, 90, 1, 400],
			//}
			//ds_list_add(global.attackList, struct1);
			ds_list_insert( global.attackCooldowns, 1, 400);
		
		break;
		
		case 3: 
		
			global.enemiesMaxThisRound = 1;
			//struct2 = 
			//{	
			//	weaponId: 2,
			//	scr: Attack0ChooseDir,
			//	//Args: dir1, dir2, index in cdlist
			//	args: [ 45, 225, 2, 1000],
			//}
			//ds_list_add(global.attackList, struct2);
			ds_list_insert( global.attackCooldowns, 2, 0);
		
		break;
		
		case 4:
		
			global.enemiesMaxThisRound = 0;
			global.victoryCondition = true;
			
			//global.enemiesMaxThisRound = 60;
			//struct3 = 
			//{	
			//	weaponId: 3,
			//	scr: Attack0ChooseDir,
			//	//Args: dir1, dir2, index in cdlist
			//	args: [ 135, 315, 3, 30],
			//}
			//ds_list_add(global.attackList, struct3);
		
		break;
		
		case 5:
		
			global.enemiesMaxThisRound = 100;
			
		break;
		
		case 6:
		
		global.enemiesMaxThisRound = 0;
		global.victoryCondition = true;
		
		break;
		
		default:
		
		break;
	}
	
	with(oEnemySpawner)
	{
		spawnedCreatures = 0;
	}
}




///
/// Create UI Clickable
///
function CreateUIClickable()
{
	
}