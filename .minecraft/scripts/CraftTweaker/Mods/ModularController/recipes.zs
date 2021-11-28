#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

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

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:small_thermal_boilers_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularmachinery:blockcasing:2>)
        .with("B", <modularmachinery:itemmodularium>).get()
, {<ore:artisansSpanner> : 15, <ore:artisansDriver> : 13} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:exorcismer_controller>,
    inputPattern(["CBC", "BAB", "CBC"])
        .with("A", <botania:spellcloth>)
        .with("B", <botania:quartztypeelf>)
        .with("C", <modularmachinery:itemmodularium>).get()
, {<ore:artisansSpanner> : 21, <ore:artisansDriver> : 15} as int[IIngredient]);