#priority 5
#modloaded atutils

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

ferUtils(<atutils:evil_stone>, [
    <botania:felpumpkin>, <ore:runedObsidian>, <ore:blockMeatRaw>, <roots:infernal_bulb>, <ore:ingotGold>
], false);

ferUtils(<roots:salmon_of_knowledge>, [
    <minecraft:fish:1>, <roots:baffle_cap_mushroom>, <ore:rootsBark>, <minecraft:experience_bottle>, <contenttweaker:villager_language_dictionary>
], true);

ferUtils(<roots:wildwood_sapling>, [
    <wizardry:wisdom_sapling>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:bark_wildwood>
], false);

ferUtils(<minecraft:crafting_table>, [
    <primal_tech:work_stump_upgraded>, <contenttweaker:bark_wisdomwood>, <roots:wildwood_log>, <ore:leather>, <ore:ingotIron>
], false);

ferUtils(<roots:runestone> * 4, [
    <roots:runic_dust>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>, <minecraft:stone>
], true);
