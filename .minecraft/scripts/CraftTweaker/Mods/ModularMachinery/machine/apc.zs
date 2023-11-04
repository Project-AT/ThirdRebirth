#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.modularmachinery.RecipeBuilder;

import scripts.grassUtils.StringHelper;

var itemTransform as int[IItemStack][IItemStack] = {
    <minecraft:rotten_flesh> : {<minecraft:leather> : 10000},
    <minecraft:coal:1> : {<minecraft:coal> : 30000},
    <contenttweaker:pure_iron_ingot> : {<naturesaura:infused_iron> : 15000},
    <minecraft:quartz> : {<minecraft:prismarine_shard> : 5500},
    <minecraft:glass_bottle> : {<minecraft:potion>.withTag({Potion: "minecraft:water"}) : 25000},
    <ore:blockPureIron>.firstItem : {<naturesaura:infused_iron_block> : 135000},
    <minecraft:red_mushroom> : {<minecraft:nether_wart> : 30000},
    <minecraft:stone> : {<naturesaura:infused_stone> : 7500},
};

var dimnessInfuse as int[IItemStack][IIngredient] = {
    <ore:sand> : {<lightningcraft:under_sand> : 10000},
    <ore:cobblestone> : {<lightningcraft:stone_block:6> : 10000},
    <ore:logWood> : {<lightningcraft:wood_log> : 10000},
    <minecraft:sea_lantern> : {<lightningcraft:light_block> : 10000},
    <ore:gunpowder> : {<lightningcraft:material:12> : 20000},
};

var machineName = "aura_perfusion_changer";

for input, output in itemTransform {
    for output_, aura in output {
        var name = StringHelper.getItemNameWithUnderline(output_);
        RecipeBuilder.newBuilder(machineName ~ name, machineName, 10)
            .addItemInput(input)
            .addItemOutput(output_)
            .addAuraInput(aura / 10, true)
        .build();
    }
}

for input, output in dimnessInfuse {
    for output_, aura in output {
        var name = StringHelper.getItemNameWithUnderline(output_);
        RecipeBuilder.newBuilder(machineName ~ name, machineName, 20)
            .addItemInput(input)
            .addItemOutput(output_)
            .addFluidInput(<liquid:aura_underworld> * 100)
            .addAuraInput(aura / 20, true)
        .build();
    }
}

var oreNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Dilithium", "Germanium"
];

for oreName in oreNames {

    var ore as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var oreAuraInfusion as IOreDictEntry = oreDict.get("oreAuraInfusion" ~ oreName);

    if (!ore.empty && !oreAuraInfusion.empty) {
        var name = StringHelper.getItemNameWithUnderline(oreAuraInfusion.firstItem);
        RecipeBuilder.newBuilder(machineName ~ name, machineName, 20)
            .addItemInput(ore)
            .addItemOutput(oreAuraInfusion.firstItem)
            .addAuraInput(500, true)
        .build();
    }
}

RecipeBuilder.newBuilder(machineName ~ "_psi_5", machineName, 50)
    .addItemInput(<ore:coal>)
    .addItemOutput(<psi:material:5>)
    .addFluidInput(<liquid:aura_end> * 100)
    .addAuraInput(100, true)
.build();

RecipeBuilder.newBuilder(machineName ~ "_psi_6", machineName, 50)
    .addItemInput(<ore:gemQuartz>)
    .addItemOutput(<psi:material:6>)
    .addFluidInput(<liquid:aura_end> * 100)
    .addAuraInput(100, true)
.build();

RecipeBuilder.newBuilder(machineName ~ "_eio_1", machineName, 1000)
    .addItemInput(<ore:itemUnsouledMachineChassi>.firstItem)
    .addItemOutput(<ore:itemSoulMachineChassi>.firstItem)
    .addFluidInput(<liquid:aura_nether> * 256000)
    .addAuraInput(100, true)
.build();
