#priority -5

import crafttweaker.item.IIngredient;
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
    <actuallyadditions:block_leaf_generator>,
    <actuallyadditions:block_leaf_generator>,
    <actuallyadditions:block_coal_generator>,
    <actuallyadditions:block_oil_generator>,
    <advancedrocketry:blackholegenerator>,
    <advancedrocketry:solargenerator>,
    <draconicevolution:generator>,
    <enderio:block_simple_stirling_generator>,
    <enderio:block_stirling_generator>,
    <enderio:block_zombie_generator>,
    <enderio:block_franken_zombie_generator>,
    <enderio:block_ender_generator>,
    <extrautils2:rainbowgenerator>,
    <extrautils2:rainbowgenerator:1>,
    <extrautils2:rainbowgenerator:2>,
    <immersiveengineering:metal_decoration0:6>,
    <immersiveengineering:metal_device1:2>,
    <immersiveengineering:metal_device1:3>,
    <integrateddynamics:coal_generator>,
    <lightningcraft:static_generator>,
    <lightningcraft:rf_receiver>,
    <rftools:coalgenerator>,
    <rftools:endergenic>,
    <libvulpes:coalgenerator>,
    <opencomputers:upgrade:22>
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
    <primal_tech:wood_club>,
    <primal_tech:bone_club>,
    <primal_tech:stone_club>,
    <primal_tech:fluid_bladder>,
    <roots:ritual_animal_harvest>,
    <roots:ritual_purity>,
    <roots:ritual_germination>,
    <roots:ritual_warding_protection>,
    <nuclearcraft:alloy_furnace>
];

val banRitual as IItemStack[] = [
    <roots:ritual_animal_harvest>,
    <roots:ritual_purity>,
    <roots:ritual_germination>,
    <roots:ritual_warding_protection>,
    <roots:unending_bowl>
];

for i in removeAndHide{
    JEI.removeAndHide(i);
}

for i in removeByRecipeName{
    recipes.removeByRecipeName(i);
}

for i in baned{
    i.addTooltip("§4" ~ game.localize("autotech.tooltip.item.ban"));
    recipes.remove(i);
}

for i in banRitual{
    i.addTooltip("§4" ~ game.localize("autotech.tooltip.ritual.ban"));
}

for i in 22 to 28{
    JEI.removeAndHide(<thermalfoundation:material>.definition.makeStack(i));
}