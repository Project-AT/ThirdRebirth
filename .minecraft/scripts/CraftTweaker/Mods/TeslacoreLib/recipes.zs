#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <teslacorelib:machine_case>,
	RecipeUtils.createCrossWithCore(<immersiveengineering:material:27>, <quark:polished_stone>, <ore:ingotSteel>)
, {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <teslacorelib:base_addon>, 
    inputPatternGet(["A A", " B", "A A"], {
        "B" : <pneumaticcraft:plastic:12>,
        "A" : <minecraft:redstone>
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

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:item_liquefier>,
	inputPatternGet(["EBE", "BDB", "ECE"], {
        "B" : <ore:plateInvar>,
        "C" : <immersiveengineering:metal_device1:1>,
        "D" : <teslacorelib:machine_case>,
        "E" : <ore:ingotSteel>
}), {<ore:artisansDriver> : 7, <ore:artisansSpanner> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:fluid_compound_producer>,
	inputPatternGet(["EAE", "BDB", "ECE"], {
        "B" : <ore:plateSteel>,
        "C" : <immersiveengineering:metal_decoration0:4>,
        "D" : <teslacorelib:machine_case>,
        "E" : <ore:ingotSteel>,
        "A" : <ore:fanSteel>
}), {<ore:artisansDriver> : 7, <ore:artisansSpanner> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:powered_kiln>,
	inputPatternGet(["EAE", "BDB", "ECE"], {
        "B" : <ore:plateSteel>,
        "C" : <modularmachinery:blockcasing:2>,
        "D" : <teslacorelib:machine_case>,
        "E" : <ore:ingotSteel>,
        "A" : <immersiveengineering:metal_decoration0>
}), {<ore:artisansDriver> : 7, <ore:artisansSpanner> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslathingies:fluid_solidifier>,
	inputPatternGet(["ECE", "BDB", "ECE"], {
        "B" : <ore:plateInvar>,
        "C" : <ore:obsidian>,
        "D" : <teslacorelib:machine_case>,
        "E" : <ore:ingotInvar>
}), {<ore:artisansDriver> : 7, <ore:artisansSpanner> : 3} as int[IIngredient]);