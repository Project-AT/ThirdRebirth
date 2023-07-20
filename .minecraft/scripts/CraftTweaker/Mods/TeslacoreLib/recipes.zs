#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.addShaped(<teslathingies:crop_farm>,
[[<mysticalworld:assorted_seeds>, <teslathingies:misc_farmer>, <mysticalworld:assorted_seeds>]]);

artisanUtils.RecipeTweakWithTools("engineer", true, <teslacorelib:machine_case>,
    RecipeUtils.createCrossWithCore(<immersiveengineering:material:27>, <ore:stonePolished>, <ore:ingotSteel>)
, {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 5} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <teslacorelib:base_addon>, 
    inputPatternGet(["A A", " B", "A A"], {
        "B" : <pneumaticcraft:plastic:12>,
        "A" : <minecraft:redstone>
}));

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:listAllsugar>, null],
    [<ore:listAllsugar>, <contenttweaker:research_point_lv1>, <ore:listAllsugar>],
    [null, <ore:listAllsugar>, null]])
  .setFluid(<liquid:lubricant> * 200)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addTool(<ore:artisansDriver>, 15)
  .addTool(<ore:artisansSolderer>, 15)
  .addOutput(<pneumaticcraft:speed_upgrade>)
  .create();

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
        "C" : <minecraft:furnace>,
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

artisanUtils.RecipeTweakWithTools("engineer", true, <teslacorelib:speed_tier1>, [
    [<ore:gearInvar>, <contenttweaker:research_point_lv1>, <ore:gearElectrum>],
    [<contenttweaker:research_point_lv1>, <teslacorelib:base_addon>, <contenttweaker:research_point_lv1>],
    [<ore:gearElectrum>, <contenttweaker:research_point_lv1>, <ore:gearInvar>]
], {<ore:artisansSolderer> : 20, <ore:artisansDriver> : 20});

artisanUtils.RecipeTweakWithTools("engineer", true, <teslacorelib:energy_tier1>, [
    [null, <ore:gearElectrum>, null],
    [<contenttweaker:research_point_lv1>, <teslacorelib:base_addon>, <contenttweaker:research_point_lv1>],
    [null, <ore:gearElectrum>, null]
], {<ore:artisansSolderer> : 20, <ore:artisansDriver> : 20});

artisanUtils.RecipeTweakWithTools("engineer", false, <teslathingies:addon_range_tier1>, [
    [<teslacorelib:base_addon>, <contenttweaker:research_point_lv1>, <ore:gearElectrum>]
], {<ore:artisansSolderer> : 15, <ore:artisansDriver> : 15  });