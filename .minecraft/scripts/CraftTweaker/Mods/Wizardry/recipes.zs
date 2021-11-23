#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var nacrePearl as IIngredient = <wizardry:nacre_pearl>.withTag({purity: 600 as long}) | <wizardry:nacre_pearl>.withTag({purity: 599 as long}) | <wizardry:nacre_pearl>.withTag({purity: 601 as long});

artisanUtils.RecipeTweakWithLiquid("basic", true, <wizardry:nacre_block>, RecipeUtils.createFull3(nacrePearl), <liquid:nacre_fluid> * 4000);