#priority 5
#modloaded atutils

import mods.modularmachinery.RecipeBuilder;

RecipeBuilder.newBuilder("small_thermal_boiler_recipe", "small_thermal_boiler", 1)
    .addFluidInput(<liquid:water> * 800)
    .addItemInput(<atutils:equivalent_fuel>)
    .addFluidOutput(<liquid:steam> * 4000)
.build();

RecipeBuilder.newBuilder("small_turbine_recipe", "small_turbine", 1)
    .addFluidInput(<liquid:steam> * 400)
    .addEnergyPerTickOutput(200)
    .addFluidOutput(<liquid:water> * 160)
.build();