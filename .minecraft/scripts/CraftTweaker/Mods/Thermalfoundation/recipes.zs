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