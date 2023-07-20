#priority 5
#modloaded trutils

import mods.nuclearcraft.Extractor;

//Extractor.addRecipe(IIngredient itemInput, IIngredient itemOutput, ILiquidStack fluidOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);

mods.nuclearcraft.Extractor.addRecipe(<contenttweaker:germanium_integrated_circuit_board>, <ore:substanceEbony>.firstItem, <liquid:germanium_matrix> * 200, 1, 8);