#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

function runeAltarUtil(output as IItemStack, input as IIngredient[], mana as int, isBotRune as bool) {
    if (isBotRune) RuneAltar.removeRecipe(output);
    
    recipes.remove(output);
    RuneAltar.addRecipe(output, input, mana);
}

runeAltarUtil(<contenttweaker:rune1> * 2, [
    <ore:ingotManasteel>, <ore:powderMana>, <lightningcraft:stone_block>, <ore:ingotSilver>, <botania_tweaks:compressed_tiny_potato_1>
], 10000, false);

runeAltarUtil(<contenttweaker:teleport_rune> * 2, [
    <ore:runeSlothB>, <ore:runeAutumnB>, <ore:runeAirB>, <ore:manaDiamond>, <ore:manaDiamond>, <ore:manaPearl>, <ore:manaPearl>
], 10000, false);

runeAltarUtil(<bountifulbaubles:magicmirror>, [
    <contenttweaker:teleport_rune>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>,
    <bountifulbaubles:potionrecall>, <bountifulbaubles:potionrecall>, <bountifulbaubles:potionrecall>,
    <netherex:dull_mirror>, <botania:managlass>, <botania:managlass>, <botania:managlass>
], 500000, false);