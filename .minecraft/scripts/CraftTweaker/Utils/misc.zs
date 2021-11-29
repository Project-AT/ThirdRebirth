#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var toolTypes as string[] = ["sword", "axe", "pickaxe", "shovel"];

for toolType in toolTypes {
    var wooden as IItemStack = itemUtils.getItem("minecraft:wooden_" ~ toolType);
    var stone as IItemStack = itemUtils.getItem("minecraft:stone_" ~ toolType);

    wooden.maxDamage = 1;
    stone.maxDamage = 1;
}

<entity:minecraft:creeper>.addDrop(<ore:dustSulfur>.firstItem, 0, 2);
<entity:embers:ancient_golem>.addDrop(<embers:archaic_circuit>, 0, 3);

for item in <ore:plankWood>.items {
    for recipe in recipes.getRecipesFor(item) {
        var rec1D as IIngredient[] = recipe.ingredients1D;
        if(rec1D.length == 1) {
            for i in rec1D[0].items {
                if(<ore:logWood>.matches(i)){
                    recipes.removeByRecipeName(recipe.fullResourceDomain);
                    recipes.addShapeless(<survivalist:chopping_block>, rec1D);
                    artisanUtils.RecipeTweakWithTools("basic", false, item * 4, [rec1D], {<ore:artisansHandsaw> : 2});
                }
            }
        }
    }
}