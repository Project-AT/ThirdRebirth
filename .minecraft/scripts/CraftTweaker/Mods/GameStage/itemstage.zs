#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages;

//有阶段物品
val specialStageItemStackMap as IIngredient[][string] = {
    "two" : [
        <nuclearcraft:rock_crusher>, <contenttweaker:soul_extract>, <enderio:block_painted_pressure_plate:*>, <enderio:block_fused_quartz:*>,
        <ore:aeViewCellReplacement>, <advancedrocketry:misc>,<enderio:item_material:14>, <enderio:item_material:15>,
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
        <buildinggadgets:buildingtool>, <buildinggadgets:exchangertool>, <buildinggadgets:copypastetool>, <forge:bucketfilled>.withTag({FluidName: "infused_slag_slurry", Amount: 1000}), 
        <enderio:block_self_resetting_lever5>, <enderio:block_self_resetting_lever10>, <enderio:block_self_resetting_lever30>, <enderio:block_self_resetting_lever60>, <enderio:block_self_resetting_lever300>, 
        <enderio:block_self_resetting_lever5i>, <enderio:block_self_resetting_lever10i>, <enderio:block_self_resetting_lever30i>, <enderio:block_self_resetting_lever60i>, <enderio:block_self_resetting_lever300i>, 
        <enderio:block_fused_glass:*>, <trutils:washing_machine>, <ore:dustBedrock>, <ore:itemPulsatingPowder>, <forge:bucketfilled>.withTag({FluidName: "manganese_dioxide", Amount: 1000}), 
        <ore:itemVibrantPowder>, <ore:itemPulsatingCrystal>, <ore:itemVibrantCrystal>, <ore:itemRemoteAwarenessUpgrade>, <forge:bucketfilled>.withTag({FluidName: "manganese", Amount: 1000}), 
        <ore:paperBlack>, <ore:gearVibrant>, <ore:itemBinderComposite>, <ore:itemPlatePhotovoltaic>, <ore:itemConduitBinder>, <ore:itemPowderPhotovoltaic>, <ore:ingotManganeseDioxide>, 
        <ore:gearIronInfinity>, <ore:itemSimpleMachineChassi>, <ore:itemSimpleChassiParts>, <ore:gearEnergized>, <ore:ingotManganeseOxide>, <ore:dustManganeseDioxide>, <ore:dustManganeseOxide>, 
        <ore:dustSoularium>, <ore:nuggetRedstoneAlloy>, <ore:ingotRedstoneAlloy>, <ore:blockRedstoneAlloy>, <ore:nuggetConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:blockManganese>, 
        <ore:blockConstructionAlloy>, <ore:nuggetEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:blockEnergeticAlloy>, <ore:blockConductiveIron>, <ore:nuggetVibrantAlloy>, 
        <ore:ingotVibrantAlloy>, <ore:blockVibrantAlloy>, <ore:nuggetElectricalSteel>, <ore:ingotElectricalSteel>, <ore:blockElectricalSteel>, <ore:nuggetSoularium>, <ore:dustManganese>, 
        <ore:ingotSoularium>, <ore:blockSoularium>, <ore:nuggetPulsatingIron>, <ore:ingotPulsatingIron>, <ore:blockPulsatingIron>, <ore:nuggetConductiveIron>, <ore:ingotConductiveIron>, 
        <ore:dustRhodochrosite>, <ore:gemRhodochrosite>, <ore:allOreCleanCrushedInfuseds>, <enderio:block_tank>, 
        <ore:enlightenedFusedQuartz>, <ore:darkFusedQuartz>, <ore:holyFusedQuartz>, <ore:holyEnlightenedFusedQuartz>, <ore:holyDarkFusedQuartz>, <ore:unholyFusedQuartz>, <ore:unholyEnlightenedFusedQuartz>, <ore:pastureFusedQuartz>, <ore:pastureEnlightenedFusedQuartz>, 
        <ore:pastureDarkFusedQuartz>, <ore:notHolyFusedQuartz>, <ore:notHolyEnlightenedFusedQuartz>, <ore:notHolyDarkFusedQuartz>, <ore:notUnholyFusedQuartz>, <ore:notUnholyEnlightenedFusedQuartz>, <ore:notUnholyDarkFusedQuartz>, 
        <ore:notPastureFusedQuartz>, <ore:notPastureEnlightenedFusedQuartz>, <ore:notPastureDarkFusedQuartz>,
        <ore:enlightenedFusedGlass>, <ore:darkFusedGlass>, <ore:holyFusedGlass>, <ore:holyEnlightenedFusedGlass>, <ore:holyDarkFusedGlass>, <ore:unholyFusedGlass>, <ore:unholyEnlightenedFusedGlass>, <ore:pastureFusedGlass>, <ore:pastureEnlightenedFusedGlass>, 
        <ore:pastureDarkFusedGlass>, <ore:notHolyFusedGlass>, <ore:notHolyEnlightenedFusedGlass>, <ore:notHolyDarkFusedGlass>, <ore:notUnholyFusedGlass>, <ore:notUnholyEnlightenedFusedGlass>, <ore:notUnholyDarkFusedGlass>, 
        <ore:notPastureFusedGlass>, <ore:notPastureEnlightenedFusedGlass>, <ore:notPastureDarkFusedGlass>,<enderio:item_xp_transfer>, <enderio:block_vacuum_chest>, <enderio:block_xp_vacuum>,
    ],
    "three" : [
        <mekanism:polyethene:0>, <mekanism:polyethene:1>, <mekanism:polyethene:2>, <mekanism:polyethene:3>, <contenttweaker:wine_stone>, <contenttweaker:tartaric_acid>, 
        <contenttweaker:germanium_integrated_circuit_board>, <contenttweaker:ge_transistor>, <contenttweaker:ge_wafer>, <ore:blockGermanium>, <ore:ingotGermanium>, 
        <ore:plateGermanium>, <ore:nuggetGermanium>, <ore:dustGermanium>, <ore:crystalGermanium>, <ore:gemEnderBiotite>, <forge:bucketfilled>.withTag({FluidName: "hdpe", Amount: 1000}), 

    ],
    "root" : [
        <trutils:magnetic_attraction>, <ore:redstoneRoot>
    ],
    "botania" : [
        <gugu-utils:lenstransform>.withTag({}), <contenttweaker:teleport_rune>, <contenttweaker:rune>, <contenttweaker:rune1>, <trutils:advance_stick_thunder>, <trutils:stick_thunder>,
        <ore:artisansToolManasteel>, <contenttweaker:mana_crystal>,
    ],
    "root" : [
        <trutils:magnetic_attraction>
    ],
    
};

