#priority 5
#modloaded atutils

import mods.modularmachinery.RecipeBuilder;

import scripts.grassUtils.StringHelper;

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

RecipeBuilder.newBuilder("ordinary_thermal_boilers_reicipe", "ordinary_thermal_boilers", 5)
    .addFluidInput(<liquid:water> * 200)
    .addItemInput(<atutils:equivalent_fuel>)
    .addFluidOutput(<liquid:steam> * 1000)
.build();

RecipeBuilder.newBuilder("ordinary_turbines_recipe", "ordinary_turbines", 10)
    .addFluidInput(<liquid:steam> * 4000)
    .addEnergyPerTickOutput(4000)
    .addFluidOutput(<liquid:water> * 800)
.build();

RecipeBuilder.newBuilder("fractionator_recipe", "fractionator", 100)
    .addFluidInput(<liquid:oil> * 100)
    .addEnergyPerTickInput(100)
    .addFluidOutput(<liquid:lpg> * 20)
    .addFluidOutput(<liquid:fuel> * 10)
    .addFluidOutput(<liquid:diesel> * 10)
    .addFluidOutput(<liquid:kerosene> * 10)
    .addFluidOutput(<liquid:petrotheum> * 30)
    .addFluidOutput(<liquid:vapor_of_levity> * 20)
.build();

for item in game.items {
    for item_ in item.subItems{
        RecipeBuilder.newBuilder("big_embers_furnace_recipe" + StringHelper.getItemNameWithUnderline(item_), "big_embers_furnace", 2)
            .addItemInput(item_)
            .addItemOutput(<embers:dust_ash>)
            .addEmberInput(20)
        .build();
    }
}