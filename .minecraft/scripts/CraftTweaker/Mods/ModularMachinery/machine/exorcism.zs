#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.modularmachinery.RecipeBuilder;

var manaTransform as IItemStack[IItemStack] = {
    <ore:ingotManasteel>.firstItem : <ore:ingotPureIron>.firstItem * 3000,
    <botania:storage> : <ore:blockPureIron>.firstItem * 27000,
    <ore:manaDiamond>.firstItem : <ore:gemDiamond>.firstItem * 10000,
    <botania:storage:3> : <ore:blockDiamond>.firstItem * 90000,
    <ore:quartzMana>.firstItem : <ore:gemQuartz>.firstItem * 250,
    <botania:quartztypemana> : <minecraft:quartz_block> * 1000,
    <botania:quartztypemana:1> : <minecraft:quartz_block:1> * 1000,
    <botania:quartztypemana:2> : <minecraft:quartz_block:2> * 1000
};

for input, output in manaTransform {
    RecipeBuilder.newBuilder("exorcism_recipe_" + output.commandString, "exorcism", 40)
        .addItemInput(input)
        .addItemOutput(output.withAmount(1))
        .addManaOutput((output.amount / 2) as int)
    .build();
}

