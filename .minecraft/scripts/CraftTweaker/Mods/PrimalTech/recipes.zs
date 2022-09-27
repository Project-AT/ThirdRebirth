#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <primal_tech:clay_kiln>, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>]
]);

RecipeUtils.recipeTweak(true, <primal_tech:charcoal_hopper>, [
    [<primal_tech:charcoal_block>, <roots:infernal_bulb>, <primal_tech:charcoal_block>],
    [<primal_tech:charcoal_block>, <minecraft:hopper>, <primal_tech:charcoal_block>],
    [null, <primal_tech:charcoal_block>, null]
]);

RecipeUtils.recipeTweak(true, <primal_tech:rock>, [
    [<survivalist:rock>],
    [<survivalist:rock>]
]);

RecipeUtils.recipeTweak(true, <primal_tech:work_stump>, [
    [<ore:plankWood>],
    [<ore:logWood>]
]);

RecipeUtils.recipeTweak(false, <primal_tech:fire_sticks>, [
    [<ore:knife>.transformDamage(), <ore:stickWood>]
]);

artisanUtils.RecipeTweakWithTools_("carpenter", true, <primal_tech:wooden_hopper>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [null, <ore:plankWood>]
], {<ore:artisansHandsaw> : 6, <ore:artisansFramingHammer> : 4} as int[IIngredient]);

