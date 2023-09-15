#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.removeShaped(<minecraft:paper> * 6, [[<mekanism:sawdust>, <mekanism:sawdust>, <mekanism:sawdust>]]);

var dusts as IItemStack[] = [
    <mekanism:dust>, <mekanism:dust:1>, <mekanism:dust:5>, <mekanism:dust:6>
];

for i in dusts {
    furnace.remove(<*>, i);
}

//钢质机壳
RecipeUtils.recipeTweak(true, <mekanism:basicblock:8>, 
    RecipeUtils.createCrossWithCore(<ore:itemMachineChassi>, <ore:ingotFerroboron>, <ore:plateTough>)
);
//锇压缩机
RecipeUtils.recipeTweak(true, <mekanism:machineblock:1>, [
    [<ore:ingotTough>, <ore:circuitBasic>, <ore:ingotTough>],
    [<enderio:block_tank:1>, <mekanism:basicblock:8>, <enderio:block_tank:1>],
    [<ore:actuator>, <ore:circuitBasic>, <ore:actuator>]
]);
//冶金灌注机
RecipeUtils.recipeTweak(true, <mekanism:machineblock:8>, [
    [<ore:ingotSignalum>, <ore:circuitBasic>, <ore:ingotSignalum>],
    [<ore:gearTough>, <mekanism:basicblock:8>, <ore:gearTough>],
    [<ore:ingotSignalum>, <ore:circuitBasic>, <ore:ingotSignalum>]
]);
//基础冶炼工厂
RecipeUtils.recipeTweak(true, <mekanism:machineblock:5>.withTag({recipeType: 0}), [
    [<ore:ingotFerroboron>, <teslathingies:powered_kiln>, <ore:ingotFerroboron>],
    [<ore:plateInvar>, <mekanism:basicblock:8>, <ore:plateInvar>],
    [<ore:ingotFerroboron>, <embers:heat_coil>, <ore:ingotFerroboron>]
]);
//基础粉碎工厂
RecipeUtils.recipeTweak(true, <mekanism:machineblock:5>.withTag({recipeType: 2}), [
    [<ore:ingotFerroboron>, <ore:actuator>, <ore:ingotFerroboron>],
    [<ore:gearTough>, <mekanism:basicblock:8>, <ore:gearTough>],
    [<ore:ingotFerroboron>, <ore:actuator>, <ore:ingotFerroboron>]
]);
//富集仓
RecipeUtils.recipeTweak(true, <mekanism:machineblock>, [
    [<ore:ingotSignalum>, <ore:circuitBasic>, <ore:ingotSignalum>],
    [<ore:servo>, <mekanism:basicblock:8>, <ore:servo>],
    [<ore:ingotSignalum>, <ore:circuitBasic>, <ore:ingotSignalum>]
]);
//融合机
RecipeUtils.recipeTweak(true, <mekanism:machineblock:2>, [
    [<ore:itemEnrichedAlloy>, <ore:circuitBasic>, <ore:itemEnrichedAlloy>],
    [<ore:actuator>, <mekanism:basicblock:8>, <ore:actuator>],
    [<ore:itemEnrichedAlloy>, <ore:circuitBasic>, <ore:itemEnrichedAlloy>]
]);
//合成配方
recipes.addShapeless(<mekanism:craftingformula>, [<ore:plasticWhite>,<ore:nuggetPulsatingIron>]);

recipes.remove(<mekanism:saltblock>);
recipes.addShaped(<ore:blockSalt>.firstItem, [[<ore:itemSalt>, <ore:itemSalt>], [<ore:itemSalt>, <ore:itemSalt>]]);
recipes.addShapeless(<ore:itemSalt>.firstItem * 4, [<ore:blockSalt>]);

RecipeUtils.recipeTweak(false, <mekanism:polyethene:2>, [
    [<mekanism:polyethene>, <mekanism:polyethene>, <mekanism:polyethene>],
]);

furnace.remove(<mekanism:ingot:6>);
furnace.remove(<mekanism:ingot:4>);
furnace.remove(<mekanism:ingot:5>);

recipes.replaceAllOccurences(<mekanism:energytablet>, <ore:mekTabletReplacement>);
RecipeUtils.recipeTweak(false, <mekanism:energytablet>, [[<contenttweaker:inactive_energytablet>]]);

recipes.remove(<mekanism:cardboardbox>);
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:dustWood>, <ore:paper>, <ore:dustWood>],
    [<ore:paper>, null, <ore:paper>],
    [<ore:dustWood>, <ore:paper>, <ore:dustWood>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<mekanism:cardboardbox>)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();