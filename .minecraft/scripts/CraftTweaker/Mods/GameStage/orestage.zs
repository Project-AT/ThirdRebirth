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
    <minecraft:quartz_ore>,
    <netherex:amethyst_ore>,
];

val underOrestage as IIngredient[] = [
    <contenttweaker:udorealuminum>,
    <lightningcraft:ore_block:3>,
    <lightningcraft:ore_block>,
    <lightningcraft:ore_block:1>,
    <lightningcraft:ore_block:2>,
    <contenttweaker:udorenickel>,
    <contenttweaker:udoreuranium>,
    <contenttweaker:udoreboron>,
    <contenttweaker:udorelithium>,
    <contenttweaker:udoremagnesium>,
    <contenttweaker:udorethorium>,
];

val enderOrestage as IIngredient[] = [
    <quark:biotite_ore>,
    <ore:oreEndTritanium>,
    <ore:oreEndRutile>,
    <ore:oreEndLithium>,
    <ore:oreEndCopper>,
    <ore:oreEndLead>,
    <ore:oreEndCertusQuartz>,
    <ore:oreEndChargedCertusQuartz>,
    <ore:oreEndIron>,
    <ore:oreEndTin>,
    <ore:oreClathrateEnder>,
    <ore:oreEndOsmium>,
    <ore:oreEndDilithium>,
];

for netherOres in netherOreStage {
    ItemStages.removeItemStage(netherOres);
    OreStages.addNonDefaultingReplacement("oreStage", netherOres, <minecraft:netherrack>);
}

for Ores in underOrestage {
    ItemStages.removeItemStage(Ores);
    OreStages.addNonDefaultingReplacement("oreStage", Ores, <lightningcraft:stone_block:6>);
}

for Ores in enderOrestage {
    ItemStages.removeItemStage(Ores);
    OreStages.addNonDefaultingReplacement("oreStage", Ores, <minecraft:end_stone>);
}

ItemStages.removeItemStage(<netherex:rime_ore>);
OreStages.addNonDefaultingReplacement("oreStage", <netherex:rime_ore>, <netherex:icy_netherrack>);