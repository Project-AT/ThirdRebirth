#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(false, <mysticalworld:gold_dust_tiny> * 9, [[<ore:dustGold>]]);
RecipeUtils.recipeTweak(false, <ore:dustGold>.firstItem, RecipeUtils.createFull3(<mysticalworld:gold_dust_tiny>));