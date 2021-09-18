#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <ore:ingotSiCSiCCMC>.firstItem, 
    RecipeUtils.createSurround(<embers:brick_caminite>, <ore:fiberSiliconCarbide>)
);