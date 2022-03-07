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

RecipeUtils.recipeTweak(true, <quark:backpack>, [
    [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],
    [<simplyjetpacks:metaitem:4>, <ore:chest>, <simplyjetpacks:metaitem:4>],
    [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>]
]);

for i in 0 .. 15 {
    var recipeName = "quark:quilted_wool";
    if (i > 0) {
        recipeName = recipeName ~ "_" ~ i;
    }
    recipes.removeByRecipeName(recipeName);
    artisanUtils.RecipeTweakWithTools_("basic", false, <quark:quilted_wool>.definition.makeStack(i),
        [[<minecraft:wool>.definition.makeStack(i), <ore:string>]]
    , {<ore:artisansNeedle> : 2});
}