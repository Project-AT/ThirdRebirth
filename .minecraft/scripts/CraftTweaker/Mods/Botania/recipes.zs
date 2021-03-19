#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils.recipeTweak;


/** Recipes for Crafting Table */
recipeTweak(true, <botania:altar>, [
        [<ore:slabCobblestone>, <wizardry:nacre_pearl>.withTag({purity_override: 1.0 as float}), <ore:slabCobblestone>],
        [null, <minecraft:cobblestone>, null],
        [<minecraft:cobblestone>, <ore:livingrock>, <minecraft:cobblestone>]
]);