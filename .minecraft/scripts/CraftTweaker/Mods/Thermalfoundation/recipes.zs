#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

import scripts.CraftTweaker.Utils.artisanUtils;

for meta in 22 to 28 {
    var stack as IItemStack = <thermalfoundation:material>.definition.makeStack(meta);
    if (meta == 22 || meta == 23) JEI.hide(stack);
    if (meta == 26) continue;
    recipes.remove(stack);
}

artisanUtils.RecipeTweakWithTools_("basic", false, <thermalfoundation:material:768>, [
    [<ore:coal>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <thermalfoundation:material:769>, [
    [<ore:charcoal>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <thermalfoundation:material:771>, [
    [<ore:stoneBrimstone>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <thermalfoundation:material:657>, [
	[<ore:plateIron>, <ore:plateIron>, null],
	[<ore:plateIron>, <ore:ingotCopper>, <ore:plateIron>],
    [null, <ore:plateIron>, <ore:plateIron>]
], {<ore:artisansDriver> : 4, <ore:artisansSpanner> : 4} as int[IIngredient]);