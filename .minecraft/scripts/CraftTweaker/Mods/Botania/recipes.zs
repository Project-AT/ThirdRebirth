#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

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

for i in 0 to 16 {

    var doubleflower as IItemStack = <botania:doubleflower1>.definition.makeStack(i);

    if (i > 7) doubleflower = <botania:doubleflower2>.definition.makeStack(i - 8);

    artisanUtils.RecipeTweakWithTools_("basic", false, <botania:petal>.definition.makeStack(i) * 3, [
        [<botania:flower>.definition.makeStack(i)]
    ], {<ore:artisansMortar> : 3} as int[IIngredient]);

    artisanUtils.RecipeTweakWithTools_("basic", false, doubleflower * 6, [
        [<botania:flower>.definition.makeStack(i)]
    ], {<ore:artisansMortar> : 6} as int[IIngredient]);

}