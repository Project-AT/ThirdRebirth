#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils.recipeTweak;

recipes.removeByRecipeName("survivalist:string");

recipeTweak(true, <survivalist:pick>, [
        [<minecraft:flint>, <minecraft:flint>],
        [<contenttweaker:straw_rope>, <ore:stickWood>],
]);

recipeTweak(true, <survivalist:hatchet>, [
        [<minecraft:flint>, <contenttweaker:straw_rope>],
        [<ore:stickWood>],
]);