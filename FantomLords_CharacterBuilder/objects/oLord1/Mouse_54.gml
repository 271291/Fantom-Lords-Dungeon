/// @description Insert description here
// You can write your code in this editor

/*if global.isLocked && thisLocked
{
	global.isLocked = false;
	thisLocked = false;
	oGUI_LordFrame1.thisLocked = false;
	image_blend = c_white;
	audio_play_sound(snRemoveLord,0,false);
	
	if instance_exists(oVFX_spellCast0father) instance_destroy(oVFX_spellCast0father);
}*/

enemy = collision_point(mouse_x,mouse_y,oEnemy0_Father,false,true);

scrLordAttack();