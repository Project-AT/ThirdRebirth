#priority -4
#modloaded trutils

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
import mods.immersiveengineering.Crusher;
import mods.mekanism.crusher;
import mods.poweredthingies.Tweaker.powderMakerTweaker;
import mods.nuclearcraft.Manufactory;

import scripts.grassUtils.StringHelper;
import scripts.grassUtils.RecipeUtils;

var Metal as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Germanium", "Steel", "Electrum", "Invar", "Bronze", "Constantan", "Signalum", "Lumium", "Enderium",
    "ManganeseDioxide" ,"ManganeseOxide", "Manganese", "Graphite", "Electricium", "Skyfather", "Mystic", "HOPGraphite", "RoseGold",
    "HighStrengthAluminumAlloy", "PureIron", "Soularium", "Beryllium", "Zirconium", "TitaniumIridium", "TitaniumAluminide"  
];

var Gem as string[] = [
    "Diamond", "Emerald", "Dilithium", "Coal", "Quartz", "CertusQuartz", "ChargedCertusQuartz", "Lapis",
    "Charcoal", "Fluorite", "BoronNitride", "Rhodochrosite", "Fluix", "Coke"
];

var num as int = 0;

function powderMaker(input as IItemStack, output as IItemStack){
    powderMakerTweaker().addRecipe(input, [output % 100]);
}

for MetalName in Metal {
    var ingotMetal as IOreDictEntry = oreDict.get("ingot" ~ MetalName);
    var dustMetal as IOreDictEntry = oreDict.get("dust" ~ MetalName);

    if(!ingotMetal.empty && !dustMetal.empty) {
        
        Grinder.removeRecipe(ingotMetal.firstItem);
        Grinder.addRecipe(dustMetal.firstItem, ingotMetal.firstItem, 4);

        Crusher.removeRecipesForInput(ingotMetal.firstItem);
        Crusher.addRecipe(dustMetal.firstItem, ingotMetal, 2000);

        LightningCrusher.add(dustMetal.firstItem, ingotMetal);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(ingotMetal.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(dustMetal.firstItem);
        Altar.addRecipe(name, ingotMetal, dustMetal.firstItem, <naturesaura:crushing_catalyst>, 250, 100);

        crusher.removeRecipe(ingotMetal.firstItem);
        crusher.addRecipe(ingotMetal, dustMetal.firstItem);

        powderMaker(ingotMetal.firstItem, dustMetal.firstItem);

        mods.nuclearcraft.Manufactory.removeRecipeWithInput(ingotMetal);
        mods.nuclearcraft.Manufactory.addRecipe(ingotMetal, dustMetal.firstItem, 0.25);
    }
}
for GemName in Gem {
    var gemMetal as IOreDictEntry = oreDict.get("gem" ~ GemName);
    var dustMetal as IOreDictEntry = oreDict.get("dust" ~ GemName);

    if(!gemMetal.empty && !dustMetal.empty) {
        
        Grinder.removeRecipe(gemMetal.firstItem);
        Grinder.addRecipe(dustMetal.firstItem, gemMetal.firstItem, 4);

        Crusher.removeRecipesForInput(gemMetal.firstItem);
        Crusher.addRecipe(dustMetal.firstItem, gemMetal, 2000);

        LightningCrusher.add(dustMetal.firstItem, gemMetal);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(gemMetal.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(dustMetal.firstItem);
        Altar.addRecipe(name, gemMetal, dustMetal.firstItem, <naturesaura:crushing_catalyst>, 250, 100);

        crusher.removeRecipe(gemMetal.firstItem);
        crusher.addRecipe(gemMetal, dustMetal.firstItem);

        powderMaker(gemMetal.firstItem, dustMetal.firstItem);

        mods.nuclearcraft.Manufactory.removeRecipeWithInput(gemMetal);
        mods.nuclearcraft.Manufactory.addRecipe(gemMetal, dustMetal.firstItem, 0.25);
    }
}
#------------------------------------------------------------------------------------
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
    Manufactory.addRecipe(input, output, 0.25);

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
addRecipe(<netherex:wither_dust>, <quark:black_ash>);
addRecipe(<netherex:wither_bone>, <netherex:wither_dust> * 5);

Manufactory.removeRecipeWithOutput(<ore:dustEndstone>);
addRecipe(<minecraft:end_stone>, <ore:dustEndstone>.firstItem);