#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <appliedenergistics2:view_cell>, 
    RecipeUtils.createCrossWithCore(<ore:dustGlowstone>, <ore:ingotElectricalSteel> | <ore:ingotPureIron>, <ore:fusedQuartz>)
);

RecipeUtils.recipeTweak(true, <advancedrocketry:misc>, 
    RecipeUtils.createCrossWithCore(<appliedenergistics2:view_cell>, <ore:plasticBlack>, <ore:fusedQuartz>)
);