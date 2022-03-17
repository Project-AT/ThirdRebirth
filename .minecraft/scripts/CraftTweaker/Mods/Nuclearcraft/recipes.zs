#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <ore:ingotSiCSiCCMC>.firstItem, 
    RecipeUtils.createSurround(<embers:brick_caminite>, <ore:fiberSiliconCarbide>)
);

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:10>, [
    [<ore:itemChassiParts>, <ore:ingotTough>, <ore:itemChassiParts>],
    [<ore:ingotTough>, <contenttweaker:germanium_integrated_circuit_board>, <ore:ingotTough>],
    [<ore:itemChassiParts>, <ore:ingotTough>, <ore:itemChassiParts>]
], {<ore:artisansDriver> : 36, <ore:artisansSpanner> : 49});
