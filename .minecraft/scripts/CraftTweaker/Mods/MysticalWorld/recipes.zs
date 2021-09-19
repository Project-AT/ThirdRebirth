#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(false, <mysticalworld:gold_dust_tiny> * 9, [[<ore:dustGold>]]);
RecipeUtils.recipeTweak(false, <ore:dustGold>.firstItem, RecipeUtils.createFull3(<mysticalworld:gold_dust_tiny>));

artisanUtils.RecipeTweakWithTools_("basic", false, <mysticalworld:silk_thread>, [
    [<mysticalworld:silk_cocoon>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);