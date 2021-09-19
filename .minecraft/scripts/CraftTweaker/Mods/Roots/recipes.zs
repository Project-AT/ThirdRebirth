#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <roots:fire_starter>,[
    [null, <primal_tech:fire_sticks>],
    [null, <primal_tech:fire_sticks>]
]);

artisanUtils.RecipeTweakWithTools("basic", true, <roots:runic_dust> * 5, [
    [null, <ore:dustCharcoal>, <ore:dustWheat>],
    [<ore:stone>, <roots:moonglow_leaf>, <minecraft:dye:15>]
], {<ore:artisansMortar> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", false, <roots:flour>, [
    [<ore:cropPotato> | <ore:cropWheat>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", false, <roots:petals>, [
    [<ore:allFlowers>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", false, <roots:petals> * 2, [
    [<ore:allTallFlowers>]
], {<ore:artisansMortar> : 2} as int[IIngredient]);