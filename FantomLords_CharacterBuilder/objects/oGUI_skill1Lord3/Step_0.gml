/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+32 && mouse_y > y && mouse_y < y+32 && !instance_exists(oGUI_printSkill) && instance_exists(oLord3)
{
	global.printSkill = oLord3.thisLord_typeAttack;
	instance_create_layer(mouse_x,mouse_y,"Instances",oGUI_printSkill);
}