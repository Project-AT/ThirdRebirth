#priority 10
#modloaded atutils

import crafttweaker.item.IItemStack;

import mods.orestages.OreStages;

for ore in oreDict.entries {
    if (ore.name.contains("ore")) {
        OreStages.addReplacement("oreStage", ore);
    }
}