#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(false, <mysticalworld:pearl_button>, [[<mysticalworld:pearl>]]);
RecipeUtils.recipeTweak(false, <mysticalworld:gold_dust_tiny> * 9, [[<ore:dustGold>]]);
RecipeUtils.recipeTweak(true, <ore:dustGold>.firstItem, RecipeUtils.createFull3(<mysticalworld:gold_dust_tiny>));

artisanUtils.RecipeTweakWithTools_("basic", false, <mysticalworld:silk_thread> * 5, [
    [<mysticalworld:silk_cocoon>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <mysticalworld:pearleporter>, [
    [null, <ore:ingotGold>, <mysticalworld:pearl>],
    [null, <ore:bone>, <ore:ingotGold>],
    [<ore:nuggetGold>]
], {<ore:artisansAthame> : 1} as int[IIngredient]);