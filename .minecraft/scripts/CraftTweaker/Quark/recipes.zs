#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var recipeName = [
    "quark:chest",
    "quark:custom_chest_1",
    "quark:custom_chest_3",
    "quark:custom_chest_5",
    "quark:custom_chest_7",
    "quark:custom_chest_9",
] as string[];

for str in recipeName {
    recipes.removeByRecipeName(str);
}