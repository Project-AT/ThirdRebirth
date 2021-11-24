#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(false, <modularmachinery:blockcasing:5>, [
    [<modularmachinery:blockcasing>,<ore:circuitBasic>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry:1>, [
    [<modularmachinery:blockcasing>,<ore:circuitElite>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry:2>, [
    [<modularmachinery:blockcasing>,<ore:circuitUltimate>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcasing:5>, [
    [<contenttweaker:germanium_integrated_circuit_board>,<modularmachinery:blockcasing>,<contenttweaker:germanium_integrated_circuit_board>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry>, [
    [<modularmachinery:blockcasing>,<ore:circuitAdvanced>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:3>, [
    [null,<ore:gearTough>],
    [<ore:gearTough>, <modularmachinery:blockcasing>, <ore:gearTough>],
    [null, <ore:gearTough>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:1> * 2, [
    [<modularmachinery:itemmodularium>, <ore:fenceSteel>, <modularmachinery:itemmodularium>],
    [<ore:fenceSteel>, null, <ore:fenceSteel>],
    [<modularmachinery:itemmodularium>, <ore:fenceSteel>, <modularmachinery:itemmodularium>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:4> * 4, [
    [<ore:ingotTough>, <modularmachinery:blockcasing>, <ore:ingotTough>],
    [<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
    [<ore:ingotTough>, <modularmachinery:blockcasing>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:2>, [
    [<modularmachinery:itemmodularium>, <ore:rodSteel>, <modularmachinery:itemmodularium>],
    [<ore:rodSteel>, null, <ore:rodSteel>],
    [<modularmachinery:itemmodularium>, <ore:rodSteel>, <modularmachinery:itemmodularium>]
]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk1"}),
    inputPattern(["   ", "ABC", "LLL"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:ingotManasteel>)
        .with("C", <ore:quartzMana>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 13, <ore:artisansTSquare> : 12} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk2"}),
    inputPattern(["   ", "   ", "AB "])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk1"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 26, <ore:artisansTSquare> : 24} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk3"}),
    inputPattern(["   ", "   ", "AB "])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk2"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 39, <ore:artisansTSquare> : 35} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk4"}),
    inputPattern(["   ", "   ", "AB "])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk3"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 78, <ore:artisansTSquare> : 69} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk5"}),
    inputPattern(["   ", "   ", "AB "])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk4"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 143, <ore:artisansTSquare> : 121} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:small_turbine"}),
    inputPattern([" D ", "ABC", "LLL"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:plateIron>)
        .with("C", <ore:ingotBronze>)
        .with("D", <ore:dustRedstone>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 11, <ore:artisansTSquare> : 13} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:small_thermal_boilers"}),
    inputPattern(["   ", "ABC", "LLL"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:plateIron>)
        .with("C", <ore:coal> | <ore:charcoal>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 12, <ore:artisansTSquare> : 12} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:blockbunker>,
    inputPattern(["ABA", "C C", "ACA"])
        .with("A", <ore:rodSteel>)
        .with("B", <minecraft:iron_trapdoor>)
        .with("C", <modularmachinery:itemmodularium>).get()
, {<ore:artisansSpanner> : 14} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:fmph_mk1_controller>,
    inputPattern(["ABA", "BCB", "ABA"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:powderMana>)
        .with("C", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 15, <ore:artisansDriver> : 13} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:fmph_mk2_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularcontroller:fmph_mk1_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 33, <ore:artisansDriver> : 28} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:fmph_mk3_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularcontroller:fmph_mk2_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 75, <ore:artisansDriver> : 49} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:fmph_mk4_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularcontroller:fmph_mk3_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 112, <ore:artisansDriver> : 96} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:fmph_mk5_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularcontroller:fmph_mk4_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 157, <ore:artisansDriver> : 134} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:small_turbine_controller>,
    inputPattern(["CBC", "BAB", "CBC"])
        .with("A", <ore:blockRedstone>)
        .with("B", <ore:plateSteel>)
        .with("C", <modularmachinery:itemmodularium>).get()
, {<ore:artisansSpanner> : 18, <ore:artisansDriver> : 22} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:small_turbine_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularmachinery:blockcasing:2>)
        .with("B", <modularmachinery:itemmodularium>).get()
, {<ore:artisansSpanner> : 15, <ore:artisansDriver> : 13} as int[IIngredient]);