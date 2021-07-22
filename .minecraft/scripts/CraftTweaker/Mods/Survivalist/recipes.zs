#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils.recipeTweak;

var banList as IItemStack[] = [
    <survivalist:rock>, 
    <survivalist:chopping_block:*>,
    <survivalist:chopping_block2:*>
];

for banItem in banList {
    recipes.remove(banItem);
}

recipes.removeByRecipeName("survivalist:string");

recipeTweak(true, <survivalist:pick>, [
        [<minecraft:flint>, <minecraft:flint>],
        [<contenttweaker:straw_rope>, <ore:stickWood>],
]);

recipeTweak(true, <survivalist:hatchet>, [
        [<minecraft:flint>, <contenttweaker:straw_rope>],
        [<ore:stickWood>],
]);