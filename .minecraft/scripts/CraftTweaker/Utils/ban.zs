#priority -5
#modloaded trutils

import crafttweaker.item.IItemStack;

import mods.jei.JEI;

var removeAndHide as IItemStack[] = [
    <appliedenergistics2:material:40>,
    /*<enderio:item_endergy_conduit:*>,
    <enderio:item_capacitor_crystalline:*>,
    <enderio:item_alloy_endergy_ball:*>,*/
    <enderio:item_stellar_alloy_helmet>,
    <enderio:item_stellar_alloy_boots>,
    <enderio:item_stellar_alloy_chestplate>,
    <enderio:item_stellar_alloy_leggings>,
    <enderio:item_stellar_alloy_axe>,
    <enderio:item_stellar_alloy_pickaxe>,
    <enderio:block_simple_stirling_generator>,
    <enderio:block_stirling_generator>,
    <enderio:block_zombie_generator>,
    <enderio:block_franken_zombie_generator>,
    <enderio:block_ender_generator>,
	<enderio:block_enhanced_combustion_generator>,
	<enderio:block_combustion_generator>,
    <draconicevolution:generator>,
    <extrautils2:quarry>,
    <extrautils2:teleporter:1>,
    <extrautils2:teleporter>,
    <extrautils2:quarryproxy>,
    <extrautils2:rainbowgenerator>,
    <extrautils2:rainbowgenerator:1>,
    <extrautils2:rainbowgenerator:2>,
    <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:crusher"}),
    <immersiveengineering:metal_device1:2>,
    <immersiveengineering:metal_device1:3>,
    <integrateddynamics:coal_generator>,
    <lightningcraft:static_generator>,
    <lightningcraft:rf_receiver>,
    <rftools:coalgenerator>,
    <rftools:endergenic>,
    <libvulpes:coalgenerator>,
    <teslathingies:powder_maker>,
    <extendedcrafting:material>,
    <extendedcrafting:material:1>,
    <extendedcrafting:material:2>,
    <extendedcrafting:material:3>,
    <extendedcrafting:storage>,
    <mysticalworld:quartz_ore>,
    <mysticalworld:copper_ingot>,
    <mysticalworld:granite_quartz_ore>,
    <nuclearcraft:gem:6>,
    <nuclearcraft:dust:12>,
    <embers:ore_quartz>,
    <teslathingies:tesla_plant_seeds>,
    <rftools:coalgenerator>,
    <rftools:endergenic>,
    <rftools:pearl_injector>,
    <rftools:ender_monitor>,
    <advancedrocketry:platepress>,
];

var removeAndBanBecauseBug as IItemStack[] = [
    <refraction:spectrometer>,
    <mysticalworld:gold_dust>,
    <lightningcraft:lightning_miner>
];

var removeByRecipeName as string[] = [
    "extrautils2:shortcut_chest",
    "extrautils2:shortcut_stick",
    "extrautils2:shortcut_hopper",
    "mana_craft:orichalcum/orichalcum_ingot_from_block", 
    "thermalfoundation:draconium_ingot", 
    "thermalfoundation:draconium_ingot_1", 
    "thermalfoundation:draconium_ingot_2", 
    "thermalfoundation:dust_signalum", 
    "thermalfoundation:dust_lumium", 
    "modularmachinery:modularium_ingot", 
    "refraction:reflective_alloy",
    "netherex:wither_bone",
];

var baned as IItemStack[] = [
    <primal_tech:flint_edged_disc>,
    <primal_tech:bone_knife>,
    <primal_tech:fluid_bladder>,
    <primal_tech:wood_club>,
    <primal_tech:bone_club>,
    <primal_tech:stone_club>,
    <primal_tech:water_saw>,
    <primal_tech:bone_pickaxe>,
    <primal_tech:bone_axe>,
    <primal_tech:bone_sword>,
    <primal_tech:bone_shovel>,
    <primal_tech:bone_shears>,
    <primal_tech:bone_shard>,
	<roots:unending_bowl>,
    <advancedrocketry:electrolyser>,
    <teslathingies:simple_tank>,
    <teslathingies:multi_tank>,
    <teslathingies:animal_gym>,
    <teslathingies:pump>,
    <teslathingies:compound_maker>,
    <teslathingies:fluid_burner>,
    <teslathingies:incinerator>,
    <teslathingies:item_compound_producer>,
    <embers:dust_metallurgic>,
    <teslathingies:tesla_plant_seeds>,
    <primal_tech:stick_bundle>, 
    <primal_tech:fibre_torch>, 
    <primal_tech:fibre_torch_lit>,
    <primal_tech:plant_fibres>, 
    <primal_tech:twine>,
    <embers:plate_copper>,
    <embers:plate_lead>,
    <embers:plate_silver>,
    <embers:plate_iron>,
    <embers:plate_nickel>,
    <embers:plate_gold>,
    <embers:plate_aluminum>,
    <embers:plate_bronze>,
    <embers:plate_electrum>,
    <embers:plate_tin>,
];

val banRitual as IItemStack[] = [
    <roots:ritual_animal_harvest>,
    <roots:ritual_purity>,
    <roots:ritual_germination>,
    <roots:ritual_warding_protection>
];

//隐藏的jei类型
val hideCategory as string[] = [
    "Painter",
    "item_compound_producer",
    "incinerator",
    "fluid_burner",
    "compound_maker",
    "xu2_machine_extrautils2:furnace",
    "xu2_machine_extrautils2:crusher",
    "modularmachinery.recipes.big_embers_furnace",
    "xu2_machine_extrautils2:generator_survival",
    "xu2_machine_extrautils2:generator",
    "xu2_machine_extrautils2:generator_culinary",
    "xu2_machine_extrautils2:generator_lava",
    "xu2_machine_extrautils2:generator_redstone",
    "xu2_machine_extrautils2:generator_ender",
    "xu2_machine_extrautils2:generator_potion",
    "xu2_machine_extrautils2:generator_pink",
    "xu2_machine_extrautils2:generator_overclock",
    "xu2_machine_extrautils2:generator_tnt",
    "xu2_machine_extrautils2:generator_netherstar",
    "xu2_machine_extrautils2:generator_dragonsbreath",
    "xu2_machine_extrautils2:generator_ice",
    "xu2_machine_extrautils2:generator_death",
    "xu2_machine_extrautils2:generator_enchant",
    "xu2_machine_extrautils2:generator_slime",
    "zmaster587.AR.platePresser",
    "zmaster587.AR.electrolyzer",
];

for item in removeAndHide {
    JEI.removeAndHide(item);
    if (item.ores.length != 0) {
        for ore in item.ores {
            ore.remove(item);
        }
    }

}

for item in removeAndBanBecauseBug {
    item.addTooltip("§4" ~ game.localize("thirdrebirth.tooltip.item.ban.bug"));
    JEI.removeAndHide(item);
}

for name in removeByRecipeName {
    recipes.removeByRecipeName(name);
}

for item in baned {
    item.addTooltip("§4" ~ game.localize("thirdrebirth.tooltip.item.ban"));
    JEI.removeAndHide(item);
}

for item in banRitual {
    item.addTooltip("§4" ~ game.localize("thirdrebirth.tooltip.ritual.ban"));
}

for name in hideCategory {
    JEI.hideCategory(name);
}

for i in 0 to 10 {
    JEI.hide(<lightningcraft:plate>.definition.makeStack(i));
}

for i in 0 to 7 {
    JEI.hide(<lightningcraft:rod>.definition.makeStack(i));
}
