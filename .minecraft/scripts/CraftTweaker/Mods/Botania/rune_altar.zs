#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

function RuneAltarUtil(output as IItemStack, input as IIngredient[], mana as int) {
    RuneAltar.removeRecipe(output);
    RuneAltar.addRecipe(output, input, mana);
}

//thunder_rune
var silver = <ore:ingotSilver>;
for Silver in silver.items{
    RuneAltarUtil(<contenttweaker:rune1>*2, [
        <botania:manaresource>, <botania:manaresource:23>, <lightningcraft:stone_block>,
        Silver, <botania_tweaks:compressed_tiny_potato_1>], 10000);
}

//magic_mirror
recipes.remove(<bountifulbaubles:magicmirror>);
RuneAltarUtil(<bountifulbaubles:magicmirror>, [
    <contenttweaker:teleport_rune>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>,
    <bountifulbaubles:potionrecall>, <bountifulbaubles:potionrecall>, <bountifulbaubles:potionrecall>,
    <netherex:dull_mirror>, <botania:managlass>, <botania:managlass>, <botania:managlass>], 500000);

//teleport_rune
RuneAltarUtil(<contenttweaker:teleport_rune>*2, [
    <botania:rune:12>, <botania:rune:6>, <botania:rune:3>,
    <botania:manaresource:2>, <botania:manaresource:2>,
    <botania:manaresource:1>, <botania:manaresource:1>], 10000);