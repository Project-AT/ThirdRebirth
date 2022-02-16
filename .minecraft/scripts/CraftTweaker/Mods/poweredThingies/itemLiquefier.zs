#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.poweredthingies.Tweaker.itemLiquefierTweaker;

// todo 消耗时间，耗电量

function itemLiquefier(output as ILiquidStack, input as IItemStack){
    //(output ~ ":" ~ input);
    itemLiquefierTweaker().addRecipe(input, output);
}

val recipes as IIngredient[][ILiquidStack] = {
    <liquid:oil_soul> *  100 : [<minecraft:soul_sand>],
    <liquid:dawnstone> *  144 : [<embers:ingot_dawnstone>],
    <liquid:dawnstone> *  144 : [<embers:plate_dawnstone>],
    <liquid:dawnstone> *  16 : [<embers:nugget_dawnstone>],
    <liquid:sulfur> *  666 : [<ore:dustSulfur>],
    <liquid:naoh> *  666 : [<ore:dustSodiumHydroxide>],
    <liquid:koh> *  666 : [<ore:dustPotassiumHydroxide>],
    <liquid:arsenic> *  666 : [<ore:dustArsenic>],
    <liquid:bas> *  666 : [<ore:gemBoronArsenide>],
    <liquid:prismarine> *  144 : [<ore:crystalsPrismarine>, <ore:gemPrismarine>],
    <liquid:slime> *  144 : [<ore:slimeball>],
    <liquid:slime> *  1296 : [<ore:blockSlime>],
    <liquid:hard_carbon> *  144 : [<ore:ingotHardCarbon>],
    <liquid:manganese_dioxide> *  144 : [<ore:ingotLithiumManganeseDioxide>, <ore:dustManganeseDioxide>],
    <liquid:alugentum> *  144 : [<ore:dustAlugentum>],
    <liquid:lead_platinum> *  144 : [<ore:ingotLeadPlatinum>],
    <liquid:quartz> *  2664 : [<ore:blockQuartz>],
    <liquid:lapis> *  5994 : [<ore:blockLapis>],
    <liquid:diamond> *  5994 : [<ore:blockDiamond>],
    <liquid:emerald> *  5994 : [<ore:blockEmerald>],
    <liquid:obsidian> *  288 : [<ore:obsidian>],
    <liquid:obsidian> *  72 : [<ore:dustObsidian>],
    <liquid:nether_brick> *  72 : [<ore:netherrack>, <ore:ingotBrickNether>],
    <liquid:nether_brick> *  288 : [<ore:blockBrickNether>],
    <liquid:end_stone> *  288 : [<ore:endstone>],
    <liquid:end_stone> *  72 : [<ore:dustEndstone>],
    <liquid:purpur> *  288 : [<minecraft:purpur_block>],
    <liquid:purpur> *  72 : [<minecraft:chorus_fruit_popped>],
    <liquid:glowstone> *  250 : [<ore:dustGlowstone>],
    <liquid:glowstone> *  1000 : [<ore:glowstone>],
    <liquid:gold> *  16 : [<ore:nuggetGold>],
    <liquid:gold> *  144 : [<ore:ingotGold>],
    <liquid:gold> *  1296 : [<ore:blockGold>],
    <liquid:copper> *  16 : [<ore:nuggetCopper>],
    <liquid:copper> *  144 : [<ore:ingotCopper>],
    <liquid:copper> *  1296 : [<ore:blockCopper>],
};

for output, inputs in recipes {
    for input in inputs {
        for Input in input.items {
            itemLiquefier(output, Input);
        }
    }
}
