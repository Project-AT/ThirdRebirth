#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var recipeNames = [
    "quark:chest",
    "quark:custom_chest_1",
    "quark:custom_chest_3",
    "quark:custom_chest_5",
    "quark:custom_chest_7",
    "quark:custom_chest_9",
] as string[];

for str in recipeNames {
    recipes.removeByRecipeName(str);
}

RecipeUtils.recipeTweak(true, <quark:iron_rod>, [
    [null, <ore:stickIron>],
    [null, <ore:stickIron>],
    [null, <ore:ingotIron>]
]);
