#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.nuclearcraft.Melter;

val recipes as ILiquidStack[IIngredient] = {
    <ore:soulSand> : <liquid:oil_soul> * 100,
    <ore:ingotDawnstone> : <liquid:dawnstone> * 144,
    <ore:plateDawnstone> : <liquid:dawnstone> * 144,
    <ore:nuggetDawnstone> : <liquid:dawnstone> * 16
};

for input, output in recipes {
    Melter.addRecipe(input, output);
}
