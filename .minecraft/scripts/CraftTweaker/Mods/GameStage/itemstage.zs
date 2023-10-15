#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

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
        <buildinggadgets:buildingtool>, <buildinggadgets:exchangertool>, <buildinggadgets:copypastetool>, <bedrockores:bedrock_miner>, <enderio:block_self_resetting_lever300>,
        <enderio:block_self_resetting_lever5>, <enderio:block_self_resetting_lever10>, <enderio:block_self_resetting_lever30>, <enderio:block_self_resetting_lever60>,  
        <enderio:block_self_resetting_lever5i>, <enderio:block_self_resetting_lever10i>, <enderio:block_self_resetting_lever30i>, <enderio:block_self_resetting_lever60i>,  
        <enderio:block_fused_glass:*>, <trutils:washing_machine>, <ore:dustBedrock>, <ore:itemPulsatingPowder>, <embers:mech_core>, <ore:dustAlugentum>, <ore:dustArsenic>,
        <ore:itemVibrantPowder>, <ore:itemPulsatingCrystal>, <ore:itemRemoteAwarenessUpgrade>, <ore:dustCarobbiite>, <ore:dustBeryllium>, 
        <ore:paperBlack>, <ore:gearVibrant>, <ore:itemBinderComposite>, <ore:itemPlatePhotovoltaic>, <ore:itemConduitBinder>, <ore:itemPowderPhotovoltaic>, <ore:ingotManganeseDioxide>, 
        <ore:gearIronInfinity>, <ore:itemSimpleMachineChassi>, <ore:itemSimpleChassiParts>, <ore:gearEnergized>, <ore:ingotManganeseOxide>, <ore:dustManganeseDioxide>, <ore:dustManganeseOxide>, 
        <ore:dustSoularium>, <ore:nuggetRedstoneAlloy>, <ore:ingotRedstoneAlloy>, <ore:blockRedstoneAlloy>, <ore:nuggetConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:blockManganese>, 
        <ore:blockConstructionAlloy>, <ore:nuggetEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:blockEnergeticAlloy>, <ore:blockConductiveIron>, <ore:nuggetVibrantAlloy>, 
        <ore:ingotVibrantAlloy>, <ore:blockVibrantAlloy>, <ore:nuggetElectricalSteel>, <ore:ingotElectricalSteel>, <ore:blockElectricalSteel>, <ore:nuggetSoularium>, <ore:dustManganese>, 
        <ore:ingotSoularium>, <ore:blockSoularium>, <ore:nuggetPulsatingIron>, <ore:ingotPulsatingIron>, <ore:blockPulsatingIron>, <ore:nuggetConductiveIron>, <ore:ingotConductiveIron>, 
        <ore:dustRhodochrosite>, <ore:gemRhodochrosite>, <ore:allOreCleanCrushedInfuseds>, <enderio:block_tank>, <ore:dustVilliaumite>, <ore:dustZirconium>, <ore:dustFluorite>,
        <ore:enlightenedFusedQuartz>, <ore:darkFusedQuartz>, <ore:holyFusedQuartz>, <ore:holyEnlightenedFusedQuartz>, <ore:holyDarkFusedQuartz>, <ore:unholyFusedQuartz>, 
        <ore:unholyEnlightenedFusedQuartz>, <ore:pastureFusedQuartz>, <ore:pastureEnlightenedFusedQuartz>, <ore:pastureDarkFusedQuartz>, <ore:notHolyFusedQuartz>,
        <ore:notHolyEnlightenedFusedQuartz>, <ore:notHolyDarkFusedQuartz>, <ore:notUnholyFusedQuartz>, <ore:notUnholyEnlightenedFusedQuartz>, <ore:notUnholyDarkFusedQuartz>, 
        <ore:notPastureFusedQuartz>, <ore:notPastureEnlightenedFusedQuartz>, <ore:notPastureDarkFusedQuartz>, <contenttweaker:crude_silicon_dust>,
        <ore:enlightenedFusedGlass>, <ore:darkFusedGlass>, <ore:holyFusedGlass>, <ore:holyEnlightenedFusedGlass>, <ore:holyDarkFusedGlass>, <ore:unholyFusedGlass>, 
        <ore:unholyEnlightenedFusedGlass>, <ore:pastureFusedGlass>, <ore:pastureEnlightenedFusedGlass>, <ore:pastureDarkFusedGlass>, <ore:notHolyFusedGlass>,
        <ore:notHolyEnlightenedFusedGlass>, <ore:notHolyDarkFusedGlass>, <ore:notUnholyFusedGlass>, <ore:notUnholyEnlightenedFusedGlass>, <ore:notUnholyDarkFusedGlass>, 
        <ore:notPastureFusedGlass>, <ore:notPastureEnlightenedFusedGlass>, <ore:notPastureDarkFusedGlass>,<enderio:item_xp_transfer>, <enderio:block_vacuum_chest>, 
        <multiblocked:pneumatic_pressure.any>, <contenttweaker:research_point_lv1_incomplete>, <contenttweaker:research_point_lv1>, <contenttweaker:pcb_substrate>, 
        <ore:exosuitSensorLight>, <appliedenergistics2:part:140>, <enderio:block_xp_vacuum>, <ore:plateIronCompressed>, <enderio:block_self_resetting_lever300i>,
        <ore:stickIronCompressed>, <matteroverdrive:artifact>
    ],
    "three" : [
        <mekanism:polyethene:0>, <mekanism:polyethene:1>, <mekanism:polyethene:2>, <mekanism:polyethene:3>, <contenttweaker:wine_stone>, <contenttweaker:tartaric_acid>, 
        <ore:gemEnderBiotite>, <ore:ingotHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:nuggetHighStrengthAluminumAlloy>, 
        <ore:gearHighStrengthAluminumAlloy>, <ore:dustHighStrengthAluminumAlloy>, <ore:rodHighStrengthAluminumAlloy>, <ore:blockHighStrengthAluminumAlloy>, <ore:plateTough>, 
        <ore:gearTough>, <ore:blockTough>, <ore:crystalCertusQuartz>, <appliedenergistics2:material:1>, <ore:dustCertusQuartz>, <appliedenergistics2:quartz_block>,  
        <appliedenergistics2:chiseled_quartz_block>, <appliedenergistics2:quartz_stairs>, <appliedenergistics2:chiseled_quartz_stairs>, <appliedenergistics2:quartz_pillar_stairs>,
        <appliedenergistics2:quartz_slab>, <appliedenergistics2:chiseled_quartz_slab>, <appliedenergistics2:quartz_pillar_slab>, <appliedenergistics2:quartz_pillar>,
        <appliedenergistics2:certus_quartz_axe>, <appliedenergistics2:certus_quartz_hoe>, <appliedenergistics2:certus_quartz_spade>, <appliedenergistics2:certus_quartz_pickaxe>,
        <appliedenergistics2:certus_quartz_cutting_knife>, <ore:substanceEbony>, <ore:substanceIvory>, <extendedcrafting:trimmed>, <extendedcrafting:trimmed:1>, 
        <extendedcrafting:trimmed:2>, <extendedcrafting:trimmed:3>, <appliedenergistics2:inscriber>, 
    ],
    "four" : [
        <extendedcrafting:material:7>, <advancedrocketry:centrifuge>, <enderio:item_basic_capacitor:1>, <contenttweaker:tinned_copper_wire>,
        <nuclearcraft:fission_heater_port:0>, <nuclearcraft:fission_heater_port:1>, <nuclearcraft:fission_heater_port:2>, <nuclearcraft:fission_heater_port:3>, 
        <nuclearcraft:fission_heater_port:4>, <nuclearcraft:fission_heater_port:5>, <nuclearcraft:fission_heater_port:6>, <nuclearcraft:fission_heater_port:7>, 
        <nuclearcraft:fission_heater_port:8>, <nuclearcraft:fission_heater_port:9>, <nuclearcraft:fission_heater_port:10>, <nuclearcraft:fission_heater_port:11>,
        <nuclearcraft:fission_heater_port:12>, <nuclearcraft:fission_heater_port:13>, <nuclearcraft:fission_heater_port:14>, <nuclearcraft:fission_heater_port:15>,
        <nuclearcraft:fission_heater_port2:0>, <nuclearcraft:fission_heater_port2:1>, <nuclearcraft:fission_heater_port2:2>, <nuclearcraft:fission_heater_port2:3>, 
        <nuclearcraft:fission_heater_port2:4>, <nuclearcraft:fission_heater_port2:5>, <nuclearcraft:fission_heater_port2:6>, <nuclearcraft:fission_heater_port2:7>, 
        <nuclearcraft:fission_heater_port2:8>, <nuclearcraft:fission_heater_port2:9>, <nuclearcraft:fission_heater_port2:10>, <nuclearcraft:fission_heater_port2:11>,
        <nuclearcraft:fission_heater_port2:12>, <nuclearcraft:fission_heater_port2:13>, <nuclearcraft:fission_heater_port2:14>, <nuclearcraft:fission_heater_port2:15>,
        <nuclearcraft:fission_computer_port>, <nuclearcraft:fission_irradiator_port>, <nuclearcraft:fission_cell_port>, <nuclearcraft:fission_vessel_port>,
        <nuclearcraft:fission_shield_manager>, <nuclearcraft:solid_fission_controller>, <nuclearcraft:solid_fission_cell>, <nuclearcraft:fission_source:2>,
        <nuclearcraft:fission_shield>, <nuclearcraft:fission_conductor>, <nuclearcraft:fission_monitor>, <nuclearcraft:fission_reflector>, <nuclearcraft:fission_reflector:1>,
        <nuclearcraft:fission_power_port>, <nuclearcraft:fission_vent>, <nuclearcraft:fission_irradiator>, <nuclearcraft:fission_source>, <nuclearcraft:fission_source:1>,
        <nuclearcraft:fission_glass>, <nuclearcraft:fission_casing>, <nuclearcraft:quantum_computer_qubit>, <nuclearcraft:quantum_computer_controller>, 
        <nuclearcraft:heavy_water_moderator>, <nuclearcraft:tritium_lamp>, <nuclearcraft:quantum_computer_gate_swap>, <nuclearcraft:quantum_computer_gate_swap:1>, 
        <nuclearcraft:quantum_computer_connector>, <nuclearcraft:quantum_computer_code_generator>, <nuclearcraft:quantum_computer_code_generator:1>,
        <nuclearcraft:quantum_computer_gate_single:0>, <nuclearcraft:quantum_computer_gate_single:1>, <nuclearcraft:quantum_computer_gate_single:2>, <nuclearcraft:quantum_computer_gate_single:3>, 
        <nuclearcraft:quantum_computer_gate_single:4>, <nuclearcraft:quantum_computer_gate_single:5>, <nuclearcraft:quantum_computer_gate_single:6>, <nuclearcraft:quantum_computer_gate_single:7>, 
        <nuclearcraft:quantum_computer_gate_single:8>, <nuclearcraft:quantum_computer_gate_single:9>, <nuclearcraft:quantum_computer_gate_single:10>, <nuclearcraft:quantum_computer_gate_single:11>,
        <nuclearcraft:quantum_computer_gate_control:0>, <nuclearcraft:quantum_computer_gate_control:1>, <nuclearcraft:quantum_computer_gate_control:2>, <nuclearcraft:quantum_computer_gate_control:3>, 
        <nuclearcraft:quantum_computer_gate_control:4>, <nuclearcraft:quantum_computer_gate_control:5>, <nuclearcraft:quantum_computer_gate_control:6>, <nuclearcraft:quantum_computer_gate_control:7>, 
        <nuclearcraft:quantum_computer_gate_control:8>, <nuclearcraft:quantum_computer_gate_control:9>, <nuclearcraft:quantum_computer_gate_control:10>, <nuclearcraft:quantum_computer_gate_control:11>,
        <nuclearcraft:solid_fission_sink:0>, <nuclearcraft:solid_fission_sink:1>, <nuclearcraft:solid_fission_sink:2>, <nuclearcraft:solid_fission_sink:3>, 
        <nuclearcraft:solid_fission_sink:4>, <nuclearcraft:solid_fission_sink:5>, <nuclearcraft:solid_fission_sink:6>, <nuclearcraft:solid_fission_sink:7>, 
        <nuclearcraft:solid_fission_sink:8>, <nuclearcraft:solid_fission_sink:9>, <nuclearcraft:solid_fission_sink:10>, <nuclearcraft:solid_fission_sink:11>,
        <nuclearcraft:solid_fission_sink:12>, <nuclearcraft:solid_fission_sink:13>, <nuclearcraft:solid_fission_sink:14>, <nuclearcraft:solid_fission_sink:15>,
        <nuclearcraft:solid_fission_sink2:0>, <nuclearcraft:solid_fission_sink2:1>, <nuclearcraft:solid_fission_sink2:2>, <nuclearcraft:solid_fission_sink2:3>, 
        <nuclearcraft:solid_fission_sink2:4>, <nuclearcraft:solid_fission_sink2:5>, <nuclearcraft:solid_fission_sink2:6>, <nuclearcraft:solid_fission_sink2:7>, 
        <nuclearcraft:solid_fission_sink2:8>, <nuclearcraft:solid_fission_sink2:9>, <nuclearcraft:solid_fission_sink2:10>, <nuclearcraft:solid_fission_sink2:11>,
        <nuclearcraft:solid_fission_sink2:12>, <nuclearcraft:solid_fission_sink2:13>, <nuclearcraft:solid_fission_sink2:14>, <nuclearcraft:solid_fission_sink2:15>,
        <nuclearcraft:salt_fission_heater:0>, <nuclearcraft:salt_fission_heater:1>, <nuclearcraft:salt_fission_heater:2>, <nuclearcraft:salt_fission_heater:3>, 
        <nuclearcraft:salt_fission_heater:4>, <nuclearcraft:salt_fission_heater:5>, <nuclearcraft:salt_fission_heater:6>, <nuclearcraft:salt_fission_heater:7>, 
        <nuclearcraft:salt_fission_heater:8>, <nuclearcraft:salt_fission_heater:9>, <nuclearcraft:salt_fission_heater:10>, <nuclearcraft:salt_fission_heater:11>,
        <nuclearcraft:salt_fission_heater:12>, <nuclearcraft:salt_fission_heater:13>, <nuclearcraft:salt_fission_heater:14>, <nuclearcraft:salt_fission_heater:15>,
        <nuclearcraft:salt_fission_heater2:0>, <nuclearcraft:salt_fission_heater2:1>, <nuclearcraft:salt_fission_heater2:2>, <nuclearcraft:salt_fission_heater2:3>, 
        <nuclearcraft:salt_fission_heater2:4>, <nuclearcraft:salt_fission_heater2:5>, <nuclearcraft:salt_fission_heater2:6>, <nuclearcraft:salt_fission_heater2:7>, 
        <nuclearcraft:salt_fission_heater2:8>, <nuclearcraft:salt_fission_heater2:9>, <nuclearcraft:salt_fission_heater2:10>, <nuclearcraft:salt_fission_heater2:11>,
        <nuclearcraft:salt_fission_heater2:12>, <nuclearcraft:salt_fission_heater2:13>, <nuclearcraft:salt_fission_heater2:14>, <nuclearcraft:salt_fission_heater2:15>,
        <nuclearcraft:salt_fission_controller>, <nuclearcraft:salt_fission_vessel>, <ore:blockLuminessence>, <thermalfoundation:glass_alloy:5>,
        <ore:blockSignalum>, <ore:dustSignalum>, <ore:ingotSignalum>, <ore:nuggetSignalum>, <ore:gearSignalum>, <ore:plateSignalum>, <modularmachinery:blockcasing:5>,
        <contenttweaker:damaged_psd>,
    ],
    "five" : [
        <contenttweaker:compressed_signalum>, <appliedenergistics2:crystal_seed:0>, <appliedenergistics2:crystal_seed:600>, <appliedenergistics2:crystal_seed:1200>, <ore:dustFluix>,
        <ore:crystalPureCertusQuartz>, <ore:crystalPureFluix>, <ore:crystalPureNetherQuartz>, <ore:ingot_dark_soularium>, <enderio:item_basic_capacitor:2>, <ore:ingotLumium>,
        <ore:nuggetLumium>, <ore:dustLumium>, <ore:gearLumium>, <ore:plateLumium>, <appliedenergistics2:quartz_growth_accelerator>, <ore:crystalFluix>, <ore:pearlFluix>,
        <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1400}), <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1600}), <appliedenergistics2:crystal_seed>.withTag({progress: 200}),
        <appliedenergistics2:crystal_seed:600>.withTag({progress: 800}), <appliedenergistics2:crystal_seed>.withTag({progress: 400}), <appliedenergistics2:crystal_seed:600>.withTag({progress: 1000}),
        <ore:ingot_dark_soularium>, <ore:blockLumium>, <thermalfoundation:glass_alloy:6>, <nuclearcraft:compound:9>, <contenttweaker:menril_essence_crystal>,
        <ore:ingotEndSteel>, <ore:blockEndSteel>, <ore:nuggetEndSteel>, <ore:itemEndSteelMachineChassi>, <enderio:block_end_iron_bars>, <extendedcrafting:table_basic>, <extendedcrafting:table_advanced>,
        <extendedcrafting:material:14>, <extendedcrafting:material:15>, <extendedcrafting:material:8>, <extendedcrafting:material:9>, <modularmachinery:blockcircuitry>, <contenttweaker:thin_film_transistor>,
    ],
    "six" : [
        <ore:circuitElite>, <contenttweaker:compressed_crystaltine>, <ore:ingotCrystaltine>, <ore:nuggetCrystaltine>, <ore:blockCrystaltine>, <extendedcrafting:trimmed:4>,
        <extendedcrafting:table_elite>, <extendedcrafting:material:10>, <extendedcrafting:material:16>, <extendedcrafting:material:12>, <extendedcrafting:material:18>,
        <modularmachinery:blockcircuitry:1>,
    ],
    "seven" : [

    ],
    "root" : [
        <trutils:magnetic_attraction>, <ore:redstoneRoot>
    ],
    "botania" : [
        <gugu-utils:lenstransform>, <contenttweaker:teleport_rune>, <contenttweaker:rune>, <contenttweaker:rune1>, <trutils:advance_stick_thunder>, <trutils:stick_thunder>,
        <ore:artisansToolManasteel>, <contenttweaker:mana_crystal>, <ore:allOreEnricheds>, <ore:allOreCrushedEnricheds>, <trutils:good_feeling_level>, <multiblocked:bot_mana.any>,
        <lightningcraft:stone_block>, <lightningcraft:stone_block:1>, <lightningcraft:stone_block:2>, <lightningcraft:stone_block:9>, <lightningcraft:stone_block:12>, 
        <lightningcraft:slab_block>, <lightningcraft:thunder_stairs>, <lightningcraft:slab_block_double>, <lightningcraft:guide>, <contenttweaker:fury>, <contenttweaker:calm>, 
        <contenttweaker:excavation>, <contenttweaker:token_of_elven_friendship_big>, <contenttweaker:token_of_elven_friendship_medium>, <contenttweaker:token_of_elven_friendship_small>,
    ],
    "root" : [
        <trutils:magnetic_attraction>,
    ],
    "aura" : [
        <ore:allOreCrushedInfuseds>, <ore:allOreAuraInfusions>, <ore:allshards>, <multiblocked:natures_aura.any>, <ore:blockSky>
    ],
    "evilstone" : [
        <trutils:evil_stone>
    ],
    "elixir" : [
        <contenttweaker:elixir_eyesight>
    ],
    "ember" : [
        <multiblocked:ember.any>, <contenttweaker:ember_crystal_block>, <contenttweaker:mystery_dust>, <modularmachinery:big_embers_furnace_controller>, 
        <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:big_embers_furnace"}),
    ],
    "manacapacitor" : [
        <botanianeedsit:mana_capacitor_manasteel:1>, <botanianeedsit:mana_capacitor_elementium:1>, <botanianeedsit:mana_capacitor_terrasteel:1>,
        <botanianeedsit:mana_capacitor_manasteel>, <botanianeedsit:mana_capacitor_elementium>, <botanianeedsit:mana_capacitor_terrasteel>,
    ],
    "manaremove" : [<multiblocked:mana_remover>],
    "extract" : [<multiblocked:refinery>],
    "distillation" : [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fractionator"}), <modularmachinery:fractionator_controller>],
    "Ge" : [
        <contenttweaker:germanium_integrated_circuit_board>, <contenttweaker:ge_transistor>, <contenttweaker:ge_wafer>, <ore:blockGermanium>, 
        <ore:dustGermanium>, <ore:crystalGermanium>, <ore:nuggetGermanium>, <ore:ingotGermanium>, <ore:plateGermanium>, <contenttweaker:germanium_matrix>,
    ],
    "Si" : [
        <contenttweaker:infused_crude_silicon_dust>, <contenttweaker:infused_protective_layer_crude_silicon_dust>, <contenttweaker:mana_infused_crude_silicon_dust>, 
        <contenttweaker:contains_impurities_silicon_dust>, <contenttweaker:silicon_dust>, <ore:itemSilicon>, <ore:waferSilicon>, <ore:circuitBasic>, <contenttweaker:si_transistor>,
    ],
    "Enderium" : [
        <ore:ingotEnderium>, <ore:endstone>, <integrateddynamics:crystalized_chorus_chunk>, <integrateddynamics:crystalized_chorus_brick_stairs>,
        <integrateddynamics:crystalized_chorus_block_stairs>, <integrateddynamics:crystalized_chorus_block>, <integrateddynamics:crystalized_chorus_brick>, <enderio:item_material:39>
    ],
    "ductdynamic" : [
        <enderio:item_item_conduit>, <enderio:item_liquid_conduit>, <enderio:item_liquid_conduit:1>, <enderio:item_liquid_conduit:2>, <enderio:item_redstone_conduit>,
        <enderio:item_gas_conduit:1>, <enderio:item_gas_conduit:2>, <enderio:item_gas_conduit>, 
    ],
    "xnet" : [
        <rftools:storage_scanner>, <rftools:storage_terminal>, <rftools:remote_storage>, <rftools:modular_storage>, 
    ],
    "EndPortal" : [
        <contenttweaker:ender_portal>, <psi:material:5>, <psi:material:6>
    ],
    "lightning" : [
        <ore:plateElectricium>, <ore:plateMystic>, <ore:plateSkyfather>
    ],
};

