#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.poweredthingies.Tweaker.itemLiquefierTweaker;

// todo 消耗时间，耗电量

function itemLiquefier(output as ILiquidStack, input as IItemStack){
    itemLiquefierTweaker().addRecipe(input, output);
}

val itemToLiquids as ILiquidStack[IItemStack] = {
    <embers:nugget_dawnstone> : <liquid:dawnstone> *  16,
    <minecraft:chorus_fruit_popped> : <liquid:purpur> *  72,
    <minecraft:soul_sand> : <liquid:oil_soul> *  100,
    <embers:ingot_dawnstone> : <liquid:dawnstone> *  144,
    <embers:plate_dawnstone> : <liquid:dawnstone> *  144,
    <minecraft:purpur_block> : <liquid:purpur> *  288,
};

val oreToLiquids as ILiquidStack[IOreDictEntry] = {
    <ore:itemSalt> : <liquid:brine> * 15,
    <ore:nuggetCopper> : <liquid:copper> *  16,
    <ore:nuggetGold> : <liquid:gold> *  16,

    <ore:dustObsidian> : <liquid:obsidian> *  72,
    <ore:dustEndstone> : <liquid:end_stone> *  72,
    <ore:dustManganeseDioxide> : <liquid:manganese_dioxide> *  144,
    <ore:dustAlugentum> : <liquid:alugentum> *  144,
    <ore:dustGlowstone> : <liquid:glowstone> *  250,
    <ore:dustSulfur> : <liquid:sulfur> *  666,
    <ore:dustSodiumHydroxide> : <liquid:naoh> *  666,
    <ore:dustPotassiumHydroxide> : <liquid:koh> *  666,
    <ore:dustArsenic> : <liquid:arsenic> *  666,

    <ore:ingotBrickNether> : <liquid:nether_brick> *  72,
    <ore:ingotHardCarbon> : <liquid:hard_carbon> *  144,
    <ore:ingotLithiumManganeseDioxide> : <liquid:manganese_dioxide> *  144,
    <ore:ingotLeadPlatinum> : <liquid:lead_platinum> *  144,
    <ore:ingotGold> : <liquid:gold> *  144,
    <ore:ingotCopper> : <liquid:copper> *  144,

    <ore:gemPrismarine> : <liquid:prismarine> *  144,
    <ore:gemBoronArsenide> : <liquid:bas> *  666,

    <ore:blockBrickNether> : <liquid:nether_brick> *  288,
    <ore:blockSlime> : <liquid:slime> *  1296,
    <ore:blockGold> : <liquid:gold> *  1296,
    <ore:blockCopper> : <liquid:copper> *  1296,
    <ore:blockQuartz> : <liquid:quartz> *  2664,
    <ore:blockLapis> : <liquid:lapis> *  5994,
    <ore:blockDiamond> : <liquid:diamond> *  5994,
    <ore:blockEmerald> : <liquid:emerald> *  5994,

    <ore:netherrack> : <liquid:nether_brick> *  72,
    <ore:crystalsPrismarine> : <liquid:prismarine> *  144,
    <ore:slimeball> : <liquid:slime> *  144,
    <ore:obsidian> : <liquid:obsidian> *  288,
    <ore:endstone> : <liquid:end_stone> *  288,
    <ore:glowstone> : <liquid:glowstone> *  1000,
};

for item, liquid in itemToLiquids {
    itemLiquefier(liquid, item);
}

for ore, liquid in oreToLiquids {
    for item in ore.items {
        itemLiquefier(liquid, item);
    }
}