/// @description Insert description here
// You can write your code in this editor

if global.lordNumber > 1 global.lordNumber --;
else global.lordNumber = global.lordNumberMAX;

scrLordGenerator();

image_blend = c_yellow;
audio_play_sound(snClick,0,false);