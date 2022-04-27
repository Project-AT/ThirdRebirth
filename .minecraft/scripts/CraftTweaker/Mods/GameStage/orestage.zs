#priority 10
#modloaded trutils

import crafttweaker.item.IItemStack;

import mods.orestages.OreStages;

for ore in oreDict.entries {
    if (ore.name.contains("ore")) {
        OreStages.addNonDefaultingReplacement("oreStage", ore);
    }
}