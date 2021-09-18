#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <botania:altar>, [
    [<ore:slabCobblestone>, <wizardry:nacre_pearl>.withTag({purity_override: 1.0 as float}), <ore:slabCobblestone>],
    [null, <minecraft:cobblestone>, null],
    [<minecraft:cobblestone>, <ore:livingrock>, <minecraft:cobblestone>]
]);

RecipeUtils.recipeTweak(true, <botania:pool>, [
    [<ore:livingrock>, <wizardry:mana_battery>, <ore:livingrock>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

RecipeUtils.recipeTweak(false, <botania:manaresource:6>, [
	[<quark:root>, <ore:dustRedstone>]
]);