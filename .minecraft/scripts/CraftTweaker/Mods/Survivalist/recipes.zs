#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.removeByRecipeName("survivalist:string");

RecipeUtils.recipeTweak(true, <contenttweaker:straw_rope>,[
    [<survivalist:plant_fibres>, <survivalist:plant_fibres>],
    [<survivalist:plant_fibres>, <survivalist:plant_fibres>],
]);

RecipeUtils.recipeTweak(true, <survivalist:pick>, [
    [<ore:itemFlint>, <contenttweaker:straw_rope>, <ore:itemFlint>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]
]);

RecipeUtils.recipeTweak(true, <survivalist:hatchet>, [
    [<ore:itemFlint>, <ore:itemFlint>],
    [<contenttweaker:straw_rope>, <ore:stickWood>]
]);

RecipeUtils.recipeTweak(true, <trutils:flint_hoe>, [
    [<ore:itemFlint>, <contenttweaker:straw_rope>],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

RecipeUtils.recipeTweak(false, <survivalist:plant_fibres> * 2, [
    [<ore:knife>.transformDamage(), <ore:tallgrass> | <ore:vine> | <biomesoplenty:willow_vine> | <ore:plantShortgrass> | <ore:plantMediumgrass> | <ore:plantWheatgrass> |
                                    <ore:plantDampgrass> | <ore:plantCloverpatch> |<ore:plantDeadgrass> | <ore:plantDesertgrass> | <ore:plantDunegrass> | <ore:plantDevilweed> |
                                    <biomesoplenty:ivy> | <ore:plantSprout> | <ore:plantKoru>]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <survivalist:sawmill>, [
    [<ore:ingotIron>, <thermalfoundation:material:657>, <ore:ingotIron>],
    [<ore:cobblestone>, null, <ore:cobblestone>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
], {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 15} as int[IIngredient]);

RecipeUtils.recipeTweak(false, <survivalist:tanned_leather>, [[<ore:itemLeather>, <mysticalworld:tannins>]]);

RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:cobblestone> | <ore:stone>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<survivalist:rock> * 9)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:stoneAndesite>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<survivalist:rock:1> * 9)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:stoneDiorite>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<survivalist:rock:2> * 9)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<ore:stoneGranite>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<survivalist:rock:3> * 9)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();