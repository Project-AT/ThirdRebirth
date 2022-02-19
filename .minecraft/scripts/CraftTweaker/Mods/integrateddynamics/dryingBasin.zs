#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.MechanicalDryingBasin;

function addDryingBasinRecipe(input as IItemStack, inputFluid as ILiquidStack, output as IItemStack, outputFluid as ILiquidStack, duration as int, mechanicalDuration as int) {
    DryingBasin.addRecipe(input, inputFluid, output, outputFluid, duration);
    MechanicalDryingBasin.addRecipe(input, inputFluid, output, outputFluid, mechanicalDuration);
}

addDryingBasinRecipe(null, <liquid:ichor> * 1000, <lightningcraft:material:5>, null, 10, 10);
