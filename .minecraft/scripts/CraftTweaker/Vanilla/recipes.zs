#priority 5
#modloaded trutils

import mods.artisanworktables.builder.RecipeBuilder;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

furnace.addRecipe(<ore:nuggetIron>.firstItem * 6, <ore:ingotRustyIron>);
furnace.addRecipe(<ore:nuggetGold>.firstItem * 3, <minecraft:golden_carrot>);
furnace.addRecipe(<ore:ingotGermanium>.firstItem, <ore:dustGermanium>);
furnace.addRecipe(<ore:ingotIron>.firstItem, <ore:ingotPureIron>);
furnace.addRecipe(<ore:ingotIron>.firstItem, <ore:dustPureIron>);

recipes.addShapeless(<minecraft:paper> * 3,
    [<biomesoplenty:plant_1:8>, <biomesoplenty:plant_1:8>, <biomesoplenty:plant_1:8>
]);

RecipeUtils.recipeTweak(true, <minecraft:crafting_table>, [
    [null, <ore:leather>],
    [<ore:plankTreatedWood>, <primal_tech:work_stump_upgraded>, <ore:plankTreatedWood>],
    [null, <ore:ingotIron>]
]);

artisanUtils.RecipeTweakWithTools("basic", true, <minecraft:furnace>,
    inputPatternGet(["GGG", "GAG", "GGG"], {"G" : <ore:ingotBrick>, "A" : <buildinggadgets:constructionpaste>})
, {<ore:artisansTrowel> : 6} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <minecraft:glass_bottle>,
    inputPatternGet(["G G", " G "], {"G" : <ore:shardGlass>})
, {<ore:artisansBurner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <minecraft:glass_bottle> * 4,
    inputPatternGet(["G G", " G "], {"G" : <ore:blockGlass>})
, {<ore:artisansBurner> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:string> * 4, [
    [<ore:blockWool>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:dye:14>, [
    [<ore:cropCarrot>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:dye:6>, [
    [<mysticalworld:carapace>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:sugar> * 2, [
    [<minecraft:reeds>]
], {<ore:artisansMortar> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:dye:15> * 4, [
    [<ore:bone>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:blaze_powder> * 5, [
    [<ore:rodBlaze>]
], {<ore:artisansMortar> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:flint>, [
    [<ore:gravel>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <minecraft:magma_cream> * 2, [
    [<minecraft:magma>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("carpenter", false, <minecraft:stick> * 2, [
    [<ore:fenceWood>]
], {<ore:artisansHandsaw> : 3, <ore:artisansFramingHammer> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("carpenter", false, <minecraft:stick> * 2, [
    [<minecraft:ladder>]
], {<ore:artisansHandsaw> : 1} as int[IIngredient]);


RecipeBuilder.get("carpenter")
    .setShaped([
        [<ore:plankWood>],
        [<ore:plankWood>]])
    .addTool(<ore:artisansHandsaw>, 2)
    .addOutput(<minecraft:stick> * 5)
    .setMinimumTier(0)
    .setMaximumTier(1)
    .setExtraOutputOne(<mekanism:sawdust>, 0.25)
    .setExtraOutputTwo(<minecraft:stick>, 0.5)
    .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:brick_block>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<minecraft:brick> * 2)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .setExtraOutputOne(<minecraft:brick>, 0.75)
  .setExtraOutputTwo(<minecraft:brick>, 0.5)
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<minecraft:nether_brick>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<minecraft:netherbrick> * 2)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .setExtraOutputOne(<minecraft:netherbrick>, 0.75)
  .setExtraOutputTwo(<minecraft:netherbrick>, 0.5)
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<embers:block_caminite_brick>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<embers:brick_caminite> * 2)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .setExtraOutputOne(<embers:brick_caminite>, 0.75)
  .setExtraOutputTwo(<embers:brick_caminite>, 0.5)
  .create();