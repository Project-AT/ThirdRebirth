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

addDryingBasinRecipe(null, <liquid:ichor> * 1000, <lightningcraft:material:5>, null, 100, 20);
addDryingBasinRecipe(<ore:blockMud>.firstItem, null, <minecraft:dirt>, null, 40, 10);

MechanicalDryingBasin.addRecipe(null, <liquid:petrotheum> * 250, <thermalfoundation:material:1027>, null);
MechanicalDryingBasin.addRecipe(null, <liquid:slag_waste_slurry> * 250, <thermalfoundation:material:865>, null);
MechanicalDryingBasin.addRecipe(null, <liquid:aerotheum> * 250, <thermalfoundation:material:1026>, null);
MechanicalDryingBasin.addRecipe(null, <liquid:cryotheum> * 250, <thermalfoundation:material:1025>, null);
MechanicalDryingBasin.addRecipe(null, <liquid:pyrotheum> * 250, <thermalfoundation:material:1024>, null);
