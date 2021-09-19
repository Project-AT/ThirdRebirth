#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(false, <naturesaura:bottle_two_the_rebottling>, [
    [<minecraft:glass_bottle>, <wizardry:wisdom_wood_planks>]
]);

RecipeUtils.recipeTweak(true, <naturesaura:ancient_stick> * 2, [
    [<naturesaura:ancient_planks>],
    [<naturesaura:ancient_planks>]
]);

artisanUtils.RecipeTweak("basic", false, <naturesaura:gold_powder> * 8, [
    [<mysticalworld:gold_dust_tiny>, <naturesaura:gold_leaf>, <naturesaura:gold_leaf>, 
    <naturesaura:gold_leaf>, <naturesaura:gold_leaf>]
]);