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

static log2PlankMap as IItemStack[IItemStack] = {};

for log in <ore:logWood>.items {
	var plank as IItemStack;
	if(log.metadata == 32767) {
		for item in log.definition.subItems {
			baseCraftPlank(item);
		}
	} else {
		baseCraftPlank(log);
	}
}
for item in <ore:plankWood>.items {
	for recipe in recipes.getRecipesFor(item) {
		var rec1D as IIngredient[] = recipe.ingredients1D;
		if(rec1D.length == 1) {
			for i in rec1D[0].items {
				if(<ore:logWood>.matches(i)) {
					recipes.removeByRecipeName(recipe.fullResourceDomain);
					recipes.addShapeless(<survivalist:chopping_block>, rec1D);
				}
			}
		}
	}
}
function baseCraftPlank(log as IItemStack) as void {
	val plank as IItemStack = recipes.craft([[log]]);
	if(isNull(plank)) return;
	log2PlankMap[log] = plank.withAmount(1);
	recipes.removeShaped(plank,[[log]]);
	artisanUtils.RecipeTweakWithTools("basic",false,plank * 4,[[log]],{<ore:artisansHandsaw> : 2});
}