#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var nacrePearl as IItemStack = <wizardry:nacre_pearl>.withTag({purity: 600 as long, complete: 1 as byte, purity_override: 1.0 as float});

artisanUtils.RecipeTweakWithLiquid("basic", true, <wizardry:nacre_block>, RecipeUtils.createFull3(nacrePearl), <liquid:nacre_fluid> * 4000);

artisanUtils.RecipeTweakWithTools("mage", true, <wizardry:mana_battery>, [
    [<roots:dewgonia>, <ore:manaPearl>, <roots:dewgonia>],
    [<ore:gemDiamond>, nacrePearl, <ore:gemDiamond>],
    [<roots:dewgonia>, <ore:manaPearl>, <roots:dewgonia>]
], {<ore:artisansAthame> : 8, <ore:artisansGrimoire> : 15} as int[IIngredient]);