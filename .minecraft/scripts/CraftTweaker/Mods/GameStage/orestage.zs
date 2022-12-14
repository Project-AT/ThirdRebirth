#priority 10
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;

import mods.orestages.OreStages;

ALLSTAGES.insert("oreStage");

for ore in oreDict.entries {
    if (ore.name.contains("ore")) {
        OreStages.addNonDefaultingReplacement("oreStage", ore);
    }
}
mods.orestages.OreStages.addNonDefaultingReplacement("craftingtable", <minecraft:crafting_table>, <minecraft:planks:0>);
mods.orestages.OreStages.addNonDefaultingReplacement("craftingtable", <minecraft:furnace:*>, <minecraft:brick_block>);
mods.orestages.OreStages.addNonDefaultingReplacement("treatedwood", <ore:plankTreatedWood>, <minecraft:planks:5>);