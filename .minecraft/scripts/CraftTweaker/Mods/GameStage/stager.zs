#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages;

val defaultStageModMap as string[][string] = {
    "two" : [
        "teslathingies", "pneumaticcraft", "extrautils2", "buildinggadgets"
    ],
    "three" : [
        "enderio"
    ],
};

val specialStageItemStackMap as IIngredient[][string] = {
    "two" : [
        <nuclearcraft:rock_crusher>, <contenttweaker:soul_extract>, <enderio:block_painted_pressure_plate:*>, <enderio:block_fused_quartz:*>,
        <enderio:block_fused_quartz:*>, <appliedenergistics2:view_cell>, <advancedrocketry:misc>,<enderio:item_material:14>, <enderio:item_material:15>,
        <enderio:block_reinforced_obsidian>, <enderio:item_material:64>, <enderio:item_material:10>, <enderio:item_material:11>, <enderio:item_material:12>,
        <enderio:item_material:9>, <enderio:item_capacitor_grainy>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_material:77>, <enderio:item_material:75>,
        <enderio:item_material:13>, <enderio:item_material:22>, <enderio:item_redstone_and_filter>, <enderio:item_redstone_or_filter>, <enderio:item_redstone_not_filter>,
        <gasconduits:item_gas_filter>, <enderio:item_extract_speed_downgrade>, <enderio:item_extract_speed_upgrade>, <enderio:item_soul_vial>, <enderio:item_redstone_timer_filter>,
        <enderio:item_redstone_sensor_filter>, <enderio:item_liquid_conduit>, <enderio:item_data_conduit>, <enderio:item_material:5>, <enderio:item_power_conduit:1>,
        <enderio:item_power_conduit>, <enderio:item_liquid_conduit:2>, <enderio:item_power_conduit:2>, <enderio:item_redstone_conduit>, <enderio:item_material:3>,
        <enderio:item_material:4>, <enderio:item_material:38>, <enderio:item_material:69>, <enderio:item_material>, <enderio:block_gauge>,<enderio:block_simple_crafter>,
        <enderio:block_simple_wired_charger>, <enderio:block_reservoir>, <enderio:block_simple_alloy_smelter>, <enderio:item_magnet>, <enderio:item_coord_selector>, <enderio:item_conduit_probe>,
        <enderio:item_conduit_facade:3>, <enderio:item_conduit_facade:2>, <enderio:item_conduit_facade>, <enderio:item_fluid_filter>, <enderio:item_enchantment_filter_normal>,
        <enderio:item_power_item_filter>, <enderio:item_mod_item_filter>, <enderio:item_basic_item_filter>, <enderio:item_redstone_counting_filter>, <enderio:item_redstone_toggle_filter>,
        <enderio:item_redstone_xnor_filter>, <enderio:item_redstone_xor_filter>, <enderio:item_redstone_nand_filter>, <enderio:item_redstone_nor_filter>, <enderio:item_alloy_ingot>,
        <enderio:item_alloy_nugget>, <enderio:item_alloy_nugget:2>, <enderio:item_alloy_nugget:7>, <enderio:item_alloy_nugget:1>, <enderio:item_alloy_ingot:1>, <enderio:block_alloy:1>,
        <enderio:block_alloy:5>, <enderio:block_alloy:4>, <enderio:block_alloy:7>, <enderio:item_alloy_ingot:7>, <enderio:item_alloy_ingot:2>, <enderio:block_alloy>, <enderio:item_alloy_nugget:4>,
        <enderio:item_conduit_facade:1>, <enderio:item_yeta_wrench>, <enderio:block_omni_reservoir>, <enderio:block_solar_panel>, <enderio:item_liquid_conduit:1>, <enderio:item_item_conduit>,
        <enderio:item_alloy_ingot:5>, <enderio:item_alloy_nugget:5>, <enderio:block_alloy:2>, <enderio:item_alloy_nugget:3>, <enderio:block_alloy:9>, <enderio:block_alloy:3>,
        <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:9>, <enderio:item_alloy_nugget:9>, <enderio:item_alloy_ingot:4>, <enderio:item_ender_food>, <ore:ingotManganese>
    ],
    "three" : [
        <mekanism:polyethene:*>
    ]
};

