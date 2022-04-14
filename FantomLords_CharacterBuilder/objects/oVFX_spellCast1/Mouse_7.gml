/// @description Insert description here
// You can write your code in this editor

if oLord1.spellCast = 0
{
	if tile != noone && tile.stepped
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,6);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(tile.x+32,tile.y+32,"VFX",oSKILL_WEAPON_FireBall);
		instance_destroy();
	}
}
else if oLord1.spellCast = 9
{
	if enemy != noone && enemy.target
	{
		oLord1.spellCast = noone;
		oLord1.thisLord_ACTpoints -= 2;
		global.dmgLORD = round((oLord1.thisLord_ATK + irandom_range(-3,6))/2);
		if global.dmgLORD <= 0 global.dmgLORD = 1;
		instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oSKILL_WEAPON_Longsword);
		if enemy.x = oLord1.x && enemy.y < oLord1.y if collision_point(enemy.x,enemy.y-64,oMap_0parent,false,true).empty enemy.y -= global.tileRate;
		if enemy.x > oLord1.x && enemy.y = oLord1.y if collision_point(enemy.x+64,enemy.y,oMap_0parent,false,true).empty enemy.x += global.tileRate;
		if enemy.x = oLord1.x && enemy.y > oLord1.y if collision_point(enemy.x,enemy.y+64,oMap_0parent,false,true).empty enemy.y += global.tileRate;
		if enemy.x < oLord1.x && enemy.y = oLord1.y if collision_point(enemy.x-64,enemy.y,oMap_0parent,false,true).empty enemy.x -= global.tileRate;
		instance_destroy();
	}
}

/*var enemy = collision_point(x,y,oEnemy0_Father,false,false)
if enemy != noone && enemy.target = true
{
	if oLord1.thisLord_typeAttack = "MELEE"
	{
		var dmgLORD = (global.dmgLORD + irandom_range(-3,3)) - enemy.thisDEF;
	}
	else if oLord1.thisLord_typeAttack = "RANGED"
	{
		var dmgLORD = (round(global.dmgLORD/2) + irandom_range(-3,3)) - enemy.thisDEF;
	}
	else if oLord1.thisLord_typeAttack = "MAGIC"
	{
		var dmgLORD = (global.dmgLORD + irandom_range(-3,3)) - enemy.thisMAG;
	}
	
	if dmgLORD < 0 dmgLORD = 0;
	global.dmgLORD = string(dmgLORD);
	
	if dmgLORD > 0
	{
		if oLord1.thisLord_typeAttack = "MELEE" || oLord1.thisLord_typeAttack = "RANGED"
		{
			audio_play_sound(snAttack,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attack);
		}
		else if oLord1.thisLord_typeAttack = "MAGIC"
		{
			audio_play_sound(snAttackMag,0,false);
			instance_create_layer(enemy.x+32,enemy.y+32,"VFX",oVFX_attackMag);
		}
	}
	
	instance_create_layer(enemy.x+irandom_range(8,56),enemy.y+irandom_range(8,56),"VFX",oGUI_printDMGlord);
	
	enemy.thisLIF -= dmgLORD;
	oLord1.thisLord_ACTpoints --;
}
	
instance_destroy();*/
