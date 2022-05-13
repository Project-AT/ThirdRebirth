#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

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

artisanUtils.RecipeTweakWithTools("engineer", true, <survivalist:sawmill>, [
    [<ore:ingotIron>, <thermalfoundation:material:657>, <ore:ingotIron>],
    [<ore:cobblestone>, null, <ore:cobblestone>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
], {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 15} as int[IIngredient]);

RecipeUtils.recipeTweak(false, <survivalist:tanned_leather>, [[<ore:itemLeather>, <mysticalworld:tannins>]]);