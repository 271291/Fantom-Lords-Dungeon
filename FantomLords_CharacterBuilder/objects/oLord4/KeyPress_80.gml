/// @description Insert description here
// You can write your code in this editor

if thisLocked && global.potionLIF > 0
{
	thisLord_LIF += round(thisLord_LIFmax/3);
	if thisLord_LIF > thisLord_LIFmax thisLord_LIF = thisLord_LIFmax;
	audio_play_sound(snCollectPotion,0,false);
	instance_create_layer(oGUI_LordFrame4.x,oGUI_LordFrame4.y,"Instances",oVFX_powerUpLIF);
	global.potionLIF --;
}
