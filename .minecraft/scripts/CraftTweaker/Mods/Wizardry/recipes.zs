#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var nacrePearl as IItemStack = <wizardry:nacre_pearl>.withTag({purity: 600 as long, complete: 1 as byte, purity_override: 1.0 as float});

artisanUtils.RecipeTweakWithLiquid("basic", true, <wizardry:nacre_block>, RecipeUtils.createFull3(nacrePearl), <liquid:nacre_fluid> * 4000);