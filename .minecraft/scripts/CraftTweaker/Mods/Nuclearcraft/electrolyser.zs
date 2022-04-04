#priority 5
#modloaded atutils

import crafttweaker.liquid.ILiquidStack;

import mods.nuclearcraft.Electrolyzer;

function addRecipe(input as ILiquidStack, output1 as ILiquidStack, output2 as ILiquidStack = null, output3 as ILiquidStack = null, output4 as ILiquidStack = null, remove as bool = true) {
    if (remove)
        Electrolyzer.removeRecipeWithInput(input);
    Electrolyzer.addRecipe(input, output1, output2, output3, output4);
}

addRecipe(<liquid:water> * 500, <liquid:hydrogen> * 500, <liquid:liquidoxygen> * 250);
addRecipe(<liquid:brine> * 500, <liquid:liquidsodium> * 250, <liquid:liquidchlorine> * 250);
addRecipe(<liquid:heavy_water> * 500, <liquid:liquiddeuterium> * 500, <liquid:liquidoxygen> * 250, null, null, false);