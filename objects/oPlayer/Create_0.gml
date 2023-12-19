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

global.attackCooldowns = ds_list_create();

global.weaponList = ds_list_create();

ds_list_insert( global.attackCooldowns, 0, 0);
ds_list_insert( global.attackCooldowns, 1, 0);//From here doesnt work
ds_list_insert( global.attackCooldowns, 2, 0);
ds_list_insert( global.attackCooldowns, 3, 0);
ds_list_insert( global.attackCooldowns, 4, 0);

ds_list_add(global.weaponList, 
	new weaponCreate(
		0,
		Attack0ChooseDir,
		[ 0, 180, 0, 5],
		sAttackMenuIcon0
		));
		
ds_list_add(global.weaponList, 
	new weaponCreate(
		1,
		Attack0ChooseDir,
		[ 270, 90, 1, 30],
		sAttackMenuIcon1
		));
ds_list_add(global.weaponList, 
	new weaponCreate(
		2,
		Attack0ChooseDir,
		[ 45, 225, 2, 50],
		sAttackMenuIcon2
		));
ds_list_add(global.weaponList, 
	new weaponCreate(
		3,
		Attack0ChooseDir,
		[ 135, 315, 3, 120],
		sAttackMenuIcon3
		));
ds_list_add(global.attackList, ds_list_find_value(global.weaponList, 0));
global.attack3Test = 0;
global.attack3Test1 = 0;
global.attack3Test2 = 0;
global.attack3Test3 = 0;
struct0 = 
{	
	scr: Attack0ChooseDir,
	//Args: dir1, dir2, index in cdlist, cd
	args: [ 0, 180, 0, 60],
}

//ds_list_add(global.attackList, struct0);

struct1 = 
{	
	scr: Attack0ChooseDir,
	//Args: dir1, dir2, index in cdlist
	args: [ 270, 90, 1, 30],
}
//ds_list_add(global.attackList, struct1);

struct2 = 
{	
	scr: Attack0ChooseDir,
	//Args: dir1, dir2, index in cdlist
	args: [ 45, 225, 2, 50],
}
//ds_list_add(global.attackList, struct2);

struct3 = 
{	
	scr: Attack0ChooseDir,
	//Args: dir1, dir2, index in cdlist
	args: [ 135, 315, 3, 120],
}
//ds_list_add(global.attackList, struct3);