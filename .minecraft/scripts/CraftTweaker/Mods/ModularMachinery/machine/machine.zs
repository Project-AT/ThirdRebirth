#priority 5
#modloaded trutils

import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;

import scripts.grassUtils.StringHelper;

RecipeBuilder.newBuilder("small_thermal_boiler_recipe", "small_thermal_boilers", 20)
    .addFluidInput(<liquid:water> * 200)
    .addItemInput(<trutils:equivalent_fuel>)
    .addFluidOutput(<liquid:steam> * 1000)
.build();

RecipeBuilder.newBuilder("small_turbine_recipe", "small_turbine", 10)
    .addFluidInput(<liquid:steam> * 1000)
    .addEnergyPerTickOutput(400)
    .addFluidOutput(<liquid:water> * 200)
.build();

RecipeBuilder.newBuilder("ordinary_thermal_boilers_reicipe", "ordinary_thermal_boilers", 5)
    .addFluidInput(<liquid:water> * 200)
    .addItemInput(<trutils:equivalent_fuel>)
    .addFluidOutput(<liquid:steam> * 1000)
.build();

RecipeBuilder.newBuilder("ordinary_turbines_recipe", "ordinary_turbines", 10)
    .addFluidInput(<liquid:steam> * 4000)
    .addEnergyPerTickOutput(4000)
    .addFluidOutput(<liquid:water> * 800)
.build();

RecipeBuilder.newBuilder("fractionator_recipe", "fractionator", 10)
    .addFluidInput(<liquid:oil> * 100)
    .addEnergyPerTickInput(1000)
    .addFluidOutput(<liquid:lpg> * 20)
    .addFluidOutput(<liquid:fuel> * 10)
    .addFluidOutput(<liquid:diesel> * 10)
    .addFluidOutput(<liquid:kerosene> * 10)
    .addFluidOutput(<liquid:petrotheum> * 30)
    .addFluidOutput(<liquid:vapor_of_levity> * 20)
.build();

for item in game.items {
    for item_ in item.subItems {
        RecipeBuilder.newBuilder("big_embers_furnace_recipe" + StringHelper.getItemNameWithUnderline(item_), "big_embers_furnace", 2)
            .addItemInput(item_)
            .addItemOutput(<embers:dust_ash>)
            .addEmberInput(20)
        .build();
    }
}

var liquidList as ILiquidStack[] = [
    <liquid:lpg> * 2,
    <liquid:fuel> * 5,
    <liquid:oil> * 125,
    <liquid:diesel> * 11,
    <liquid:kerosene> * 7,
    <liquid:creosote> * 250
];

for i, liquid in liquidList {
    var time as int = 20;
    var steam as ILiquidStack = <liquid:steam> * 1000;

    if (i == 1 || i == 3 || i == 4) {
        time *= 2;
        steam.withAmount(2000);
    }

    RecipeBuilder.newBuilder("small_thermal_boiler_recipe" ~ liquid.definition.name, "small_thermal_boilers", time)
    .addFluidInput(liquid)
    .addFluidInput(<liquid:water> * 200)
    .addFluidOutput(steam)
    .build();
}