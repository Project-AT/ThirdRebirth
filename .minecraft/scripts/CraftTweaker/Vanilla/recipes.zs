#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;

import scripts.grassUtils.RecipeUtils;

<contenttweaker:four_leaf_clover_necklace>.addShiftTooltip(game.localize("autotech.tier.flcn.tooltip"));

/** Recipes for Crafting Table */
RecipeUtils.recipeTweak(true, <minecraft:furnace>,[
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, null, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>]
]);

RecipeUtils.recipeTweak(true, <minecraft:crafting_table>,[
    [<ore:plankWood>, <ore:rock>, <ore:plankWood>],
    [<ore:ingotIron>, <contenttweaker:straw_rope>, <ore:ingotIron>],
    [<ore:plankWood>, <ore:rock>, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(false,<minecraft:flint_and_steel>.withDisplayName(game.localize("autotech.item.stone_flint_and_steel.name")),
    [[<minecraft:stone>, <minecraft:flint>]]
);

for recipe in recipes.all {
    var rec1D as IIngredient[] = recipe.ingredients1D;
    for ingredient in rec1D {
        for logWood in <ore:logWood>.items {
            if(logWood has ingredient && rec1D.length == 1) {
                recipes.removeByRecipeName(recipe.fullResourceDomain);
                recipes.addShapeless(<survivalist:chopping_block>, rec1D);
            }
        }
    }
}