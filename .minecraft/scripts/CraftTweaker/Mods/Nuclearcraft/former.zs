#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.nuclearcraft.IngotFormer;

val recipes as ILiquidStack[IIngredient] = {
    <integrateddynamics:crystalized_chorus_block> : <liquid:liquidchorus> * 1000,
    <integrateddynamics:crystalized_chorus_brick> : <liquid:liquidchorus> * 1000,
    <integrateddynamics:crystalized_chorus_brick_stairs> : <liquid:liquidchorus> * 750,
    <integrateddynamics:crystalized_chorus_block_stairs> : <liquid:liquidchorus> * 750,
};

for output, input in recipes {
    IngotFormer.addRecipe(input, output);
}