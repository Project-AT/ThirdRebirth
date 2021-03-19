#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils.recipeTweak;


recipeTweak(false, <naturesaura:bottle_two_the_rebottling>,[
    [<minecraft:glass_bottle>, <wizardry:wisdom_wood_planks>]
]);

recipes.removeByRecipeName("naturesaura:ancient_stick");
recipes.addShaped(<naturesaura:ancient_stick> * 2, [
    [null, <naturesaura:ancient_planks>],
    [null, <naturesaura:ancient_planks>]
]);