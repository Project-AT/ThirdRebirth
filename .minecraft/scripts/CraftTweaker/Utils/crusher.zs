import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.appliedenergistics2.Grinder;
import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.naturesaura.Altar;
import mods.lightningcraft.LightningCrusher;
import mods.roots.Mortar;
import mods.modularmachinery.RecipePrimer;

import scripts.grassUtils.StringHelper;

function getRecipeName(output as IItemStack) as string {
    var recipeName as string = "ThirdRebirth_" + StringHelper.getItemNameWithUnderline(output);
    return recipeName;
}

function addRecipeByTwoOutput(input as IItemStack, output1 as IItemStack, output2 as IItemStack, output2Chance as float, output2MechanicalChance as float) {
    Grinder.addRecipe(output1, input, 10, output2, output2Chance);
    Squeezer.addRecipe(input.itemArray[0], output1, 1.0, output2, output2Chance);
    MechanicalSqueezer.addRecipe(input.itemArray[0], output1, 1.0, output2, output2MechanicalChance);
    Altar.addRecipe(getRecipeName(output1), input, output1, <naturesaura:crushing_catalyst>, 10000, 100);
    LightningCrusher.add(output1, input);
    mods.mekanism.crusher.addRecipe(input, output1);
    mods.immersiveengineering.Crusher.addRecipe(output1, input, 2048, output2, output2Chance);
    Mortar.addRecipe(getRecipeName(output1), output1, [input]);

    var machineName = "high_energy_shredder";
    mods.modularmachinery.RecipeBuilder.newBuilder(machineName ~ getRecipeName(output1), machineName, 40)
        .addItemInput(input)
        .addItemOutput(output1)
        .addItemOutput(output2)
        .setChance(output2Chance)
    .build();

    mods.artisanworktables.builder.RecipeBuilder.get("basic")
        .setShapeless([input])
        .addOutput(output1)
        .addTool(<ore:artisansMortar>, 2)
        .setExtraOutputOne(output2, output2Chance)
        .setMaximumTier(1)
    .create();
}

function addRecipe(input as IItemStack, output as IItemStack) {
    Grinder.addRecipe(output, input, 10);
    Squeezer.addRecipe(input, output);
    MechanicalSqueezer.addRecipe(input, output);
    Altar.addRecipe(getRecipeName(output), input, output, <naturesaura:crushing_catalyst>, 10000, 100);
    LightningCrusher.add(output, input);
    mods.mekanism.crusher.addRecipe(input, output);
    mods.immersiveengineering.Crusher.addRecipe(output, input, 2048);
    Mortar.addRecipe(getRecipeName(output), output, [input]);

    var machineName = "high_energy_shredder";
    mods.modularmachinery.RecipeBuilder.newBuilder(machineName ~ getRecipeName(output), machineName, 40)
        .addItemInput(input)
        .addItemOutput(output)
    .build();

    mods.artisanworktables.builder.RecipeBuilder.get("basic")
        .setShapeless([input])
        .addOutput(output)
        .addTool(<ore:artisansMortar>, 2)
        .setMaximumTier(1)
    .create();
}

addRecipe(<enderio:item_material:5>, <contenttweaker:crude_silicon_dust>);
addRecipe(<enderio:item_material:63>, <quark:black_ash>);