//无阶段物品
val exceptItemStacks as IIngredient[] = [
    <buildinggadgets:constructionpaste>, <buildinggadgets:constructionblock>, <buildinggadgets:constructionblockpowder>, <botania:flowerbag>, 
    <buildinggadgets:constructionblock_dense>, <buildinggadgets:construction_chunk_dense>, <enderio:item_material:32>,
    <nuclearcraft:ingot:8>, <nuclearcraft:dust:8>, <wizardry:wisdom_sapling>, <wizardry:wisdom_wood_log>, <wizardry:wisdom_wood_planks>, 
    <wizardry:wisdom_wood_fence>, <wizardry:wisdom_wood_fence_gate>, <wizardry:wisdom_wood_door>, <wizardry:wisdom_wood_trapdoor>, 
    <wizardry:wisdom_wood_stairs>, <wizardry:wisdom_wood_slab>,<integrateddynamics:on_the_dynamics_of_integration>, 
    <integrateddynamics:crystalized_menril_block>, <integrateddynamics:menril_planks>, <integrateddynamics:menril_sapling>, 
    <integrateddynamics:menril_leaves>, <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log>, <integrateddynamics:menril_berries>, 
    <integrateddynamics:crystalized_menril_brick_stairs>, <integrateddynamics:menril_planks_stairs>, <integrateddynamics:crystalized_menril_chunk>, 
    <integrateddynamics:menril_torch>, <integrateddynamics:menril_door>, <integrateddynamics:crystalized_menril_brick>, 
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
    <appliedenergistics2:crank>, <contenttweaker:crude_silicon_dust>, <extrautils2:pipe>, <wizardry:wisdom_stick>, <wizardry:wisdom_leaves>, <contenttweaker:bark_wisdomwood>, 
    <ore:blockRustyIron>, <contenttweaker:mana_petals>, <roots:terra_moss>, <ore:rootsBark>, 
    <roots:petals>, <ore:dustWheat>, <ore:eye>, <ore:knife>, <extrautils2:trashcan>, <extrautils2:trashcanfluid>, <extrautils2:trashcanenergy>, <ore:wildroot>, <roots:terra_spores>, 
    <extrautils2:spike_wood>, <extrautils2:spike_stone>, <roots:fire_starter>, <enderio:item_broken_spawner>,
    <extrautils2:largishchest>, <extrautils2:spike_diamond>, <extrautils2:spike_gold>, <extrautils2:minichest>, <extrautils2:redstoneclock>, <extrautils2:redstonelantern>, <extrautils2:spike_iron>, 
    <extrautils2:wrench>, <roots:wildroot_stew>, <ore:ingotCrudeSteel>, <ore:blockCrudeSteel>,  <ore:nuggetCrudeSteel>, 
    <extrautils2:contract>, <extrautils2:endershard>, <extrautils2:filterfluids>, <extrautils2:trowel>, <extrautils2:glasscutter>, <extrautils2:sickle_stone>, <extrautils2:sickle_iron>, 
    <extrautils2:sickle_diamond>, <extrautils2:sickle_gold>, <extrautils2:filter>, <ore:fanSteel>, 
    <ore:ingotPureIron>, <ore:nuggetPureIron>, <ore:blockPureIron>, <ore:platePureIron>, <ore:gearPureIron>, <ore:dustPureIron>, <ore:rodPureIron>, <ore:stickPureIron>, 
    <ore:mysticFlowerWhite>, <ore:mysticFlowerOrange>, <ore:mysticFlowerMagenta>, <ore:mysticFlowerLightBlue>, <ore:mysticFlowerYellow>, <ore:mysticFlowerLime>, <ore:mysticFlowerGray>, <ore:mysticFlowerLightGray>, <ore:mysticFlowerPink>, <ore:mysticFlowerBlack>, <ore:mysticFlowerRed>, <ore:mysticFlowerGreen>, <ore:mysticFlowerBrown>, <ore:mysticFlowerBlue>, <ore:mysticFlowerPurple>, <ore:mysticFlowerCyan>, 
    <ore:petalWhite>, <ore:petalOrange>, <ore:petalMagenta>, <ore:petalLightBlue>, <ore:petalYellow>, <ore:petalLime>, <ore:petalGray>, <ore:petalLightGray>, <ore:petalPink>, <ore:petalBlack>, <ore:petalRed>, <ore:petalGreen>, <ore:petalBrown>, <ore:petalBlue>, <ore:petalPurple>, <ore:petalCyan>, 
    <ore:mysticFlowerWhiteDouble>, <ore:mysticFlowerOrangeDouble>, <ore:mysticFlowerMagentaDouble>, <ore:mysticFlowerLightBlueDouble>, <ore:mysticFlowerYellowDouble>, <ore:mysticFlowerLimeDouble>, <ore:mysticFlowerGrayDouble>, <ore:mysticFlowerLightGrayDouble>, <ore:mysticFlowerPinkDouble>, <ore:mysticFlowerBlackDouble>, <ore:mysticFlowerRedDouble>, <ore:mysticFlowerGreenDouble>, <ore:mysticFlowerBrownDouble>, <ore:mysticFlowerBlueDouble>, <ore:mysticFlowerPurpleDouble>, <ore:mysticFlowerCyanDouble>, 
    <botania:petalblock:9>, <botania:petalblock:8>, <botania:petalblock:7>, <botania:petalblock:6>, <botania:petalblock:5>, <botania:petalblock:4>, <botania:petalblock:3>, <botania:petalblock:2>, <botania:petalblock:1>, <botania:petalblock:10>, <botania:petalblock:11>, <botania:petalblock:12>, <botania:petalblock:14>, <botania:petalblock:13>, <botania:petalblock:15>, 
    <roots:mortar>, <roots:roots_guide>, <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"}), <ore:ingotRoseGold>, <ore:dustRoseGold>, <ore:nuggetRoseGold>, <ore:blockRoseGold>, 
    <ore:compressed1xCobblestone>, <ore:compressed2xCobblestone>, <ore:compressed1xDirt>, <ore:compressed2xDirt>, <ore:compressed1xSand>, <ore:compressed2xSand>, <ore:compressed1xGravel>, <ore:compressed2xGravel>, <ore:compressed1xNetherrack>, <ore:compressed2xNetherrack>, 
    <ore:itemSalt>, <ore:dustSalt>, <ore:foodSalt>, <ore:blockSalt>, <roots:wooden_shears>, <ore:redstoneRoot>,
];

for stage, items in specialStageItemStackMap {
    for item in items {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(stage, item);
    }
}

for items in exceptItemStacks {
    ItemStages.removeItemStage(items);
}