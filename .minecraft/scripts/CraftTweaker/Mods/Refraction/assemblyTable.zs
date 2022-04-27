#priority 5
#modloaded trutils
import mods.refraction.AssemblyTable;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.StringHelper;

function assemblyTableRecipe(output as IItemStack, inputs as IIngredient[], 
    minLaserStrength as int, maxLaserStrength as int, 
    minRed as int, maxRed as int, 
    minGreen as int, maxGreen as int,
    minBlue as int, maxBlue as int,
    isRemove as bool) {
        var recipeName as string = "AssemblyTable" ~ "/" ~ StringHelper.getItemNameWithUnderline(output);
        if (isRemove) {
            AssemblyTable.remove(output);
        }
        AssemblyTable.addRecipe(recipeName, output, inputs, minLaserStrength, maxLaserStrength, minRed, maxRed, minGreen, maxGreen, minBlue, maxBlue);

}

assemblyTableRecipe(<contenttweaker:germanium_integrated_circuit_board>,
    [<contenttweaker:ge_wafer>, <contenttweaker:ge_transistor> * 2, <enderio:item_basic_capacitor>, <mekanism:polyethene:2>, <enderio:item_material:50>],
    32, 64, 96, 160, 0, 0, 255, 255, false
);