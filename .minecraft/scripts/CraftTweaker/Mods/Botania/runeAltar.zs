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

var spellNames as string[] = [
    "aqua_bubble",
    "wild_fire",
    "shatter",
    "dandelion_winds"
];

var inputitems as IIngredient[][] = [
    [<wizardry:orb:1>, <ore:listAllfishraw>],
    [<minecraft:flint>, <ore:voodooPoppetProtectionBurn>],
    [<roots:baffle_cap_mushroom>, <roots:terra_spores>],
    [<ore:feather>, <ore:sugarcane>]
];

for i in 0 .. 4 {
    var spellName = "roots:spell_" ~ spellNames[i];
    var inputItem = inputitems[i];
    inputItem += <ore:ingotManasteel>;
    inputItem += <ore:powderMana>;
    inputItem += <roots:spell_dust>.withTag({spell_storage: {s: spellName}});
    runeAltarUtil(<botania:rune>.definition.makeStack(i) * 2, inputItem, 6666, true);
}

for i in 4 .. 8 {
    recipes.remove(<botania:rune>.definition.makeStack(i));
}