/// @description Insert description here
// You can write your code in this editor

if (global.ACTgems > 0) 
{
	draw_sprite(sCollect_GemACT, 0, x,y);
}
else
{
	draw_sprite_ext(sCollect_GemACT, 0, x,y,1,1,0,c_black,1);
}

draw_text_transformed(x+28,y-12,"x" + string(global.ACTgems),0.5,0.5,0);