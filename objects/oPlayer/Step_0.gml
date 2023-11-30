/// @description Insert description here
// You can write your code in this editor


keyLeft = keyboard_check(ord("A")); 
keyRight = keyboard_check(ord("D")); 
keyUp = keyboard_check(ord("W")); 
keyDown = keyboard_check(ord("S")); 

mouseButtonLeft = mouse_check_button_pressed(mb_left);

inputDirection = point_direction( 0, 0, keyRight - keyLeft, keyDown	- keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0 );

if(!global.gamePaused)
{
	script_execute(state);
}