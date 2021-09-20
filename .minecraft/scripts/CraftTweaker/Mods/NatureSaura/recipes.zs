#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

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

artisanUtils.RecipeTweakWithAll("mage", true, <naturesaura:wood_stand>, [
    [null, <naturesaura:gold_leaf>, null],
    [<roots:cloud_berry>,  <roots:wildwood_log>,   <roots:stalicripe>],
    [<roots:infernal_bulb>,<roots:wildwood_log>,   <roots:dewgonia>]
], <liquid:mana_fluid> * 1000, {<ore:artisansAthame> : 1} as int[IIngredient]);