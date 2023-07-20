#priority 5
#modloaded trutils

import mods.extrautils2.Resonator;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//1 GP = 100 energy
//mods.extrautils2.Resonator.add(IItemStack output, IItemStack input, int energy, @Optional boolean addOwnerTag);
//mods.extrautils2.Resonator.remove(IItemStack outout);

mods.extrautils2.Resonator.add(<contenttweaker:research_point_lv1_incomplete> * 4 , <immersiveengineering:material:27>, 1600);
mods.extrautils2.Resonator.remove(<extrautils2:ingredients:9>);