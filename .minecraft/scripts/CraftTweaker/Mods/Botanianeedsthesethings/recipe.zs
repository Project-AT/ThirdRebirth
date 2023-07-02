#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<botanianeedsit:mana_capacitor_manasteel:1>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotManasteel>, null],
    [<ore:ingotManasteel>, <ore:blockPureIron>, <ore:ingotManasteel>],
    [null, <ore:ingotManasteel>, null]])
  .addTool(<ore:artisansAthame>, 15)
  .addTool(<ore:artisansGemCutter>, 25)
  .addOutput(<botanianeedsit:mana_capacitor_manasteel:1> * 16)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();

recipes.remove(<botanianeedsit:mana_capacitor_elementium:1>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotPureIron>, <ore:ingotElvenElementium>, <ore:ingotPureIron>],
    [<ore:ingotElvenElementium>, <ore:manaPearl>, <ore:ingotElvenElementium>],
    [<ore:ingotPureIron>, <ore:ingotElvenElementium>, <ore:ingotPureIron>]])
  .addTool(<ore:artisansAthame>, 20)
  .addTool(<ore:artisansGemCutter>, 30)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addOutput(<botanianeedsit:mana_capacitor_elementium:1> * 8)
  .create();

recipes.remove(<botanianeedsit:mana_capacitor_terrasteel:1>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotPureIron>, <ore:nuggetTerrasteel>, <ore:ingotPureIron>],
    [<ore:elvenPixieDust>, <ore:elvenDragonstone>, <ore:elvenPixieDust>],
    [<ore:ingotPureIron>, <ore:nuggetTerrasteel>, <ore:ingotPureIron>]])
  .addTool(<ore:artisansAthame>, 50)
  .addTool(<ore:artisansGemCutter>, 50)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addOutput(<botanianeedsit:mana_capacitor_terrasteel:1>)
  .create();