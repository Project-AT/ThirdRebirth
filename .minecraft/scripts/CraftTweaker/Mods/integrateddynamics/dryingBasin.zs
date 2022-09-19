#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.integrateddynamics.DryingBasin;
import mods.integrateddynamics.MechanicalDryingBasin;

function addDryingBasinRecipe(input as IItemStack, inputFluid as ILiquidStack, output as IItemStack, outputFluid as ILiquidStack, duration as int, mechanicalDuration as int) {
    DryingBasin.addRecipe(input, inputFluid, output, outputFluid, duration);
    MechanicalDryingBasin.addRecipe(input, inputFluid, output, outputFluid, mechanicalDuration);
}

addDryingBasinRecipe(null, <liquid:ichor> * 1000, <lightningcraft:material:5>, null, 20, 10);
addDryingBasinRecipe(null, <liquid:petrotheum> * 250, <thermalfoundation:material:1027>, null, 20, 10);
addDryingBasinRecipe(null, <liquid:slag_waste_slurry> * 250, <thermalfoundation:material:865>, null, 40, 20);
