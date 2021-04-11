#priority -5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.jei.JEI;

var removeAndHide as IItemStack[] = [
    <appliedenergistics2:material:40>,
    <patchouli:guide_book>.withTag({"patchouli:book": "roots:roots_guide"})
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