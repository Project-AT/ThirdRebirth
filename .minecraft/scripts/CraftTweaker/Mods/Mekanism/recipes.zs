#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <mekanism:basicblock:8>, [
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>],
    [<ore:plateSteel>, <ore:itemMachineChassi>, <ore:plateSteel>],
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>]
]);
