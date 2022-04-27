#priority 5
#modloaded trutils

import mods.modularmachinery.RecipeBuilder;

RecipeBuilder.newBuilder("refinery_recipe_1", "refinery", 50)
    .addItemInput(<netherex:frostburn_ice>)
    .addItemOutput(<minecraft:ice>)
    .addEnergyPerTickInput(100)
    .addFluidOutput(<liquid:cryotheum> * 10)
    .addFluidOutput(<liquid:gas_dwarf> * 50)
    .addEmberInput(200)
.build();

RecipeBuilder.newBuilder("refinery_recipe_2", "refinery", 50)
    .addItemInput(<embers:dust_ash>)
    .addItemOutput(<contenttweaker:soul_extract>)
    .addEnergyPerTickInput(100)
    .addFluidInput(<liquid:oil_soul> * 250)
    .addFluidOutput(<liquid:oil> * 250)
    .addEmberInput(200)
.build();

RecipeBuilder.newBuilder("refinery_recipe_3", "refinery", 100)
    .addItemInput(<contenttweaker:tartaric_acid>)
    .addFluidInput(<liquid:infused_slag_slurry> * 500)
    .addEnergyPerTickInput(60)
    .addFluidOutput(<liquid:slag_waste_slurry> * 450)
    .addFluidOutput(<liquid:germanium_slurry> * 50)
    .addEmberInput(200)
.build();