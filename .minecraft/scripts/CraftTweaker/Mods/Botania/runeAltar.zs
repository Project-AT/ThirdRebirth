#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

function runeAltarUtil(output as IItemStack, input as IIngredient[], mana as int, isBotRune as bool) {
    if (isBotRune) RuneAltar.removeRecipe(output);
    
    recipes.remove(output);
    RuneAltar.addRecipe(output, input, mana);
}

runeAltarUtil(<contenttweaker:rune1> * 2, [
    <contenttweaker:mystery_dust>, <lightningcraft:stone_block>, <botania_tweaks:compressed_tiny_potato_1>
], 6666, false);

runeAltarUtil(<contenttweaker:rune1> * 2, [
    <ore:ingotManasteel>, <ore:powderMana>, <lightningcraft:stone_block>, <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_storm_cloud"}}), <botania_tweaks:compressed_tiny_potato_1>
], 2500, false);

runeAltarUtil(<contenttweaker:teleport_rune>, [
    <ore:runeSlothB>, <ore:runeAutumnB>, <ore:runeAirB>, <ore:manaDiamond>, <ore:manaPearl>, <contenttweaker:mystery_dust>
], 20000, false);

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

for i in 0 .. 4 {
    var inputItem = inputitems[i];
    inputItem += <contenttweaker:mystery_dust>;
    runeAltarUtil(<botania:rune>.definition.makeStack(i) * 2, inputItem, 2500, false);
}

var inputSeasonitems as IIngredient[][] = [
    [<roots:spirit_herb>, <naturesaura:token_joy>, <ore:treeSapling>],
    [<roots:pereskia>, <naturesaura:token_anger>, <ore:sand>],
    [<roots:wildewheet>, <naturesaura:token_fear>, <ore:treeLeaves>],
    [<roots:moonglow_leaf>, <naturesaura:token_sorrow>, <minecraft:snow>]
];

for i in 4 .. 8 {
    var inputSeasonItem = inputSeasonitems[i - 4];
    inputSeasonItem += <contenttweaker:mystery_dust>;
    runeAltarUtil(<botania:rune>.definition.makeStack(i), inputSeasonItem, 7500, true);
}

var inputSinitems as IIngredient[][] = [
    [<naturesaura:token_rage>, <embers:diffraction_barrel>],
    [<naturesaura:token_grief>, <embers:caster_orb>],
    [<naturesaura:token_euphoria>, <embers:resonating_bell>],
    [<naturesaura:token_terror>, <embers:jet_augment>],
    [<naturesaura:token_rage>, <embers:superheater>],
    [<naturesaura:token_grief>, <embers:tinker_lens>],
    [<embers:golems_eye> ,<naturesaura:token_rage>],
];

for i in 9 .. 16 {
    var inputSinItem = inputSinitems[i - 9];
    inputSinItem += <contenttweaker:mystery_dust>;
    runeAltarUtil(<botania:rune>.definition.makeStack(i), inputSinItem, 12000, true);
}