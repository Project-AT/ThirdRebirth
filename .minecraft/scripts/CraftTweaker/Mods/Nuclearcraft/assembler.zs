#priority 5
#modloaded trutils


import mods.nuclearcraft.Assembler;

//mods.nuclearcraft.Assembler.addRecipe(IIngredient itemInput1, IIngredient itemInput2, IIngredient itemInput3, IIngredient itemInput4, IIngredient itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
Assembler.addRecipe(<ore:dustArsenic>, <ore:dustBoron>, <contenttweaker:tinned_copper_wire> * 2, <ore:itemSilicon>, <contenttweaker:si_transistor>);