#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:5>, 
    RecipeUtils.createSurround(<gugu-utils:emberinputhatch:4>, <immersiveengineering:wirecoil>)
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:2>, 
    RecipeUtils.createSurround(<gugu-utils:emberinputhatch:1>, <immersiveengineering:wirecoil>)
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:1>, 
    RecipeUtils.createSurround(<modularmachinery:blockcasing>, <ore:ingotCopper>)
);

RecipeUtils.recipeTweak(true, <gugu-utils:pressurehatch:1>, 
    RecipeUtils.createCrossWithCore(<immersiveengineering:metal_device0:6>, <ore:ingotIronCompressed>, <modularmachinery:itemmodularium>)
);

RecipeUtils.recipeTweak(true, <gugu-utils:sparkmanahatch>, 
    RecipeUtils.createCrossWithCore(<botania:pool:3> | <botania:pool>, <ore:ingotIronCompressed>, <ore:livingrock>)
);

RecipeUtils.recipeTweak(true, <gugu-utils:pressurehatch>, 
    RecipeUtils.createCrossWithCore(<modularmachinery:blockcasing>, <ore:ingotIronCompressed>, <modularmachinery:itemmodularium>)
);

RecipeUtils.recipeTweak(true, <gugu-utils:aurainputhatch>, 
    inputPattern([" I ", "ICI", " I "])
        .with("I", <naturesaura:infused_iron>)
        .with("C", <modularmachinery:blockcasing>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:1>, 
    inputPattern([" C ", "CIC", " C "])
        .with("C", <ore:ingotCopper>)
        .with("I", <gugu-utils:emberinputhatch>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch>, 
    inputPattern([" C ", "CIC", " C "])
        .with("C", <ore:ingotCopper>)
        .with("I", <modularmachinery:blockcasing>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:4>, 
    inputPattern(["L L", " C ", "L L"])
        .with("L", <ore:ingotDawnstone>)
        .with("C", <gugu-utils:emberinputhatch:1>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:5>, 
    inputPattern(["L L", " C ", "L L"])
        .with("L", <ore:ingotDawnstone>)
        .with("C", <gugu-utils:emberinputhatch:4>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:6>, 
    inputPattern(["L L", " C ", "L L"])
        .with("L", <ore:ingotDawnstone>)
        .with("C", <gugu-utils:emberinputhatch:3>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:6>, 
    inputPattern([" E ", "GCG", " E "])
        .with("E", <ore:coilCopper>)
        .with("G", <ore:ingotGold>)
        .with("C", <gugu-utils:emberinputhatch:5>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:emberinputhatch:3>, 
    inputPattern([" E ", "GCG", " E "])
        .with("E", <ore:coilCopper>)
        .with("G", <ore:ingotGold>)
        .with("C", <gugu-utils:emberinputhatch:2>).get()
);

RecipeUtils.recipeTweak(true, <gugu-utils:sparkmanahatch:1>, 
    inputPattern(["MFM", "HLH", "MHM"])
        .with("M", <modularmachinery:itemmodularium>)
        .with("F", <botania:spreader> | <botania:spreader:2>)
        .with("H", <ore:livingrock>)
        .with("L", <botania:pool:3> | <botania:pool>).get()
);

artisanUtils.RecipeTweakWithTools("engineer", true, <gugu-utils:environmenthatch>, [
    [null, <psi:exosuit_sensor>],
    [<psi:exosuit_sensor:1>, <modularmachinery:blockcasing>, <psi:exosuit_sensor:3>],
    [null, <psi:exosuit_sensor:2>]
], {<ore:artisansHammer> : 10, <ore:artisansSpanner> : 5});


RecipeUtils.recipeTweak(true, <gugu-utils:environmenthatch>, [
    [null, <contenttweaker:sensitive_element>],
    [<contenttweaker:sensitive_element>, <modularmachinery:blockcasing>, <contenttweaker:sensitive_element>],
    [null,<contenttweaker:sensitive_element>]
]);
