#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("mage", true, <trutils:stick_thunder>, [
    [null, <ore:manaPearl>, <contenttweaker:rune1>],
    [null, <botania:manaresource:3>, <ore:manaPearl>],
    [<botania:manaresource:3>]
], {<ore:artisansAthame> : 10, <ore:artisansGrimoire> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <trutils:advance_stick_thunder>, [
    [null, <botania:manaresource:9>, <ore:ingotLead>],
    [<botania:manaresource:8>, <trutils:stick_thunder>, <botania:manaresource:8>],
    [<ore:dreamwoodTwig>, <botania:manaresource:9>]
], {<ore:artisansAthame> : 20, <ore:artisansGrimoire> : 20} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <trutils:crude_steel_feet>, 
    inputPatternGet(["   ", "A A", "A A"], {
        "A" : <ore:ingotCrudeSteel>
}));

RecipeUtils.recipeTweak(true, <trutils:crude_steel_head>, 
    inputPatternGet(["AAA", "A A"], {
        "A" : <ore:ingotCrudeSteel>
}));

RecipeUtils.recipeTweak(true, <trutils:crude_steel_chest>, 
    inputPatternGet(["A A", "AAA", "AAA"], {
        "A" : <ore:ingotCrudeSteel>
}));

RecipeUtils.recipeTweak(true, <trutils:crude_steel_legs>, 
    inputPatternGet(["AAA", "A A", "A A"], {
        "A" : <ore:ingotCrudeSteel>
}));

RecipeUtils.recipeTweak(true, <trutils:crude_steel_pickaxe>, 
    inputPatternGet(["AAA", " B ", " B "], {
        "A" : <ore:ingotCrudeSteel>,
        "B" : <ore:stickWood>
}));

RecipeUtils.recipeTweak(true, <trutils:crude_steel_axe>, 
    inputPatternGet(["AA ", "AB ", " B "], {
        "A" : <ore:ingotCrudeSteel>,
        "B" : <ore:stickWood>
}));

RecipeUtils.recipeTweak(true, <trutils:crude_steel_sword>, 
    inputPatternGet([" A ", " A ", " B "], {
        "A" : <ore:ingotCrudeSteel>,
        "B" : <ore:stickWood>
}));


RecipeUtils.recipeTweak(true, <trutils:crude_steel_hoe>, 
    inputPatternGet(["AA ", " B ", " B "], {
        "A" : <ore:ingotCrudeSteel>,
        "B" : <ore:stickWood>
}));

RecipeUtils.recipeTweak(true, <trutils:crude_steel_shovel>, 
    inputPatternGet([" A ", " B ", " B "], {
        "A" : <ore:ingotCrudeSteel>,
        "B" : <ore:stickWood>
}));

artisanUtils.RecipeTweakWithTools("engineer", true, <trutils:washing_machine>, [
    [<ore:plateSteel>, <ore:fanSteel>, <ore:plateSteel>],
    [<minecraft:bucket>, <ore:itemSimpleMachineChassi>, <minecraft:bucket>],
    [<ore:plateSteel>, <immersiveengineering:toolupgrade:7>, <ore:plateSteel>]
], {<ore:artisansSpanner> : 35, <ore:artisansDriver> : 40} as int[IIngredient]);