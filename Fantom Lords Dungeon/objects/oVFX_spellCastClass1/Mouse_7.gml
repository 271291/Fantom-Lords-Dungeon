/// @description Insert description here
// You can write your code in this editor

if oLord1.thisLord_ascend
{
	if (oLord1.spellCast = 2) //Clash
	{
		if enemy != noone
		{
			#region target
			if enemy.x = oLord1.x && enemy.y = oLord1.y-64 enemy.target = true;
			else if enemy.x = oLord1.x+64 && enemy.y = oLord1.y enemy.target = true;
			else if enemy.x = oLord1.x && enemy.y = oLord1.y+64 enemy.target = true;
			else if enemy.x = oLord1.x-64 && enemy.y = oLord1.y enemy.target = true;
			else enemy.target = false;
			#endregion
			
			if enemy.target = true
			{
				global.dmgLORD = round(oLord1.thisLord_ATK*2);
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				global.dmgENEMY = round(global.dmgLORD/2);
				if global.dmgENEMY <= 0 global.dmgENEMY = 1;
				
				oLord1.spellCast = noone;
				oLord1.thisLord_ACTpoints -= 2;
				
				audio_play_sound(sn_SKILL_Clash,0,false);
				
				instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_CLASS_Clash1);
				instance_create_layer(oLord1.x+oLord1.sprite_width/2,oLord1.y+oLord1.sprite_height/2,"VFX",oSKILL_CLASS_Clash2);
				
				instance_destroy();
			}
		}
	}
	else if (oLord1.spellCast = 5) //Honor
	{
		if (collision_point(x,y,oLord1,false,true))
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			
			var struct = { targetLord : oLord1 };
			
			instance_create_layer(oLord1.x+oLord1.sprite_width/2,oLord1.y+oLord1.sprite_height/2,"VFX",oSKILL_CLASS_Honor,struct);
				
			instance_destroy();
		}
	}
	else if (oLord1.spellCast = 6) //Beam
	{
		if (enemy != noone && enemy.revealed)
		{
			var struct = { xDir : mouse_x,
						   yDir : mouse_y ,
						   beamTime : oLord1.thisLord_MAG*2};
						   
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			instance_create_layer(oLord1.x+oLord1.sprite_width/2,oLord1.y+oLord1.sprite_height/2,"VFX",oSKILL_CLASS_Beam, struct);
			instance_destroy();
		}
	}
}
else
{
	if oLord1.spellCast = 0
	{
		if trap != noone
		{
			if (trap.x = oLord1.x && trap.y = oLord1.y-64) || (trap.x = oLord1.x+64 && trap.y = oLord1.y) || (trap.x = oLord1.x && trap.y = oLord1.y+64) || (trap.x = oLord1.x-64 && trap.y = oLord1.y)
			{
				oLord1.spellCast = noone;
				oLord1.thisLord_ACTpoints -= 2;
				instance_create_layer(trap.x,trap.y,"VFX",oSKILL_CLASS_Ranger);
				instance_destroy();
			}
		}
	}
	else if oLord1.spellCast = 1
	{
		if collision_point(x,y,oLord1,0,false)
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Shadow);
			instance_destroy();
		}
	}
	else if oLord1.spellCast = 2
	{
		if collision_point(x,y,oLord1,0,false)
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,6);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Sunbathe);
			instance_destroy();
		}
	}
	else if oLord1.spellCast = 3
	{
		if lord != noone && lord != oLord1
		{
			if (lord.x = oLord1.x && lord.y = oLord1.y-64) || (lord.x = oLord1.x+64 && lord.y = oLord1.y) || (lord.x = oLord1.x && lord.y = oLord1.y+64) || (lord.x = oLord1.x-64 && lord.y = oLord1.y)
			{
				oLord1.spellCast = noone;
				oLord1.thisLord_ACTpoints -= 2;
				global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,6);
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Suture);
				instance_destroy();
			}
		}
	}
	else if oLord1.spellCast = 4
	{
		if enemy != noone
		{
			if enemy.x = oLord1.x && enemy.y = oLord1.y-64 enemy.target = true;
			else if enemy.x = oLord1.x+64 && enemy.y = oLord1.y enemy.target = true;
			else if enemy.x = oLord1.x && enemy.y = oLord1.y+64 enemy.target = true;
			else if enemy.x = oLord1.x-64 && enemy.y = oLord1.y enemy.target = true;
			else enemy.target = false;
			if enemy.target = true
			{
				var struct = { rate : round(oLord1.thisLord_MAG/3) };
				oLord1.spellCast = noone;
				oLord1.thisLord_ACTpoints -= 2;
				instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_CLASS_Weaken, struct);
				instance_destroy();
			}
		}
	}
	else if oLord1.spellCast = 5
	{
		var tile = collision_point(x,y,oMap_0parent,false,true);
		if tile != noone && tile.empty = true && tile.stepped
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			instance_create_depth(oLord1.x+32,oLord1.y+32,depth-1,oSKILL_CLASS_Wizard);
			instance_create_depth(tile.x+32,tile.y+32,depth-1,oSKILL_CLASS_Wizard2);
			oLord1.x = tile.x;
			oLord1.y = tile.y;
			instance_destroy();
		}
	}
	else if oLord1.spellCast = 6
	{
		if collision_point(x,y,oLord1,false,true)
		{
			var struct = { noteColor : c_blue };
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			audio_play_sound(sn_SKILL_Lullaby,0,false);
			with oEnemy0_Father if revealed && !obstacle instance_create_layer(x+32,y+32,"VFX",oSKILL_CLASS_Bard);
			instance_create_layer(oLord1.x+32,oLord1.y+32,"VFX",oVFX_Notemaker, struct);
			instance_destroy();
		}
	}
	else if oLord1.spellCast = 7
	{
		if lord != noone
		{
			if (lord.x = oLord1.x && lord.y = oLord1.y-64) || (lord.x = oLord1.x+64 && lord.y = oLord1.y) || (lord.x = oLord1.x && lord.y = oLord1.y+64) || (lord.x = oLord1.x-64 && lord.y = oLord1.y) || (lord.x = oLord1.x && lord.y = oLord1.y)
			{
				var struct = { MAG : round(oLord1.thisLord_MAG/2) };
				oLord1.spellCast = noone;
				oLord1.thisLord_ACTpoints -= 2;
				instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Burden, struct);
				instance_destroy();
			}
		}
	}
	else if oLord1.spellCast = 8
	{
		if collision_point(x,y,oLord1,false,true)
		{
			var struct = {targetLord : oLord1};
			global.castLord = oLord1;
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			global.dmgLORD = oLord1.thisLord_MAG + irandom_range(-3,1);
			if global.dmgLORD <= 0 global.dmgLORD = 1;
			instance_create_layer(oLord1.x+32,oLord1.y+32,"VFX",oSKILL_CLASS_Pyromancer,struct);
			instance_destroy();
		}
	}
	else if oLord1.spellCast = 9
	{
		var collision = collision_point(x,y,oGUI_deathLord,0,false);
		var tile1 = collision_point(oLord1.x+32,oLord1.y-32,oMap_0parent,false,true);
		var tile2 = collision_point(oLord1.x+96,oLord1.y+32,oMap_0parent,false,true);
		var tile3 = collision_point(oLord1.x+32,oLord1.y+96,oMap_0parent,false,true);
		var tile4 = collision_point(oLord1.x-32,oLord1.y+32,oMap_0parent,false,true);
	
		if collision != noone
		{
			if collision.posLord = 1 var struct = { makelord : 1 }
			else if collision.posLord = 2 var struct = { makelord : 2 }
			else if collision.posLord = 3 var struct = { makelord : 3 }
			else if collision.posLord = 4 var struct = { makelord : 4 }
		
			if tile1.empty || tile2.empty || tile3.empty || tile4.empty
			{
				instance_destroy(collision);
				if tile1.empty instance_create_layer(tile1.x,tile1.y,"VFX",oSKILL_CLASS_Revive,struct);
				else if tile2.empty instance_create_layer(tile2.x,tile2.y,"VFX",oSKILL_CLASS_Revive,struct);
				else if tile3.empty instance_create_layer(tile3.x,tile3.y,"VFX",oSKILL_CLASS_Revive,struct);
				else if tile4.empty instance_create_layer(tile4.x,tile4.y,"VFX",oSKILL_CLASS_Revive,struct);
				instance_destroy();
			}
		}			
	}
	else if oLord1.spellCast = 10
	{
		if collision_point(x,y,oLord1,0,false)
		{
			oLord1.spellCast = noone;
			oLord1.thisLord_ACTpoints -= 2;
			instance_create_layer(lord.x,lord.y,"VFX",oSKILL_CLASS_Battlecry);
			instance_destroy();
		}
	}
	else if oLord1.spellCast = 11
	{
		if enemy != noone
		{
			if enemy.x = oLord1.x && enemy.y = oLord1.y-64 enemy.target = true;
			else if enemy.x = oLord1.x+64 && enemy.y = oLord1.y enemy.target = true;
			else if enemy.x = oLord1.x && enemy.y = oLord1.y+64 enemy.target = true;
			else if enemy.x = oLord1.x-64 && enemy.y = oLord1.y enemy.target = true;
			else enemy.target = false;
			if enemy.target = true
			{
				global.dmgLORD = round(oLord1.thisLord_ATK/2)
				if global.dmgLORD <= 0 global.dmgLORD = 1;
				oLord1.spellCast = noone;
				oLord1.thisLord_ACTpoints -= 2;
				instance_create_layer(enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2,"VFX",oSKILL_CLASS_Stun);
				instance_destroy();
			}
		}
	}
}