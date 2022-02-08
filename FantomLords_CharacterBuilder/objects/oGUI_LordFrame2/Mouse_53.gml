/// @description Insert description here
// You can write your code in this editor

if mouse_x > x && mouse_x < x+128 && mouse_y > y && mouse_y < y+128 && instance_exists(oLord2)
{
	if !global.isLocked && !thisLocked
	{
		global.isLocked = true;
		thisLocked = true;
		oLord2.image_blend = c_yellow;
		oLord2.thisLocked = true;
		audio_play_sound(snAddLord,0,false);
	}
	else if global.isLocked && thisLocked
	{
		global.isLocked = false;
		thisLocked = false;
		oLord2.image_blend = c_white;
		oLord2.thisLocked = false;
		audio_play_sound(snRemoveLord,0,false);
	}
}