#priority 5
#modloaded trutils

import mods.mekanism.compressor;

//mods.mekanism.compressor.removeRecipe(IIngredient outputStack, @Optional IIngredient inputStack, @Optional IIngredient inputGas);
//mods.mekanism.compressor.addRecipe(IIngredient inputStack, @Optional IGasStack inputGas, IItemStack outputStack);

compressor.removeRecipe(<mekanism:ingot:3>);
compressor.addRecipe(<enderio:block_holier_fog>, <gas:liquidosmium>, <ore:ingotRefinedGlowstone>.firstItem);
