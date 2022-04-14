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

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:exorcism_controller>,
    inputPattern(["CBC", "BAB", "CBC"])
        .with("A", <botania:spellcloth>.noReturn())
        .with("B", <ore:blockQuartzMana>)
        .with("C", <modularmachinery:itemmodularium>).get()
, {<ore:artisansSpanner> : 21, <ore:artisansDriver> : 15} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <modularcontroller:aura_collector_controller>, [
    [null, <naturesaura:infused_stone>],
    [<naturesaura:infused_stone>, <naturesaura:infused_iron>, <naturesaura:infused_stone>],
    [null, <naturesaura:infused_stone>]
], {<ore:artisansAthame> : 20, <ore:artisansGrimoire> : 25} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:fractionator_controller>, [
    [<immersiveengineering:metal_device1:1>, <modularmachinery:itemmodularium>, <immersiveengineering:metal_device1:1>],
    [<modularmachinery:itemmodularium>, <embers:block_dawnstone>, <modularmachinery:itemmodularium>],
    [<immersiveengineering:metal_device1:1>, <modularmachinery:itemmodularium>, <immersiveengineering:metal_device1:1>]
], {<ore:artisansDriver> : 51, <ore:artisansSpanner> : 52} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:big_embers_furnace_controller>, [
    [<ore:plateDawnstone>, <embers:plate_caminite>, <ore:plateDawnstone>],
    [<ore:plateSilver>, <modularmachinery:blockcasing:2>, <ore:plateSilver>],
    [<ore:plateDawnstone>, <embers:block_caminite_brick_slab_double>, <ore:plateDawnstone>]
], {<ore:artisansDriver> : 26, <ore:artisansSpanner> : 34} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:electronic_assembly_machine_controller>, [
    [<modularmachinery:itemmodularium>, <ore:dustRedstone>, <modularmachinery:itemmodularium>],
    [<pneumaticcraft:printed_circuit_board>, <immersiveengineering:metal_decoration0:4>, <pneumaticcraft:printed_circuit_board>],
    [<modularmachinery:itemmodularium>, <ore:dustRedstone>, <modularmachinery:itemmodularium>]
], {<ore:artisansDriver> : 24, <ore:artisansSpanner> : 26} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:refinery_controller>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <embers:mech_core>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
], {<ore:artisansDriver> : 53, <ore:artisansSpanner> : 74} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:ordinary_turbines_controller>, [
    [<ore:coilElectrum>, <ore:plateSteel>, <ore:coilElectrum>],
    [<ore:plateSteel>, <ore:blockRedstone>, <ore:plateSteel>],
    [<ore:coilElectrum>, <ore:plateSteel>, <ore:coilElectrum>]
], {<ore:artisansDriver> : 44, <ore:artisansSpanner> : 55} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:ordinary_thermal_boilers_controller>, [
    [<ore:plateSteel>, <modularmachinery:itemmodularium>, <ore:plateSteel>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockcasing:2>, <modularmachinery:itemmodularium>],
    [<ore:plateSteel>, <modularmachinery:itemmodularium>, <ore:plateSteel>]
], {<ore:artisansDriver> : 24, <ore:artisansSpanner> : 34} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularcontroller:aura_perfusion_changer_controller>, [
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>],
    [<immersiveengineering:material:27>, <naturesaura:conversion_catalyst>, <immersiveengineering:material:27>],
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]
], {<ore:artisansDriver> : 24, <ore:artisansSpanner> : 34} as int[IIngredient]);
