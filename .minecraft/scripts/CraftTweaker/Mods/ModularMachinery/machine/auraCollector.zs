#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;

var auraMap as ILiquidStack[int] = {
    0 : <liquid:aura_overworld>,
    1 : <liquid:aura_end>,
    -1 as int : <liquid:aura_underworld>,
    -9 as int : <liquid:aura_underworld>
};

for dim, fluid in auraMap {
    RecipeBuilder.newBuilder("aura_collector_recipe_dim" + dim, "aura_collector", 40)
        .addAuraInput(500)
        .setDimension([dim])
        .addFluidOutput(fluid * 1000)
    .build();
}