#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.roots.Fey;

import scripts.grassUtils.StringHelper;

function ferUtils(output as IItemStack, input as IIngredient[], isRemove as bool) {
    if (isRemove) Fey.removeRecipe(output.withAmount(1));
    Fey.addRecipe(StringHelper.getItemNameWithUnderline(output), output, input);
}

ferUtils(<roots:runic_shears>, [
    <roots:wooden_shears>, <roots:pereskia>, <ore:ingotGold>, <roots:runic_dust>, <roots:runic_dust>
], true);

ferUtils(<roots:elemental_soil>, [
    <roots:runic_dust>, <minecraft:dirt:1>, <contenttweaker:mana_petals>, <roots:terra_moss>, <ore:wildroot>
], true);

ferUtils(<trutils:evil_stone>, [
    <botania:felpumpkin>, <ore:runedObsidian>, <ore:blockMeatRaw>, <roots:infernal_bulb>, <ore:ingotGold>
], false);

Fey.removeRecipe(<roots:salmon_of_knowledge>);
ferUtils(<roots:salmon_of_knowledge>.withTag({crafter: "Fey"}), [
    <minecraft:fish:1>, <roots:baffle_cap_mushroom>, <contenttweaker:bark_wisdomwood>, <minecraft:experience_bottle>, <contenttweaker:villager_language_dictionary>
], false);

ferUtils(<roots:wildwood_sapling>, [
    <wizardry:wisdom_sapling>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:bark_wildwood>
], false);

ferUtils(<minecraft:crafting_table>, [
    <primal_tech:work_stump_upgraded>, <contenttweaker:bark_wisdomwood>, <roots:wildwood_log>, <ore:leather>, <ore:ingotIron>
], false);

ferUtils(<roots:runestone> * 4, [
    <roots:runic_dust>, <ore:stone>, <ore:stone>, <ore:stone>, <ore:stone>
], true);

ferUtils(<minecraft:experience_bottle>, [
    <minecraft:potion>.withTag({Potion: "minecraft:water"}), <roots:spirit_herb>, <roots:pereskia>, <roots:terra_moss>, <contenttweaker:bark_wisdomwood>
], false);

ferUtils(<extrautils2:wateringcan:1000>, [
    <roots:mortar>, <ore:runestone>, <roots:spirit_herb>, <roots:terra_moss>, <roots:dewgonia>
], false);

ferUtils(<roots:living_sword>, [
    <contenttweaker:bark_wisdomwood>, <ore:rootsBark>, <ore:ingotRustyIron>, <ore:wildroot>, <minecraft:wooden_sword>
], true);

ferUtils(<roots:living_hoe>, [
    <contenttweaker:bark_wisdomwood>, <ore:rootsBark>, <ore:ingotRustyIron>, <ore:wildroot>, <minecraft:wooden_hoe>
], true);

ferUtils(<roots:living_shovel>, [
    <contenttweaker:bark_wisdomwood>, <ore:rootsBark>, <ore:ingotRustyIron>, <ore:wildroot>, <minecraft:wooden_shovel>
], true);

ferUtils(<roots:living_axe>, [
    <contenttweaker:bark_wisdomwood>, <ore:rootsBark>, <ore:ingotRustyIron>, <ore:wildroot>, <minecraft:wooden_axe>
], true);

ferUtils(<roots:living_pickaxe>, [
    <contenttweaker:bark_wisdomwood>, <ore:rootsBark>, <ore:ingotRustyIron>, <ore:wildroot>, <minecraft:wooden_pickaxe>
], true);