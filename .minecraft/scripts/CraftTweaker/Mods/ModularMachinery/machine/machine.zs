#priority 5
#modloaded atutils

import mods.modularmachinery.RecipeBuilder;

RecipeBuilder.newBuilder("small_thermal_boiler_recipe", "small_thermal_boilers", 20)
    .addFluidInput(<liquid:water> * 200)
    .addItemInput(<atutils:equivalent_fuel>)
    .addFluidOutput(<liquid:steam> * 1000)
.build();

RecipeBuilder.newBuilder("small_turbine_recipe", "small_turbine", 10)
    .addFluidInput(<liquid:steam> * 1000)
    .addEnergyPerTickOutput(400)
    .addFluidOutput(<liquid:water> * 200)
.build();