val exceptItemStacks as IIngredient[] = [
    <buildinggadgets:constructionpaste>, <buildinggadgets:constructionblock>, <buildinggadgets:constructionblockpowder>, 
    <buildinggadgets:constructionblock_dense>, <buildinggadgets:construction_chunk_dense>, <enderio:item_material:32>,
    <nuclearcraft:ingot:8>, <nuclearcraft:dust:8>, <wizardry:wisdom_sapling>, <wizardry:wisdom_wood_log>, <wizardry:wisdom_wood_planks>, 
    <wizardry:wisdom_wood_fence>, <wizardry:wisdom_wood_fence_gate>, <wizardry:wisdom_wood_door>, <wizardry:wisdom_wood_trapdoor>, 
    <wizardry:wisdom_wood_stairs>, <wizardry:wisdom_wood_slab>,<integrateddynamics:on_the_dynamics_of_integration>, 
    <integrateddynamics:crystalized_menril_block>, <integrateddynamics:menril_planks>, <integrateddynamics:menril_sapling>, 
    <integrateddynamics:menril_leaves>, <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log>, <integrateddynamics:menril_berries>, 
    <integrateddynamics:crystalized_menril_brick_stairs>, <integrateddynamics:menril_planks_stairs>, <integrateddynamics:crystalized_menril_chunk>, 
    <integrateddynamics:menril_torch>, <integrateddynamics:menril_torch>, <integrateddynamics:menril_door>, <integrateddynamics:crystalized_menril_brick>, 
    <integrateddynamics:crystalized_menril_block_stairs>, <botania:petalblock>, <botania:doubleflower1>, <botania:flower>, <botania:petal>, 
    <botania:specialflower>.withTag({type: "puredaisy"}), <botania:lexicon>, <botania:blacklotus:1>, <botania:blacklotus>, <embers:tinker_hammer>, 
    <embers:block_caminite_brick_slab>, <embers:brick_caminite>, <embers:blend_caminite>, <embers:plate_caminite>, <embers:stamp_bar>, <embers:stamp_flat>,
    <embers:stamp_plate>, <embers:stamp_gear>, <embers:stamp_flat_raw>, <embers:stamp_plate_raw>, <embers:stamp_gear_raw>, <embers:ancient_motive_core>, 
    <embers:archaic_circuit>, <embers:stairs_caminite_brick>, <embers:block_tank>, <embers:pipe>, <embers:pump>, <embers:fluid_gauge>, <embers:large_tank>, 
    <embers:plate_caminite_raw>, <embers:stamp_bar_raw>, <embers:archaic_brick>, <embers:block_caminite_brick>, <embers:wall_caminite_brick>, 
    <embers:fluid_dropper>, <embers:archaic_tile>, <embers:archaic_light>, <embers:sealed_planks>, <embers:wrapped_sealed_planks>, <embers:item_transfer>,
    <embers:vacuum>, <embers:breaker>, <embers:stone_valve>, <embers:fluid_transfer>, <embers:caminite_lever>, <embers:archaic_edge>, 
    <embers:archaic_bricks>, <embers:stone_edge>, <embers:item_pump>, <embers:bin>, <embers:item_pipe>, <embers:item_dropper>, <roots:pestle>, 
    <roots:mortar>, <roots:roots_guide>, <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"})
];

var modUsed as string[] = [
    "minecraft", "primal_tech", "elevatorid", "travelersbackpack", "quark", "tetra", "flopper", "artisanworktables", "immersiveengineering",
    "akashictome", "morphtool", "tombstone", "harvestcraft", "survivalist", "cookingforblockheads", "mysticalworld", "storagedrawers",
    "fluiddrawers", "netherex", "openglider", "waystones", "betteranimalsplus", "thermalfoundation", "biomesoplenty", "familiarfauna",
    "ironchest", "traverse"
];

for stage, modids in defaultStageModMap {
    for modid in modids {
        if (modUsed has modid) continue;
        for modItem in loadedMods[modid].items {
            if (isContains(modItem, exceptItemStacks) || isMapContains(modItem, specialStageItemStackMap)) continue;
            ItemStages.addItemStage(stage, modItem);
            modUsed += modid;
        }
    }
}

for mod in loadedMods {
    if (modUsed has mod.id) continue;

    recipes.removeByMod(mod.id);
    ItemStages.stageModItems("locked", mod.id);
    for item in loadedMods[mod.id].items {
        if (isContains(item, exceptItemStacks) || isMapContains(item, specialStageItemStackMap)) {
            ItemStages.removeItemStage(item);
            continue;
        }
        //item.addTooltip("§4" ~ game.localize("thirdrebirth.tooltip.item.ban"));
    }
}

function isContains(item as IItemStack, items as IIngredient[]) as bool {
    if (isNull(item) || isNull(items)) return false;
    for item_ in items {
        if (item_.matches(item)) return true;
    }
    return false;
}

function isMapContains(item as IItemStack, map as IIngredient[][string]) as bool {
    if (isNull(item) || isNull(map)) return false;
    for _, items in map {
        if (isContains(item, items)) return true;
    }
    return false;
}