//无阶段物品
val exceptItemStacks as IIngredient[] = [
    <buildinggadgets:constructionpaste>, <buildinggadgets:constructionblock>, <buildinggadgets:constructionblockpowder>, <botania:flowerbag>, 
    <buildinggadgets:constructionblock_dense>, <buildinggadgets:construction_chunk_dense>, <enderio:item_material:32>, <integrateddynamics:squeezer>, 
    <nuclearcraft:ingot:8>, <nuclearcraft:dust:8>, <wizardry:wisdom_sapling>, <wizardry:wisdom_wood_log>, <wizardry:wisdom_wood_planks>, <ore:blockNetherStar>,
    <wizardry:wisdom_wood_fence>, <wizardry:wisdom_wood_fence_gate>, <wizardry:wisdom_wood_door>, <wizardry:wisdom_wood_trapdoor>, <ore:oreQuartz>,
    <wizardry:wisdom_wood_stairs>, <wizardry:wisdom_wood_slab>,<integrateddynamics:on_the_dynamics_of_integration>, <integrateddynamics:mechanical_squeezer>,
    <integrateddynamics:crystalized_menril_block>, <integrateddynamics:menril_planks>, <integrateddynamics:menril_sapling>, <integrateddynamics:mechanical_drying_basin>,
    <integrateddynamics:menril_leaves>, <integrateddynamics:menril_log_filled>, <integrateddynamics:menril_log>, <integrateddynamics:menril_berries>, 
    <integrateddynamics:crystalized_menril_brick_stairs>, <integrateddynamics:menril_planks_stairs>, <integrateddynamics:crystalized_menril_chunk>, <baubles:ring>,
    <integrateddynamics:menril_torch>, <integrateddynamics:menril_door>, <integrateddynamics:crystalized_menril_brick>, <integrateddynamics:drying_basin>, 
    <integrateddynamics:crystalized_menril_block_stairs>, <botania:petalblock>, <botania:doubleflower1>, <botania:flower>, <botania:petal>, <botania:cosmetic:31>,
    <botania:specialflower>.withTag({type: "puredaisy"}), <botania:lexicon>, <botania:blacklotus:1>, <botania:blacklotus>, <embers:tinker_hammer>, <ore:nuggetNetherStar>,
    <embers:block_caminite_brick_slab>, <embers:brick_caminite>, <embers:blend_caminite>, <embers:plate_caminite>, <embers:stamp_bar>, <embers:stamp_flat>,
    <embers:stamp_plate>, <embers:stamp_gear>, <embers:stamp_flat_raw>, <embers:stamp_plate_raw>, <embers:stamp_gear_raw>, <embers:ancient_motive_core>, 
    <embers:archaic_circuit>, <embers:stairs_caminite_brick>, <embers:block_tank>, <embers:pipe>, <embers:pump>, <embers:fluid_gauge>, <embers:large_tank>, 
    <embers:plate_caminite_raw>, <embers:stamp_bar_raw>, <embers:archaic_brick>, <embers:block_caminite_brick>, <embers:wall_caminite_brick>, <integrateddynamics:energy_battery>,
    <embers:fluid_dropper>, <embers:archaic_tile>, <embers:archaic_light>, <embers:sealed_planks>, <embers:wrapped_sealed_planks>, <embers:item_transfer>,
    <embers:vacuum>, <embers:breaker>, <embers:stone_valve>, <embers:fluid_transfer>, <embers:caminite_lever>, <embers:archaic_edge>, <contenttweaker:four_leaf_clover_necklace>,
    <embers:archaic_bricks>, <embers:stone_edge>, <embers:item_pump>, <embers:bin>, <embers:item_pipe>, <embers:item_dropper>, <roots:pestle>, <minecraft:mob_spawner>,
    <trutils:crude_steel_feet>, <trutils:crude_steel_head>, <trutils:crude_steel_legs>, <trutils:crude_steel_chest>, <trutils:crude_steel_pickaxe>, 
    <trutils:crude_steel_axe>, <trutils:crude_steel_shovel>, <trutils:crude_steel_hoe>, <trutils:crude_steel_sword>, <trutils:flint_hoe>, <solcarrot:food_book>,
    <contenttweaker:four_leaf_clover>, <contenttweaker:straw_rope>, <contenttweaker:end_portal_frame_debris>, <contenttweaker:insulating_substrate>, 
    <contenttweaker:blast_furnace_fuel>, <contenttweaker:dust_crude_steel>, <contenttweaker:dictionary_paper>, <contenttweaker:refractory_brick>, <botania:baublebox>,
    <contenttweaker:refractory_clay_ball>, <contenttweaker:rusty_iron_ingot>, <contenttweaker:research_icon>, <contenttweaker:glazed_refractory_brick>, <trutils:rusty_iron>, 
    <contenttweaker:glaze>, <contenttweaker:thirdrebirth>, <contenttweaker:stamp_nugget>, <contenttweaker:raw_stamp_nugget>, <contenttweaker:villager_language_dictionary>, 
    <contenttweaker:ironcoal_ore>, <contenttweaker:udorealuminum>, <contenttweaker:udorenickel>, <contenttweaker:udoreuranium>, <contenttweaker:udoreboron>, <contenttweaker:udorelithium>, 
    <contenttweaker:udoremagnesium>, <contenttweaker:udorethorium>, <contenttweaker:endorelithium>, <contenttweaker:endorerutile>, <wizardry:book>, <appliedenergistics2:grindstone>, 
    <appliedenergistics2:crank>, <contenttweaker:crude_silicon_dust>, <extrautils2:pipe>, <wizardry:wisdom_stick>, <wizardry:wisdom_leaves>, <contenttweaker:bark_wisdomwood>, 
    <ore:blockRustyIron>, <contenttweaker:mana_petals>, <roots:terra_moss>, <ore:rootsBark>, <ore:allIngots>, <ore:alldusts>, <extrautils2:wateringcan:1000>,
    <roots:petals>, <ore:dustWheat>, <ore:eye>, <ore:knife>, <extrautils2:trashcan>, <extrautils2:trashcanfluid>, <extrautils2:trashcanenergy>, <ore:wildroot>, <roots:terra_spores>, 
    <extrautils2:spike_wood>, <extrautils2:spike_stone>, <roots:fire_starter>, <enderio:item_broken_spawner>, <trutils:equivalent_fuel>, <extrautils2:wateringcan>,
    <extrautils2:largishchest>, <extrautils2:spike_diamond>, <extrautils2:spike_gold>, <extrautils2:minichest>, <extrautils2:redstoneclock>, <extrautils2:redstonelantern>, <extrautils2:spike_iron>, 
    <extrautils2:wrench>, <roots:wildroot_stew>, <ore:ingotCrudeSteel>, <ore:blockCrudeSteel>,  <ore:nuggetCrudeSteel>, <ore:dustQuartz>, <simplyjetpacks:metaitem:4>,
    <extrautils2:contract>, <extrautils2:endershard>, <extrautils2:filterfluids>, <extrautils2:trowel>, <extrautils2:glasscutter>, <extrautils2:sickle_stone>, <extrautils2:sickle_iron>, 
    <extrautils2:sickle_diamond>, <extrautils2:sickle_gold>, <extrautils2:filter>, <ore:fanSteel>, <ore:dustWood>, <mekanism:cardboardbox>, <mekanism:cardboardbox>,
    <ore:ingotPureIron>, <ore:nuggetPureIron>, <ore:blockPureIron>, <ore:platePureIron>, <ore:gearPureIron>, <ore:dustPureIron>, <ore:rodPureIron>, <ore:stickPureIron>, 
    <ore:mysticFlowerWhite>, <ore:mysticFlowerOrange>, <ore:mysticFlowerMagenta>, <ore:mysticFlowerLightBlue>, <ore:mysticFlowerYellow>, <ore:mysticFlowerLime>,
    <ore:mysticFlowerGray>, <ore:mysticFlowerLightGray>, <ore:mysticFlowerPink>, <ore:mysticFlowerBlack>, <ore:mysticFlowerRed>, <ore:mysticFlowerGreen>,
    <ore:mysticFlowerBrown>, <ore:mysticFlowerBlue>, <ore:mysticFlowerPurple>, <ore:mysticFlowerCyan>, <ore:petalWhite>, <ore:petalOrange>, <ore:petalMagenta>,
    <ore:petalLightBlue>, <ore:petalYellow>, <ore:petalLime>, <ore:petalGray>, <ore:petalLightGray>, <ore:petalPink>, <ore:petalBlack>, <ore:petalRed>, <ore:petalGreen>, 
    <ore:petalBrown>, <ore:petalBlue>, <ore:petalPurple>, <ore:petalCyan>, <ore:mysticFlowerWhiteDouble>, <ore:mysticFlowerOrangeDouble>,
    <ore:mysticFlowerMagentaDouble>, <ore:mysticFlowerLightBlueDouble>, <ore:mysticFlowerYellowDouble>, <ore:mysticFlowerLimeDouble>, <ore:mysticFlowerGrayDouble>,
    <ore:mysticFlowerLightGrayDouble>, <ore:mysticFlowerPinkDouble>, <ore:mysticFlowerBlackDouble>, <ore:mysticFlowerRedDouble>, <ore:mysticFlowerGreenDouble>,
    <ore:mysticFlowerBrownDouble>, <ore:mysticFlowerBlueDouble>, <ore:mysticFlowerPurpleDouble>, <ore:mysticFlowerCyanDouble>, 
    <botania:petalblock:9>, <botania:petalblock:8>, <botania:petalblock:7>, <botania:petalblock:6>, <botania:petalblock:5>, <botania:petalblock:4>, <botania:petalblock:3>, 
    <botania:petalblock:2>, <botania:petalblock:1>, <botania:petalblock:10>, <botania:petalblock:11>, <botania:petalblock:12>, <botania:petalblock:14>, <botania:petalblock:13>, <botania:petalblock:15>, 
    <roots:mortar>, <roots:roots_guide>, <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"}), <ore:ingotRoseGold>, <ore:dustRoseGold>, <ore:nuggetRoseGold>, <ore:blockRoseGold>, 
    <ore:compressed1xCobblestone>, <ore:compressed2xCobblestone>, <ore:compressed1xDirt>, <ore:compressed2xDirt>, <ore:compressed1xSand>, <ore:compressed2xSand>, 
    <ore:compressed1xGravel>, <ore:compressed2xGravel>, <ore:compressed1xNetherrack>, <ore:compressed2xNetherrack>, <ore:itemSalt>, <ore:dustSalt>, 
    <ore:foodSalt>, <ore:blockSalt>, <roots:wooden_shears>, <ore:redstoneRoot>,<botania:pestleandmortar>, <ore:dye>, <ore:rodIron>, <ore:stickSteel>, <ore:rodAluminum>, 
    <multiblocked:steam_boiler>, <multiblocked:turbine_generator>, <modularmachinery:blockbunker>, <multiblocked:multiblock_builder>,
    <ore:gearWood>, <ore:gearStone>, <botania:felpumpkin>, <extrautils2:flattransfernode>, <extrautils2:flattransfernode:1>, <extrautils2:grocket>,
    <extrautils2:grocket:2>, <extrautils2:grocket:5>, <extrautils2:grocket:6>, <extrautils2:grocket:3>, <extrautils2:grocket:4>, <extrautils2:drum>,
    <extrautils2:drum:1>, <extrautils2:drum:2>, <extrautils2:drum:3>, <multiblocked:item.any>, <multiblocked:fluid.any>, <multiblocked:forge_energy.any>,
    <ore:dustEmerald>, <ore:dustDiamond>, <ore:blockCharcoal>, <contenttweaker:research_point_lv0>, <extendedcrafting:handheld_table>, <extendedcrafting:crafting_table>,
    <scalinghealth:healingitem>, <scalinghealth:healingitem:1>, <ore:stickCopper>, <ore:rodIridium>, <ore:rodTin>, <ore:rodGold>, <appliedenergistics2:material:15>,
    <ore:stickRoseGold>, <ore:rodLead>, <ore:nuggetTitanium>, <appliedenergistics2:material:13>, <appliedenergistics2:material:14>, <appliedenergistics2:material:19>,
    <appliedenergistics2:material:21>,
];

for stage, items in specialStageItemStackMap {
    ALLSTAGES.insert(stage);
    for item in items {
        if (item instanceof IOreDictEntry) {
            var ore as IOreDictEntry = item;
            if (ore.empty) continue;
        }
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(stage, item);
    }
}

for items in exceptItemStacks {
    ItemStages.removeItemStage(items);
}
