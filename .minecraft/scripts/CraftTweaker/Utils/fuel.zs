#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var fuels as int[IIngredient] = {
    <ore:dustCoal> : 1600,
    <ore:dustCoke> : 3200,
    <minecraft:coal:1> : 800,
    <ore:dustCharcoal> : 800,
    <primal_tech:charcoal_block> : 3200,
    <ore:blockCharcoal> : 8000,
    <contenttweaker:blast_furnace_fuel> : 6400,
    <primal_tech:charcoal_hopper> : 16000,
};

for fuel, burnTime in fuels {
    furnace.setFuel(fuel, burnTime);
}