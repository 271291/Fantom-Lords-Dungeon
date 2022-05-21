/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sVFX_spellCast,image_index,x,y,1,1,image_angle,c_white,0.8);

if oLord1.spellCast = 0 //Fire Ball
{
	with oMap_0parent
	{
		if stepped
		{
			if collision_point(x,y,oEnemy0_Father,0,false) draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
			else if collision_point(x,y,oLord0Parent,0,false) draw_rectangle_color(x+1,y+1,x+62,y+62,c_red,c_red,c_red,c_red,true);
			else draw_rectangle_color(x+1,y+1,x+62,y+62,c_grey,c_grey,c_grey,c_grey,true);
		}
	}
}
else if oLord1.spellCast = 8 //CLOSESHOT
{
	with oEnemy0_Father
	{
			 if x = oLord1.x && y = oLord1.y-64 draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x+64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x && y = oLord1.y+64 draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
		else if x = oLord1.x-64 && y = oLord1.y draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
	}
}
else if oLord1.spellCast = 9 ^^ oLord1.spellCast = 13//BASH //DRAINSLASH
{
	with oEnemy0_Father if target draw_rectangle_color(x+1,y+1,x+62,y+62,c_yellow,c_yellow,c_yellow,c_yellow,true);
}
