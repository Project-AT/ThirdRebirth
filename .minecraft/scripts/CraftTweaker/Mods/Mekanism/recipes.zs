#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <mekanism:basicblock:8>, [
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>],
    [<ore:plateSteel>, <ore:itemMachineChassi>, <ore:plateSteel>],
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>]
]);

recipes.replaceAllOccurences(<mekanism:energytablet>, <ore:mekTabletReplacement>);
RecipeUtils.recipeTweak(false, <mekanism:energytablet>, [[<contenttweaker:inactive_energytablet>]]);