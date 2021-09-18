#priority 5
#modloaded atutils

import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

var orePlainNames as string[] = [
    "Gold", "Platinum", "Silver", "Copper", "Lead", "Aluminum",
];

var oreNames as string[] = [
    "Tin",   "Nickel",  "Invar", "Iron", "Bronze", "Constantan", "Electrum",
    "Steel", "Titanium", "TitaniumIridium", "TitaniumAluminide", "Germanium", "Tough",
    "Enderium", "Signalum", "Lumium", "Iridium", "Mithril", "HighStrengthAluminumAlloy"
];

var onlyPlateOreNames as string[] = [
    "Uranium", "Electricium", "Skyfather", "Mystic", "Tritanium", "Dawnstone"
];

for index, i in orePlainNames {
    var gear as IOreDictEntry = oreDict.get("gear" ~ i);
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    RecipeBuilder.get("blacksmith")
        .setName("atplate" ~ index)
        .setMaximumTier(1)
        .setShapeless([ingot, ingot])
        .addTool(<ore:artisansHammer>, 4)
        .addOutput(plate.firstItem)
     .create();

    recipes.remove(gear.firstItem);
    RecipeBuilder.get("blacksmith")
        .setName("atgear" ~ index)
        .setMaximumTier(1)
        .setShaped([
            [null, ingot, null],
            [ingot, null, ingot],
            [null, ingot, null]])
        .addTool(<ore:artisansHammer>, 16)
        .addOutput(gear.firstItem)
    .create();
}

for index, i in oreNames {
    var gear as IOreDictEntry = oreDict.get("gear" ~ i);
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    RecipeBuilder.get("blacksmith")
        .setName("atplate_" ~ index)
        .setMaximumTier(1)
        .setShapeless([ingot, ingot])
        .addTool(<ore:artisansHammer>, 4)
        .addTool(<ore:artisansBurner>, 4)
        .addOutput(plate.firstItem)
     .create();

    recipes.remove(gear.firstItem);
    RecipeBuilder.get("blacksmith")
        .setName("atgear_" ~ index)
        .setMaximumTier(1)
        .setShaped([
            [null, ingot, null],
            [ingot, null, ingot],
            [null, ingot, null]])
        .addTool(<ore:artisansHammer>, 16)
        .addTool(<ore:artisansBurner>, 16)
        .addOutput(gear.firstItem)
    .create();
}

for index, i in onlyPlateOreNames {
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    RecipeBuilder.get("blacksmith")
        .setName("atplate__" ~ index)
        .setMaximumTier(1)
        .setShapeless([ingot, ingot])
        .addTool(<ore:artisansHammer>, 4)
        .addOutput(plate.firstItem)
     .create();
}