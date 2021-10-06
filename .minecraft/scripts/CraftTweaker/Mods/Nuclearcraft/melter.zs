#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.nuclearcraft.Melter;

val recipes as IIngredient[ILiquidStack] = {
    <liquid:oil_soul> * 100 : <ore:soulSand>,
    <liquid:dawnstone> * 144 : <ore:ingotDawnstone>,
    <liquid:dawnstone> * 144 : <ore:plateDawnstone>,
    <liquid:dawnstone> * 16 : <ore:nuggetDawnstone>
};

for input, output in recipes {
    Melter.addRecipe(input, output);
}
