#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <teslacorelib:machine_case>, [
	RecipeUtils.createCrossWithCore(<embers:mech_core>, <ore:stonePolished>, <minecraft:redstone>)
], {<ore:artisansDriver> : 5, <ore:artisansSpanner> : 8} as int[IIngredient]);