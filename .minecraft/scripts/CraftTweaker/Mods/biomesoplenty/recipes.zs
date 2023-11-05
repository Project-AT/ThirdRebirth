#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.addShapeless(<harvestcraft:honeyitem> * 4, [<biomesoplenty:jar_filled>.giveBack(<biomesoplenty:jar_empty>)]);
recipes.remove(<biomesoplenty:gem_block>);
recipes.remove(<biomesoplenty:gem>);

furnace.remove(<biomesoplenty:gem:0>);

RecipeUtils.recipeTweak(false, <biomesoplenty:waterlily:0>, [
    [<biomesoplenty:waterlily:1>, <biomesoplenty:waterlily:1>]
]);

RecipeUtils.recipeTweak(false, <biomesoplenty:waterlily:1> * 2, [
    [<biomesoplenty:waterlily:0>]
]);

recipes.addShapeless(<minecraft:waterlily>, [
    <biomesoplenty:waterlily:0>, <biomesoplenty:waterlily:0>
]);

RecipeUtils.recipeTweak(false, <biomesoplenty:waterlily:0> * 2, [
    [<minecraft:waterlily>]
]);

RecipeUtils.recipeTweak(false, <biomesoplenty:waterlily:1>, [
    [<biomesoplenty:waterlily:2>, <biomesoplenty:waterlily:2>]
]);

RecipeUtils.recipeTweak(false, <biomesoplenty:waterlily:2> * 2, [
    [<biomesoplenty:waterlily:1>]
]);

recipes.addShapeless(<biomesoplenty:waterlily:3>, [
    <minecraft:waterlily>, <ore:allFlowers>
]);

recipes.addShapeless(<minecraft:waterlily>, [
    <biomesoplenty:waterlily:3>
]);

recipes.addShapeless(<minecraft:paper> * 3, [
    <biomesoplenty:plant_1:8>, <biomesoplenty:plant_1:8>, <biomesoplenty:plant_1:8>
]);

RecipeBuilder.get("blacksmith")
  .setShapeless([<biomesoplenty:white_sandstone>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<biomesoplenty:white_sand> * 3)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();

recipes.replaceAllOccurences(<biomesoplenty:plant_1:3>, <ore:cropRice>, <biomesoplenty:ricebowl>);