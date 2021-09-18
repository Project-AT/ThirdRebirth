#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <contenttweaker:villager_language_dictionary>, [
    [<ore:leather>,<contenttweaker:dictionary_paper>],
    [<contenttweaker:dictionary_paper>,<contenttweaker:dictionary_paper>]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:four_leaf_clover_necklace>, [
    [null, <contenttweaker:straw_rope>, null],
    [<contenttweaker:straw_rope>, null, <contenttweaker:straw_rope>],
    [null, <contenttweaker:four_leaf_clover>, null]
]);

var recipe as IOreDictEntry[IOreDictEntry] = {
    <ore:ingotTough> : <ore:blockTough>,
    <ore:ingotExtreme> : <ore:blockExtreme>,
    <ore:ingotRustyIron> : <ore:blockRustyIron>,
    <ore:ingotHighStrengthAluminumAlloy> : <ore:blockHighStrengthAluminumAlloy>
};

for k, v in recipe {
    addRecipe(k, v);
}

function addRecipe(a as IOreDictEntry, b as IOreDictEntry) {
    RecipeUtils.recipeTweak(true, a.firstItem, RecipeUtils.createFull3(b));
    RecipeUtils.recipeTweak(false, b.firstItem * 9, [[a]]);
}