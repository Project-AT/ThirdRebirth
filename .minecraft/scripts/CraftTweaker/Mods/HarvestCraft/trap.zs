#priority 5
#modloaded trutils

import mods.harvestcrafttweaker.HarvestCraftTweaker;

import crafttweaker.item.IItemStack;

/*
HarvestCraftTweaker.addGroundTrap(IIngredient input, IItemStack[] outputs);
HarvestCraftTweaker.removeGroundTrapByInput(IIngredient input);
HarvestCraftTweaker.addWaterTrap(IIngredient input, IItemStack[] outputs);
HarvestCraftTweaker.removeWaterTrapByInput(IIngredient input);
*/

var baits as int[IItemStack] = {
    <thermalfoundation:bait> : 2,
    <thermalfoundation:bait:1> : 4,
    <thermalfoundation:bait:2> : 8,
};

HarvestCraftTweaker.addGroundTrap(<ore:listAllmeatraw>, [
    <minecraft:bone> * 1,
    <minecraft:bone> * 2,
    <minecraft:bone> * 3,
    <minecraft:leather> * 1,
    <minecraft:leather> * 2,
    <betteranimalsplus:wolf_pelt_snowy>,
    <betteranimalsplus:wolf_pelt_timber>,
    <betteranimalsplus:wolf_pelt_black>,
    <betteranimalsplus:wolf_pelt_arctic>,
    <betteranimalsplus:wolf_pelt_brown>,
    <betteranimalsplus:wolf_pelt_red>,
    <mysticalworld:pelt>,
]);

HarvestCraftTweaker.addGroundTrap(<ore:listAllfishfresh>, [
    <minecraft:bone> * 1,
    <minecraft:bone> * 2,
    <minecraft:bone> * 3,
    <minecraft:bone> * 4,
    <minecraft:bone> * 5,
    <minecraft:leather> * 1,
    <minecraft:leather> * 2,
    <minecraft:leather> * 3,
    <betteranimalsplus:bear_skin_black>,
    <betteranimalsplus:bear_skin_brown>,
    <betteranimalsplus:bear_skin_kermode>,
]);

for input, number in baits{
    HarvestCraftTweaker.addWaterTrap(input, [
        <minecraft:fish:1> * number,
        <harvestcraft:anchovyrawitem> * number,
        <harvestcraft:crayfishcookeditem> * number,
        <harvestcraft:shrimprawitem> * number,
        <harvestcraft:tunarawitem> * number,
        <harvestcraft:oysterrawitem> * number,
        <minecraft:fish:3> * number,
        <harvestcraft:jellyfishrawitem> * number,
        <minecraft:fish> * number,
]);}

