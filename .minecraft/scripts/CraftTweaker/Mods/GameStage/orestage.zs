#priority 10
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlock;

import mods.orestages.OreStages;
import mods.ItemStages;

ALLSTAGES.insert("oreStage");

for ore in oreDict.entries {
    if (ore.name.contains("ore")) {
        OreStages.addNonDefaultingReplacement("oreStage", ore);
    }
}
mods.orestages.OreStages.addNonDefaultingReplacement("craftingtable", <minecraft:crafting_table>, <minecraft:planks:0>);
mods.orestages.OreStages.addNonDefaultingReplacement("craftingtable", <minecraft:furnace:*>, <minecraft:brick_block>);
mods.orestages.OreStages.addNonDefaultingReplacement("treatedwood", <ore:plankTreatedWood>, <minecraft:planks:5>);

val netherOreStage as IIngredient[] = [
    <ore:oreNetherOsmium>,
    <ore:oreNetherGold>,
    <ore:oreNetherIron>,
    <ore:oreNetherCopper>,
    <ore:oreNetherLead>,
    <ore:oreNetherPlatinum>,
    <ore:oreNetherSilver>,
    <ore:oreNetherTin>,
    <ore:oreNetherIridium>,
];

for netherOres in netherOreStage {
    ItemStages.removeItemStage(netherOres);
    OreStages.addNonDefaultingReplacement("oreStage", netherOres, <minecraft:netherrack>);
}
