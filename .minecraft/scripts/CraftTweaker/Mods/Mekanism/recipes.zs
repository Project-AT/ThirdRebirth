#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;
import mods.artisanworktables.builder.RecipeBuilder;
//钢质机壳
RecipeUtils.recipeTweak(true, <mekanism:basicblock:8>, [
    [<ore:ingotTough>, <ore:plateIronCompressed>, <ore:ingotTough>],
    [<ore:plateIronCompressed>, <ore:itemMachineChassi>, <ore:plateIronCompressed>],
    [<ore:ingotTough>, <ore:plateIronCompressed>, <ore:ingotTough>]
]);
//锇压缩机
RecipeUtils.recipeTweak(true, <mekanism:machineblock:1>, [
    [<ore:ingotTough>, <ore:circuitBasic>, <ore:ingotTough>],
    [<enderio:block_tank:1>, <mekanism:basicblock:8>, <enderio:block_tank:1>],
    [<ore:ingotTough>, <ore:circuitBasic>, <ore:ingotTough>]
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