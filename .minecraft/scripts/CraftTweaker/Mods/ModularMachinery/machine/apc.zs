#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.modularmachinery.RecipeBuilder;

import scripts.grassUtils.StringHelper;

var itemTransform as int[IItemStack][IItemStack] = {
    <minecraft:rotten_flesh> : {<minecraft:leather> : 10000},
    <minecraft:coal:1> : {<minecraft:coal> : 30000},
    <contenttweaker:pure_iron_ingot> : {<naturesaura:infused_iron> : 15000},
    <minecraft:quartz> : {<minecraft:prismarine_shard> : 5500},
    <minecraft:glass_bottle> : {<minecraft:potion>.withTag({Potion: "minecraft:water"}) : 25000},
    <contenttweaker:sub_block_holder_2:12> : {<naturesaura:infused_iron_block> : 135000},
    <minecraft:red_mushroom> : {<minecraft:nether_wart> : 30000},
    <minecraft:stone> : {<naturesaura:infused_stone> : 7500},
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
