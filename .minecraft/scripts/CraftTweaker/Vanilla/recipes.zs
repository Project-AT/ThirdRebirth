#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

furnace.addRecipe(<ore:nuggetIron>.firstItem * 6, <ore:ingotRustyIron>);
furnace.addRecipe(<ore:nuggetGold>.firstItem * 3, <minecraft:golden_carrot>);

RecipeUtils.recipeTweak(true, <minecraft:crafting_table>, [
    [null, <ore:leather>, null],
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