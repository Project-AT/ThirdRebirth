#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

furnace.remove(<biomesoplenty:gem:0>);

RecipeUtils.recipeTweak(false, <biomesoplenty:waterlily:0>, [
    [<biomesoplenty:waterlily:1>, <biomesoplenty:waterlily:1>]
]);

RecipeUtils.recipeTweak(false, <biomesoplenty:waterlily:1> * 2, [
    [<biomesoplenty:waterlily:0>]
]);

RecipeUtils.recipeTweak(false, <minecraft:waterlily>, [
    [<biomesoplenty:waterlily:0>, <biomesoplenty:waterlily:0>]
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

RecipeBuilder.get("blacksmith")
  .setShapeless([<biomesoplenty:white_sandstone>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<biomesoplenty:white_sand> * 3)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();