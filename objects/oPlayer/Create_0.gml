/// @description Insert description here
// You can write your code in this editor
state = PlayerStateFree;

hp = 10;

xSpd = 0;
ySpd = 0;
moveSpd = 1.5;

dir = 0;

attackList = ds_list_create();
ds_list_add( attackList, Attack0);
attack0Cooldown = 0;