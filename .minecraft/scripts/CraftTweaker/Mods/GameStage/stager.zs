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
        <enderio:block_fused_quartz:*>, <ore:aeViewCellReplacement>, <advancedrocketry:misc>,<enderio:item_material:14>, <enderio:item_material:15>,
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
        <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:9>, <enderio:item_alloy_nugget:9>, <enderio:item_alloy_ingot:4>, <enderio:item_ender_food>, <ore:ingotManganese>, 
        <buildinggadgets:buildingtool>, <buildinggadgets:exchangertool>, <buildinggadgets:copypastetool>, <trutils:washing_machine>,
        <enderio:block_self_resetting_lever5>, <enderio:block_self_resetting_lever10>, <enderio:block_self_resetting_lever30>, <enderio:block_self_resetting_lever60>, <enderio:block_self_resetting_lever300>, 
        <enderio:block_self_resetting_lever5i>, <enderio:block_self_resetting_lever10i>, <enderio:block_self_resetting_lever30i>, <enderio:block_self_resetting_lever60i>, <enderio:block_self_resetting_lever300i>, 
        <enderio:block_painted_pressure_plate:1>, <enderio:block_painted_pressure_plate:3>, <enderio:block_painted_pressure_plate:5>,
        <enderio:block_painted_pressure_plate:7>, <enderio:block_painted_pressure_plate:8>, <enderio:block_painted_pressure_plate:9>,
        <enderio:block_painted_pressure_plate:10>, <enderio:block_painted_pressure_plate:11>, <enderio:block_painted_pressure_plate:12>,
        <enderio:block_painted_pressure_plate:13>, <enderio:block_fused_quartz:15>, <enderio:block_fused_glass:15>,
        <trutils:washing_machine>, <ore:dustBedrock>, <ore:itemPulsatingPowder>, <ore:itemVibrantPowder>, <ore:itemPulsatingCrystal>, <ore:itemVibrantCrystal>, <ore:itemRemoteAwarenessUpgrade>, 
        <enderio:item_capacitor_grainy>, <ore:paperBlack>, <ore:gearVibrant>, <ore:itemBinderComposite>, <ore:itemPlatePhotovoltaic>, <ore:itemConduitBinder>, <ore:itemPowderPhotovoltaic>, 
        <ore:gearIronInfinity>, <ore:itemSimpleMachineChassi>, <ore:itemSimpleChassiParts>, <enderio:block_reinforced_obsidian>, <ore:gearEnergized>, 
        <ore:dustSoularium>, <ore:nuggetRedstoneAlloy>, <ore:ingotRedstoneAlloy>, <ore:blockRedstoneAlloy>, <ore:nuggetConstructionAlloy>, <ore:ingotConstructionAlloy>, 
        <ore:blockConstructionAlloy>, <ore:nuggetEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:blockEnergeticAlloy>, <ore:blockConductiveIron>, <ore:nuggetVibrantAlloy>, 
        <ore:ingotVibrantAlloy>, <ore:blockVibrantAlloy>, <ore:nuggetElectricalSteel>, <ore:ingotElectricalSteel>, <ore:blockElectricalSteel>, <ore:nuggetSoularium>, 
        <ore:ingotSoularium>, <ore:blockSoularium>, <ore:nuggetPulsatingIron>, <ore:ingotPulsatingIron>, <ore:blockPulsatingIron>, <ore:nuggetConductiveIron>, <ore:ingotConductiveIron>, 
        <forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "plastic", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}), 
        <forge:bucketfilled>.withTag({FluidName: "lpg", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "fuel", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "kerosene", Amount: 1000}), 
        <forge:bucketfilled>.withTag({FluidName: "diesel", Amount: 1000}), <forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}),
        
    ],
    "three" : [
        <mekanism:polyethene>, <mekanism:polyethene:1>, <mekanism:polyethene:2>, <mekanism:polyethene:3>, <contenttweaker:wine_stone>, <contenttweaker:tartaric_acid>, 
        <contenttweaker:germanium_integrated_circuit_board>, <contenttweaker:ge_transistor>, <contenttweaker:ge_wafer>, <ore:blockGermanium>, <ore:ingotGermanium>, 
        <ore:plateGermanium>, <ore:nuggetGermanium>, <ore:dustGermanium>, <ore:crystalGermanium>, <liquid:germanium_slurry>, <ore:gemEnderBiotite>, <forge:bucketfilled>.withTag({FluidName: "germanium_slurry", Amount: 1000}),

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
    <trutils:crude_steel_feet>, <trutils:crude_steel_head>, <trutils:crude_steel_legs>, <trutils:crude_steel_chest>, <trutils:crude_steel_pickaxe>, 
    <trutils:crude_steel_axe>, <trutils:crude_steel_shovel>, <trutils:crude_steel_hoe>, <trutils:crude_steel_sword>, <trutils:flint_hoe>, 
    <contenttweaker:four_leaf_clover>, <contenttweaker:straw_rope>, <contenttweaker:end_portal_frame_debris>, <contenttweaker:insulating_substrate>, 
    <contenttweaker:blast_furnace_fuel>, <contenttweaker:dust_crude_steel>, <contenttweaker:dictionary_paper>, <contenttweaker:refractory_brick>, 
    <contenttweaker:refractory_clay_ball>, <contenttweaker:rusty_iron_ingot>, <contenttweaker:research_icon>, <contenttweaker:glazed_refractory_brick>, <trutils:rusty_iron>, 
    <contenttweaker:glaze>, <contenttweaker:thirdrebirth>, <contenttweaker:stamp_nugget>, <contenttweaker:raw_stamp_nugget>, <contenttweaker:villager_language_dictionary>, 
    <contenttweaker:ironcoal_ore>, <contenttweaker:udorealuminum>, <contenttweaker:udorenickel>, <contenttweaker:udoreuranium>, <contenttweaker:udoreboron>, <contenttweaker:udorelithium>, 
    <contenttweaker:udoremagnesium>, <contenttweaker:udorethorium>, <contenttweaker:endorelithium>, <contenttweaker:endorerutile>, <wizardry:book>, <appliedenergistics2:grindstone>, 
    <appliedenergistics2:crank>, <contenttweaker:crude_silicon_dust>, <enderio:item_material>, <extrautils2:pipe>, <extrautils2:compressedcobblestone:*>, 
    <extrautils2:compressedsand:*>, <extrautils2:compressednetherrack:*>, <ore:blockRustyIron>, <contenttweaker:mana_petals>, <roots:terra_moss>, <ore:rootsBark>, 
    <extrautils2:compressedcobblestone:*>, <extrautils2:compressedgravel:*>, <ore:blockRustyIron>, <roots:petals>, <ore:dustWheat>, <ore:eye>, <ore:knife>, 
    <extrautils2:compresseddirt:*>, <extrautils2:trashcan>, <extrautils2:trashcanfluid>, <extrautils2:trashcanenergy>, <ore:wildroot>, <roots:terra_spores>, 
    <extrautils2:decorativeglass:*>, <extrautils2:spike_wood>, <extrautils2:drum>, <extrautils2:drum:*>, <extrautils2:spike_stone>, <roots:fire_starter>, 
    <extrautils2:drum>, <extrautils2:largishchest>, <extrautils2:spike_diamond>, <extrautils2:spike_gold>, <extrautils2:minichest>, <extrautils2:redstoneclock>, <extrautils2:redstonelantern>, <extrautils2:spike_iron>, 
    <extrautils2:decorativesolid>, <extrautils2:decorativesolid>, <extrautils2:decorativesolid>, <extrautils2:decorativesolid:*>, <extrautils2:decorativesolid>, 
    <extrautils2:grocket:*>, <extrautils2:ingredients:*>, <extrautils2:ingredients>, <extrautils2:wrench>, <extrautils2:wateringcan:0>, <roots:wildroot_stew>, 
    <extrautils2:contract>, <extrautils2:endershard>, <extrautils2:wateringcan:*>, <extrautils2:filterfluids>, <extrautils2:trowel>, <extrautils2:glasscutter>, <extrautils2:sickle_stone>, <extrautils2:sickle_iron>, 
    <extrautils2:sickle_diamond>, <extrautils2:sickle_gold>, <extrautils2:filter>, <trutils:rusty_iron>, <ore:fanSteel>, 
    <ore:ingotPureIron>, <ore:nuggetPureIron>, <ore:blockPureIron>, <ore:platePureIron>, <ore:gearPureIron>, <ore:dustPureIron>, <ore:rodPureIron>, <ore:stickPureIron>, 
    <roots:mortar>, <roots:roots_guide>, <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"})
];

var modUsed as string[] = [
    "minecraft", "primal_tech", "elevatorid", "travelersbackpack", "quark", "tetra", "flopper", "artisanworktables", "immersiveengineering",
    "akashictome", "morphtool", "tombstone", "harvestcraft", "survivalist", "cookingforblockheads", "mysticalworld", "storagedrawers",
    "fluiddrawers", "netherex", "openglider", "waystones", "betteranimalsplus", "thermalfoundation", "biomesoplenty", "familiarfauna",
    "ironchest", "traverse", "compactdrawers", "bountifulbaubles", "pouchofunknown", "The One Probe",
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

    //recipes.removeByMod(mod.id);
    ItemStages.stageModItems("locked", mod.id);
    for item in loadedMods[mod.id].items {
        if (isContains(item, exceptItemStacks) || isMapContains(item, specialStageItemStackMap)) {
            ItemStages.removeItemStage(item);
            continue;
        }
        //item.addTooltip("§4" ~ game.localize("thirdrebirth.tooltip.item.ban"));
    }
}

for stage, items in specialStageItemStackMap {
    for item in items {
        ItemStages.addItemStage(stage, item);
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