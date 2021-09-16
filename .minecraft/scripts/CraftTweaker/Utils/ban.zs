#priority -5
#modloaded atutils

import crafttweaker.item.IItemStack;

import mods.jei.JEI;

var removeAndHide as IItemStack[] = [
    <appliedenergistics2:material:40>,
    <patchouli:guide_book>.withTag({"patchouli:book": "roots:roots_guide"}),
    <enderio:item_endergy_conduit:*>,
    <enderio:item_capacitor_crystalline:*>,
    <enderio:item_alloy_endergy_ball:*>,
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
    <advancedrocketry:blackholegenerator>,
    <advancedrocketry:solargenerator>,
    <draconicevolution:generator>,
    <extrautils2:rainbowgenerator>,
    <extrautils2:rainbowgenerator:1>,
    <extrautils2:rainbowgenerator:2>,
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
    <immersiveengineering:metal_decoration0:6>,
    <immersiveengineering:metal_device1:2>,
    <immersiveengineering:metal_device1:3>,
    <integrateddynamics:coal_generator>,
    <lightningcraft:static_generator>,
    <lightningcraft:rf_receiver>,
    <rftools:coalgenerator>,
    <rftools:endergenic>,
    <libvulpes:coalgenerator>,
    <libvulpes:productdust>,
    <libvulpes:ore0>,
    <matteroverdrive:dilithium_ore>,
    <survivalist:rock>
];

var removeAndBanBecauseBug as IItemStack[] = [
    <refraction:spectrometer>,
    <lightningcraft:lightning_miner>
];

var removeByRecipeName as string[] = [
    "extrautils2:shortcut_chest",
    "extrautils2:shortcut_stick",
    "extrautils2:shortcut_hopper",
    "mana_craft:orichalcum/orichalcum_ingot_from_block"
];

var baned as IItemStack[] = [
    <primal_tech:flint_edged_disc>,
    <primal_tech:bone_knife>,
    <primal_tech:fluid_bladder>,
    <nuclearcraft:alloy_furnace>,
	<roots:unending_bowl>,
    <primal_tech:water_saw>
];

val banRitual as IItemStack[] = [
    <roots:ritual_animal_harvest>,
    <roots:ritual_purity>,
    <roots:ritual_germination>,
    <roots:ritual_warding_protection>
];

val hideCategory as string[] = [
    "nuclearcraft_alloy_furnace"
];

for item in removeAndHide {
    JEI.removeAndHide(item);
}

for item in removeAndBanBecauseBug {
    item.addTooltip("§4" ~ game.localize("autotech.tooltip.item.ban"));
    item.addTooltip("§4" ~ game.localize("autotech.tooltip.item.ban.bug"));
    recipes.remove(item);
}

for name in removeByRecipeName {
    recipes.removeByRecipeName(name);
}

for item in baned {
    item.addTooltip("§4" ~ game.localize("autotech.tooltip.item.ban"));
    recipes.remove(item);
}

for item in banRitual {
    item.addTooltip("§4" ~ game.localize("autotech.tooltip.ritual.ban"));
}

for name in hideCategory {
    JEI.hideCategory(name);
}

for meta in 22 to 28 {
    JEI.removeAndHide(<thermalfoundation:material>.definition.makeStack(meta));
}