#priority 5
#modloaded trutils

import mods.harvestcrafttweaker.HarvestCraftTweaker;

import crafttweaker.item.IItemStack;

/*
HarvestCraftTweaker.addMarket(IItemStack toBuy,IItemStack input,int cost);
HarvestCraftTweaker.removeMarketByOutput(IItemStack output);

HarvestCraftTweaker.addShipping(IItemStack toBuy,IItemStack currency,int cost);
HarvestCraftTweaker.removeShippingByOutput(IItemStack output);
*/

var sell as int[IItemStack] = {
    <mysticalworld:aubergine> : 32,
    <roots:pereskia_bulb> : 32,
    <roots:wildewheet> : 32,

    <betteranimalsplus:eel_meat_raw> : 16,
    <mysticalworld:raw_squid> : 16,
    <quark:crab_leg> : 16,
    <betteranimalsplus:crab_meat_raw> : 16,
    <betteranimalsplus:pheasant_egg> : 16,
    <betteranimalsplus:turkey_egg> : 16,
    <betteranimalsplus:goose_egg> : 16,
    <familiarfauna:turkey_leg_raw> : 16,
    <familiarfauna:venison_raw> : 16,
    <mysticalworld:venison> : 16,
    <betteranimalsplus:venisonraw> : 16,
    <quark:frog_leg> : 16,
    <minecraft:leather> : 16,
    <roots:wildroot> : 16,

    <netherex:ghast_meat_raw> : 8,
    <betteranimalsplus:wolf_pelt_snowy> : 8,
    <betteranimalsplus:wolf_pelt_timber> : 8,
    <betteranimalsplus:wolf_pelt_black> : 8,
    <betteranimalsplus:wolf_pelt_arctic> : 8,
    <betteranimalsplus:wolf_pelt_brown> : 8,
    <betteranimalsplus:wolf_pelt_red> : 8,
    <mysticalworld:pelt> : 8,

    <betteranimalsplus:bear_skin_black> : 4,
    <betteranimalsplus:bear_skin_brown> : 4,
    <betteranimalsplus:bear_skin_kermode> : 4,
};

for input, number in sell{
    HarvestCraftTweaker.addShipping(<minecraft:emerald>, input, number);
}