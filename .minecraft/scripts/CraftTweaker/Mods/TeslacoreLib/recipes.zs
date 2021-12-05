#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <teslacorelib:machine_case>,
	RecipeUtils.createCrossWithCore(<immersiveengineering:material:27>, <quark:polished_stone>, <ore:ingotSteel>)
, {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <teslacorelib:base_addon>, 
    inputPatternGet(["A A", " B", "A A"], {
        "A" : <pneumaticcraft:plastic:12>,
        "B" : <minecraft:redstone>
}));

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:tree_farm>,
	inputPatternGet(["ABA", "CDC", "EEE"], {
        "A" : <ore:treeSapling>,
        "B" : <thermalfoundation:material:657>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:electric_butcher>,
	inputPatternGet(["EBE", "EDE", "ECE"], {
        "B" : <minecraft:diamond_sword>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:crop_farm>,
	inputPatternGet(["ABA", "CDC", "EEE"], {
        "A" : <mysticalworld:assorted_seeds>,
        "B" : <minecraft:diamond_hoe>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:misc_farmer>,
	inputPatternGet(["EBE", "CDC", "ECE"], {
        "B" : <minecraft:diamond_hoe>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:animal_farm>,
	inputPatternGet(["EAE", "EDE", "ECE"], {
        "A" : <quark:chute>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:crop_cloner>,
	inputPatternGet(["EBE", "ADA", "ECE"], {
        "A" : <minecraft:dirt>,
        "B" : <thermalfoundation:tool.hoe_steel>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:sewer>,
	inputPatternGet(["AAA", "EDE", "ECE"], {
        "A" : <quark:grate>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:animal_releaser>,
	inputPatternGet(["EBE", "EDE", "ECE"], {
        "B" : <minecraft:dispenser>,
        "C" : <ore:gearSteel>,
        "D" : <teslacorelib:machine_case>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);