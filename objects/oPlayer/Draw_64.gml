/// @description Insert description here
// You can write your code in this editor


draw_text(500, 100, string(hp));

draw_text(500, 200, "CD pos 0: " + string(ds_list_find_value(global.attackCooldowns, 0)));
if(ds_list_size(global.attackList) > 1)
{
	draw_text(500, 250, "CD pos 1: " + string(ds_list_find_value(global.attackCooldowns, 1)));
}

//for(var i = 0; i < ds_list_size(global.attackList); i++)
//{
//	draw_text( 900, 300 + 20* i, "attackItem: " + string(ds_list_find_value(global.attackList, i).weaponId));
//	draw_text( 900, 400 + 20* i, "attackItemSprite: " + string(sprite_get_name(ds_list_find_value(global.attackList, i).spr)));
//}

//for(var i = 0; i < ds_list_size(global.attackList); i++)
//{
//	draw_text( 900, 500 + 20*i, "attackItemDirections: " + string(ds_list_find_value(global.attackList, i).args[0]) + " , " + string(ds_list_find_value(global.attackList, i).args[1]));
//}
draw_text(400, 400, "attack 3 Attacking: " +string(global.attack3Test));

draw_text(400, 450, "attack 3   dirs 1: " +string(global.attack3Test1));

draw_text(400, 500, "attack 3  dirs 2: " +string(global.attack3Test2));

draw_text(400, 550, "attack 3  dirs 3: " +string(global.attack3Test3));
for(var i = 0; i < ds_list_size(global.attackList); i++)
{
	draw_text( 200, 700 + 20*i, "attackListItem: " + string(ds_list_find_value(global.attackList, i)) + " index: " +string(i));
}

//draw_text(500, 300, "CD pos 2: " + string(ds_list_find_value(global.attackCooldowns, 2)));

//draw_text(500, 350, "CD pos 3: " + string(ds_list_find_value(global.attackCooldowns, 3)));

//draw_text(500, 400, "CD pos 4: " + string(ds_list_find_value(global.attackCooldowns, 4)));

draw_text(500, 900, "Attacklist size: " + string(ds_list_size(global.attackList)));
