#priority 5

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;    

import mods.roots.Fey;
import mods.jei.JEI;


val banRitual as IItemStack[] = [
    <roots:ritual_animal_harvest>,
    <roots:ritual_purity>,
    <roots:ritual_germination>,
    <roots:ritual_warding_protection>
];

for ritual in banRitual{
    ritual.addTooltip("§4" ~ game.localize("autotech.tooltip.ritual.ban"));
}

<roots:unending_bowl>.addTooltip("§4" ~ game.localize("autotech.tooltip.ritual.ban"));

Fey.removeRecipe(<roots:unending_bowl>);

JEI.removeAndHide(<patchouli:guide_book>.withTag({"patchouli:book": "roots:roots_guide"}));