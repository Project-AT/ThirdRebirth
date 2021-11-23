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

artisanUtils.RecipeTweakWithTools("basic", false, <naturesaura:gold_powder> * 8, [
    [<mysticalworld:gold_dust_tiny>, <naturesaura:gold_leaf>, <naturesaura:gold_leaf>, 
    <naturesaura:gold_leaf>, <naturesaura:gold_leaf>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <naturesaura:offering_table>, [
    [<naturesaura:infused_stone>, <naturesaura:infused_iron>, <naturesaura:infused_stone>],
    [<naturesaura:token_sorrow>, <wizardry:nacre_block>, <naturesaura:token_fear>],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
], {<ore:artisansAthame> : 10,  <ore:artisansGrimoire> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithAll("mage", true, <naturesaura:wood_stand>, [
    [null, <naturesaura:gold_leaf>, null],
    [<roots:cloud_berry>, <roots:wildwood_log>, <roots:stalicripe>],
    [<roots:infernal_bulb>, <roots:wildwood_log>, <roots:dewgonia>]
], <liquid:mana_fluid> * 1000, {<ore:artisansAthame> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <naturesaura:offering_table>, [
    [<naturesaura:infused_stone>, <naturesaura:sky_ingot>, <naturesaura:infused_stone>],
    [<naturesaura:token_sorrow>,  <wizardry:nacre_block>, <naturesaura:token_fear>],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
], {<ore:artisansGrimoire> : 30, <ore:artisansAthame> : 30} as int[IIngredient]);