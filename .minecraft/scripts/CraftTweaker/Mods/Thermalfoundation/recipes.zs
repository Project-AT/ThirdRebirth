#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

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
], {<ore:artisansDriver> : 1,<ore:artisansSpanner> : 1} as int[IIngredient]);