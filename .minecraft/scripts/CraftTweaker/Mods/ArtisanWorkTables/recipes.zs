#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

//删除齿轮的手搓合成，铁、木、石齿轮不删
var oreNames as string[] = [
    "Gold", "Copper", "Tin", "Lead", "Aluminum", "Nickel", "Silver", "Invar", "Iron",
    "Bronze", "Constantan", "Electrum", "Steel", "Titanium", "TitaniumIridium", "TitaniumAluminide",
     "Enderium", "Signalum", "Lumium", "Iridium", "Mithril", "Platinum"
];

for index, i in oreNames{
    var gear = oreDict.get("gear" ~ i);
    var plate = oreDict.get("plate" ~ i);
    var ingot = oreDict.get("ingot" ~ i);

    RecipeBuilder.get("engineer")
        .setName("atplate" ~ index)
        .setMaximumTier(1)
        .setShapeless([ingot, ingot])
        .addTool(<ore:artisansHammer>, 1)
        .addOutput(plate.firstItem)
     .create();

    recipes.remove(gear.firstItem);
    RecipeBuilder.get("engineer")
        .setName("atgear" ~ index)
        .setMaximumTier(1)
        .setShaped([
            [null, ingot, null],
            [ingot, null, ingot],
            [null, ingot, null]])
        .addTool(<ore:artisansHammer>, 4)
        .addOutput(gear.firstItem)
    .create();
}