/// @description Insert description here
// You can write your code in this editor

if nextRoom <= 0
{
	if oLordStats.lord1active instance_activate_object(oLord1);
	if oLordStats.lord2active instance_activate_object(oLord2);
	if oLordStats.lord3active instance_activate_object(oLord3);
	if oLordStats.lord4active instance_activate_object(oLord4);
	
	instance_destroy(oGUI_waiting);
	
	if instance_exists(oLord1) oLord1.thisLord_ACTpoints = oLord1.thisLord_ACTpointsMAX;
	if instance_exists(oLord2) oLord2.thisLord_ACTpoints = oLord2.thisLord_ACTpointsMAX;
	if instance_exists(oLord3) oLord3.thisLord_ACTpoints = oLord3.thisLord_ACTpointsMAX;
	if instance_exists(oLord4) oLord4.thisLord_ACTpoints = oLord4.thisLord_ACTpointsMAX;
	
	room_restart();
}

if open image_index = 1;
else image_index = 0;