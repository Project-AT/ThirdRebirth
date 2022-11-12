#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;
import mods.artisanworktables.builder.RecipeBuilder;

RecipeUtils.recipeTweak(true, <mekanism:basicblock:8>, [
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>],
    [<ore:plateSteel>, <ore:itemMachineChassi>, <ore:plateSteel>],
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>]
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