/// @description Insert description here
// You can write your code in this editor


xSpd = lengthdir_x(moveSpd, dir);
ySpd = lengthdir_y(moveSpd, dir);

x += xSpd;
y += ySpd;

if(point_distance(xstart, ystart, x, y) >= 500)
{
	instance_destroy();
}