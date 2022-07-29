/// @description Insert description here
// You can write your code in this editor

if oLordStats.lord4active && instance_exists(oLord4)
{
	global.currentSelectedStatus = "Class Skill";
	global.currentStatusColor = c_white;
	
	if oLord4.thisLord_skillClassArmor = 0
	{
		global.currentSelectedName = "Scout";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Disable";
		global.currentSelectedDescription2 = "closer trap";
		global.currentSelectedDescription3 = "";
	}
	else if oLord4.thisLord_skillClassArmor = 2
	{
		global.currentSelectedName = "Sunbathe";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Heals itself";
		global.currentSelectedDescription2 = "using MAG";
		global.currentSelectedDescription3 = "stat";
	}
	else if oLord4.thisLord_skillClassArmor = 3
	{
		global.currentSelectedName = "Suture";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Heals close";
		global.currentSelectedDescription2 = "ally using";
		global.currentSelectedDescription3 = "MAG stat";
	}
	else if oLord4.thisLord_skillClassArmor = 5
	{
		global.currentSelectedName = "Telport";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Move the lord";
		global.currentSelectedDescription2 = "instantly to an";
		global.currentSelectedDescription3 = "empty tile";
	}
	else if oLord4.thisLord_skillClassArmor = 9
	{
		global.currentSelectedName = "Revive";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Revives a Lord";
		global.currentSelectedDescription2 = "as a weak";
		global.currentSelectedDescription3 = "zombie";
	}
	else if oLord4.thisLord_skillClassArmor = 10
	{
		global.currentSelectedName = "Battlecry";
		global.currentSelectedSprite = sprite_index;
		global.currentSelectedImageIndex = image_index;
		global.currentSelectedDescription1 = "Increase self";
		global.currentSelectedDescription2 = "ATK stat";
		global.currentSelectedDescription3 = "3 turns";
	}
}