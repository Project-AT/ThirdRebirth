#priority 5
#modloaded atutils

import mods.modularmachinery.RecipeBuilder;

RecipeBuilder.newBuilder("stb_recipe", "stb", 10)
    .addFluidInput(<liquid:water> * 800)
    .addItemInput(<atutils:equivalent_fuel>)
    .addFluidOutput(<liquid:steam> * 4000)
.build();

RecipeBuilder.newBuilder("st_recipe", "st", 10)
    .addFluidInput(<liquid:steam> * 400)
    .addEnergyPerTickOutput(200)
    .addFluidOutput(<liquid:water> * 160)
.build();   