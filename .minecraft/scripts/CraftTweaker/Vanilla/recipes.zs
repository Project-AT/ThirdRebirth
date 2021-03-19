#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;

import scripts.grassUtils.RecipeUtils.recipeTweak;

// <contenttweaker:four_leaf_clover_necklace>.addShiftTooltip(game.localize("autotech.tier.flcn.tooltip"));

/** Recipes for Crafting Table */
recipeTweak(true, <minecraft:furnace>,[
        [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
        [<ore:cobblestone>, null, <ore:cobblestone>],
        [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>]
]);
recipeTweak(true, <minecraft:crafting_table>,[
        [<ore:plankWood>, <ore:rock>, <ore:plankWood>],
        [<ore:ingotIron>, <contenttweaker:straw_rope>, <ore:ingotIron>],
        [<ore:plankWood>, <ore:rock>, <ore:plankWood>]
]);
recipeTweak(true, <contenttweaker:straw_rope>,[
        [<survivalist:plant_fibres>, <survivalist:plant_fibres>],
        [<survivalist:plant_fibres>, <survivalist:plant_fibres>],
]);

recipeTweak(false,<minecraft:flint_and_steel>.withDisplayName(game.localize("autotech.item.stone_flint_and_steel.name")),
    [[<minecraft:stone>, <minecraft:flint>]]
);  

for i in recipes.all{
var rec1D = i.ingredients1D;
    for j in rec1D{
        for l in <ore:logWood>.items{
            if(l has j && (rec1D.length == 1)){
                recipes.removeByRecipeName(i.fullResourceDomain);
                recipes.addShapeless(<survivalist:chopping_block>, rec1D);
            }
        }
    }
}