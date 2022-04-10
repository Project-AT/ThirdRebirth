#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;

function addSqueezerRecipeByTwoOutput(input as IItemStack, output1 as IItemStack, output2 as IItemStack, output2Chance as float, output2MechanicalChance as float) {
    Squeezer.addRecipe(input, output1, 1.0, output2, output2Chance);
    MechanicalSqueezer.addRecipe(input, output1, 1.0, output2, output2MechanicalChance);
}

function addSqueezerRecipeByLiquid(input as IItemStack, output as IItemStack, outputFluid as ILiquidStack, duration as int) {
    Squeezer.addRecipe(input, output, outputFluid);
    MechanicalSqueezer.addRecipe(input, output, outputFluid, duration);
}

addSqueezerRecipeByLiquid(<biomesoplenty:fleshchunk>, <minecraft:rotten_flesh>, <liquid:blood> * 10, 10);
addSqueezerRecipeByLiquid(<netherex:gloomy_netherrack>, null, <liquid:oil_soul> * 25, 10);