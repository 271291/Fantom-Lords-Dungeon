/// @description Insert description here
// You can write your code in this editor

list_classArmor = ds_list_create();

ds_list_add(list_classArmor, "Ranger Leather Armor", "Assassin Nightly Garments", "Druid Wild Vest",
							 "Plague Doctor Attire", "Warlock Fel Cuirass", "Sorcerer Robe",
							 "Bard Glamour Jacket", "Paladin Plate Armor", "Pyromancer Robe",
							 "Necromancer Bone Armor", "Eldritch Knight Mithral Chainmail",
							 "Oathbreaker Cursed Armor");

#region Ranger mods
RangLIFmod = real(global.structMods.ClassArmor.Ranger.LIF);
RangATKmod = real(global.structMods.ClassArmor.Ranger.ATK);
RangDEFmod = real(global.structMods.ClassArmor.Ranger.DEF);
RangMAGmod = real(global.structMods.ClassArmor.Ranger.MAG);
RangACTmod = real(global.structMods.ClassArmor.Ranger.ACT);
#endregion
#region Assassin mods
AssaLIFmod = real(global.structMods.ClassArmor.Assassin.LIF);
AssaATKmod = real(global.structMods.ClassArmor.Assassin.ATK);
AssaDEFmod = real(global.structMods.ClassArmor.Assassin.DEF);
AssaMAGmod = real(global.structMods.ClassArmor.Assassin.MAG);
AssaACTmod = real(global.structMods.ClassArmor.Assassin.ACT);
#endregion
#region Druid mods
DruiLIFmod = real(global.structMods.ClassArmor.Druid.LIF);
DruiATKmod = real(global.structMods.ClassArmor.Druid.ATK);
DruiDEFmod = real(global.structMods.ClassArmor.Druid.DEF);
DruiMAGmod = real(global.structMods.ClassArmor.Druid.MAG);
DruiACTmod = real(global.structMods.ClassArmor.Druid.ACT);
#endregion
#region Doctor mods
DoctLIFmod = real(global.structMods.ClassArmor.PlagueDoctor.LIF);
DoctATKmod = real(global.structMods.ClassArmor.PlagueDoctor.ATK);
DoctDEFmod = real(global.structMods.ClassArmor.PlagueDoctor.DEF);
DoctMAGmod = real(global.structMods.ClassArmor.PlagueDoctor.MAG);
DoctACTmod = real(global.structMods.ClassArmor.PlagueDoctor.ACT);
#endregion
#region Warlock mods
WarlLIFmod = real(global.structMods.ClassArmor.Warlock.LIF);
WarlATKmod = real(global.structMods.ClassArmor.Warlock.ATK);
WarlDEFmod = real(global.structMods.ClassArmor.Warlock.DEF);
WarlMAGmod = real(global.structMods.ClassArmor.Warlock.MAG);
WarlACTmod = real(global.structMods.ClassArmor.Warlock.ACT);
#endregion
#region Sorcerer mods
SorcLIFmod = real(global.structMods.ClassArmor.Sorcerer.LIF);
SorcATKmod = real(global.structMods.ClassArmor.Sorcerer.ATK);
SorcDEFmod = real(global.structMods.ClassArmor.Sorcerer.DEF);
SorcMAGmod = real(global.structMods.ClassArmor.Sorcerer.MAG);
SorcACTmod = real(global.structMods.ClassArmor.Sorcerer.ACT);
#endregion
#region Bard mods
BardLIFmod = real(global.structMods.ClassArmor.Bard.LIF);
BardATKmod = real(global.structMods.ClassArmor.Bard.ATK);
BardDEFmod = real(global.structMods.ClassArmor.Bard.DEF);
BardMAGmod = real(global.structMods.ClassArmor.Bard.MAG);
BardACTmod = real(global.structMods.ClassArmor.Bard.ACT);
#endregion
#region Paladin mods
PalaLIFmod = real(global.structMods.ClassArmor.Paladin.LIF);
PalaATKmod = real(global.structMods.ClassArmor.Paladin.ATK);
PalaDEFmod = real(global.structMods.ClassArmor.Paladin.DEF);
PalaMAGmod = real(global.structMods.ClassArmor.Paladin.MAG);
PalaACTmod = real(global.structMods.ClassArmor.Paladin.ACT);
#endregion
#region Pyromancer mods
PyroLIFmod = real(global.structMods.ClassArmor.Pyromancer.LIF);
PyroATKmod = real(global.structMods.ClassArmor.Pyromancer.ATK);
PyroDEFmod = real(global.structMods.ClassArmor.Pyromancer.DEF);
PyroMAGmod = real(global.structMods.ClassArmor.Pyromancer.MAG);
PyroACTmod = real(global.structMods.ClassArmor.Pyromancer.ACT);
#endregion
#region Necromancer mods
NecrLIFmod = real(global.structMods.ClassArmor.Necromancer.LIF);
NecrATKmod = real(global.structMods.ClassArmor.Necromancer.ATK);
NecrDEFmod = real(global.structMods.ClassArmor.Necromancer.DEF);
NecrMAGmod = real(global.structMods.ClassArmor.Necromancer.MAG);
NecrACTmod = real(global.structMods.ClassArmor.Necromancer.ACT);
#endregion
#region Knight mods
KnigLIFmod = real(global.structMods.ClassArmor.Knight.LIF);
KnigATKmod = real(global.structMods.ClassArmor.Knight.ATK);
KnigDEFmod = real(global.structMods.ClassArmor.Knight.DEF);
KnigMAGmod = real(global.structMods.ClassArmor.Knight.MAG);
KnigACTmod = real(global.structMods.ClassArmor.Knight.ACT);
#endregion
#region Oathbreaker mods
OathLIFmod = real(global.structMods.ClassArmor.Oathbreaker.LIF);
OathATKmod = real(global.structMods.ClassArmor.Oathbreaker.ATK);
OathDEFmod = real(global.structMods.ClassArmor.Oathbreaker.DEF);
OathMAGmod = real(global.structMods.ClassArmor.Oathbreaker.MAG);
OathACTmod = real(global.structMods.ClassArmor.Oathbreaker.ACT);
#endregion