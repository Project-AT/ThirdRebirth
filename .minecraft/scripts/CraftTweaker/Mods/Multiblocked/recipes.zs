#priority 5
#modloaded trutils

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plateSteel>, null],
    [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>],
    [null, <ore:plateSteel>, null]])
  .addTool(<ore:artisansDriver>, 12)
  .addTool(<ore:artisansSpanner>, 13)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<multiblocked:steam_boiler>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plateSteel>, null],
    [<ore:plateSteel>, <immersiveengineering:metal_decoration0:3>, <ore:plateSteel>],
    [null, <ore:plateSteel>, null]])
  .addTool(<ore:artisansDriver>, 18)
  .addTool(<ore:artisansSpanner>, 20)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<multiblocked:turbine_generator>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:plateInvar>, <ore:plateInvar>],
    [<ore:gemLapis>, <ore:gearElectrum>, <ore:plateInvar>],
    [<ore:gemLapis>, <ore:gemLapis>, <ore:ingotBronze>]])
  .addTool(<ore:artisansSpanner>, 10)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addOutput(<multiblocked:multiblock_builder>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:stone_decoration:2>, <embers:block_caminite_brick>, <immersiveengineering:stone_decoration:2>],
    [<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>],
    [<immersiveengineering:stone_decoration:2>, <embers:block_caminite_brick>, <immersiveengineering:stone_decoration:2>]])
  .addTool(<ore:artisansSpanner>, 22)
  .addTool(<ore:artisansDriver>, 25)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addOutput(<multiblocked:refinery>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:quartztypemana:1>, null],
    [<botania:quartztypemana:1>, <contenttweaker:mana_crystal>, <botania:quartztypemana:1>],
    [null, <botania:quartztypemana:1>, null]])
  .addTool(<ore:artisansAthame>, 18)
  .addTool(<ore:artisansGrimoire>, 20)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addOutput(<multiblocked:mana_remover>)
  .create();