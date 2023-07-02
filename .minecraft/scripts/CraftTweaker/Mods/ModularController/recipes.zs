#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:fmph_mk1_controller>,
    inputPattern(["ABA", "BCB", "ABA"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:powderMana>)
        .with("C", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 15, <ore:artisansDriver> : 13} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:fmph_mk2_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularmachinery:fmph_mk1_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 33, <ore:artisansDriver> : 28} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:fmph_mk3_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularmachinery:fmph_mk2_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 75, <ore:artisansDriver> : 49} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:fmph_mk4_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularmachinery:fmph_mk3_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 112, <ore:artisansDriver> : 96} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:fmph_mk5_controller>,
    inputPattern([" B ", "BAB", " B "])
        .with("A", <modularmachinery:fmph_mk4_controller>)
        .with("B", <ore:quartzMana>).get()
, {<ore:artisansSpanner> : 157, <ore:artisansDriver> : 134} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <modularmachinery:aura_collector_controller>, [
    [null, <naturesaura:infused_stone>],
    [<naturesaura:infused_stone>, <naturesaura:infused_iron>, <naturesaura:infused_stone>],
    [null, <naturesaura:infused_stone>]
], {<ore:artisansAthame> : 20, <ore:artisansGrimoire> : 25} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:fractionator_controller>, [
    [<immersiveengineering:metal_device1:1>, <modularmachinery:itemmodularium>, <immersiveengineering:metal_device1:1>],
    [<modularmachinery:itemmodularium>, <embers:block_dawnstone>, <modularmachinery:itemmodularium>],
    [<immersiveengineering:metal_device1:1>, <modularmachinery:itemmodularium>, <immersiveengineering:metal_device1:1>]
], {<ore:artisansDriver> : 51, <ore:artisansSpanner> : 52} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:big_embers_furnace_controller>, [
    [<ore:plateDawnstone>, <embers:plate_caminite>, <ore:plateDawnstone>],
    [<ore:plateSilver>, <modularmachinery:blockcasing:2>, <ore:plateSilver>],
    [<ore:plateDawnstone>, <embers:block_caminite_brick_slab_double>, <ore:plateDawnstone>]
], {<ore:artisansDriver> : 26, <ore:artisansSpanner> : 34} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:electronic_assembly_machine_controller>, [
    [<modularmachinery:itemmodularium>, <ore:dustRedstone>, <modularmachinery:itemmodularium>],
    [<pneumaticcraft:printed_circuit_board>, <immersiveengineering:metal_decoration0:4>, <pneumaticcraft:printed_circuit_board>],
    [<modularmachinery:itemmodularium>, <ore:dustRedstone>, <modularmachinery:itemmodularium>]
], {<ore:artisansDriver> : 24, <ore:artisansSpanner> : 26} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:ordinary_turbines_controller>, [
    [<ore:coilElectrum>, <ore:plateSteel>, <ore:coilElectrum>],
    [<ore:plateSteel>, <ore:blockRedstone>, <ore:plateSteel>],
    [<ore:coilElectrum>, <ore:plateSteel>, <ore:coilElectrum>]
], {<ore:artisansDriver> : 44, <ore:artisansSpanner> : 55} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:ordinary_thermal_boilers_controller>, [
    [<ore:plateSteel>, <modularmachinery:itemmodularium>, <ore:plateSteel>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockcasing:2>, <modularmachinery:itemmodularium>],
    [<ore:plateSteel>, <modularmachinery:itemmodularium>, <ore:plateSteel>]
], {<ore:artisansDriver> : 24, <ore:artisansSpanner> : 34} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:aura_perfusion_changer_controller>, [
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>],
    [<immersiveengineering:material:27>, <naturesaura:conversion_catalyst>, <immersiveengineering:material:27>],
    [<modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>, <modularmachinery:itemmodularium>]
], {<ore:artisansDriver> : 24, <ore:artisansSpanner> : 34} as int[IIngredient]);
