#priority 10
#modloaded atutils

import crafttweaker.item.IItemStack;

import mods.orestages.OreStages;


var ores as IItemStack[] = itemUtils.getItemsByRegexRegistryName(".*_ore.*");
var ores2 as IItemStack[] = [
    <thermalfoundation:ore:*>,
    <lightningcraft:ore_block:*>,
    <thermalfoundation:ore_fluid:*>,
    <libvulpes:ore0>
];

for ore in ores{
    if(ore.isItemBlock){
        OreStages.addReplacement("oreStage", ore);
    }
}

for ore2 in ores2 {
    OreStages.addReplacement("oreStage", ore2);
}