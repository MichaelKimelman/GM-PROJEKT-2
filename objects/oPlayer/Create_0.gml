/// @description Insert description here
// You can write your code in this editor
state = PlayerStateFree;

hp = 10;

xSpd = 0;
ySpd = 0;
moveSpd = 1.5;

dir = 0;

level = 0;

damageList = ds_list_create();

global.attackList = ds_list_create();
//ds_list_add( global.attackList, Attack0);

//ds_list_add( global.attackList, Attack1);
global.attackCooldowns = ds_list_create();

ds_list_insert( global.attackCooldowns, 0, 0);
ds_list_insert( global.attackCooldowns, 1, 0);
//global.attack0Cooldown = 0;
//attack1Cooldown = 0;

struct0 = 
{	
	scr: Attack0ChooseDir,
	//Args: dir1, dir2, index in cdlist
	args: [ 0, 180, 0],
}

ds_list_add(global.attackList, struct0);

//ds_list_add( global.attackList, global.Attack0ChooseDir(0,180,attack0Cooldown));