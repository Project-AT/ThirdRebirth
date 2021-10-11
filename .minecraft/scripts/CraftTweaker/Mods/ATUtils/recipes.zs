#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("mage", true, <atutils:stick_thunder>, [
	[null, <ore:manaPearl>, <contenttweaker:rune1>],
    [null, <botania:manaresource:3>, <ore:manaPearl>],
    [<botania:manaresource:3>]
], {<ore:artisansAthame> : 10, <ore:artisansGrimoire> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <atutils:advance_stick_thunder>, [
	[null, <botania:manaresource:9>, <ore:ingotLead>],
    [<botania:manaresource:8>, <atutils:stick_thunder>, <botania:manaresource:8>],
    [<ore:dreamwoodTwig>, <botania:manaresource:9>]
], {<ore:artisansAthame> : 20, <ore:artisansGrimoire> : 20} as int[IIngredient]);