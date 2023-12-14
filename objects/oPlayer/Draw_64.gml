/// @description Insert description here
// You can write your code in this editor


draw_text(500, 100, string(hp));

draw_text(500, 200, "CD pos 0: " + string(ds_list_find_value(global.attackCooldowns, 0)));
if(ds_list_size(global.attackList) > 1)
{
	draw_text(500, 250, "CD pos 1: " + string(ds_list_find_value(global.attackCooldowns, 1)));
}

//draw_text(500, 300, "CD pos 2: " + string(ds_list_find_value(global.attackCooldowns, 2)));

//draw_text(500, 350, "CD pos 3: " + string(ds_list_find_value(global.attackCooldowns, 3)));

//draw_text(500, 400, "CD pos 4: " + string(ds_list_find_value(global.attackCooldowns, 4)));

draw_text(500, 450, "Attacklist size: " + string(ds_list_size(global.attackList)));
