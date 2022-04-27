#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithLiquid("basic", true, <wizardry:nacre_block>, RecipeUtils.createFull3(NACRE_PEARL), <liquid:nacre_fluid> * 4000);

artisanUtils.RecipeTweakWithTools("basic", true, <wizardry:magicians_worktable>, [
    [null, <minecraft:book>],
    [<wizardry:wisdom_wood_slab>, <wizardry:wisdom_wood_slab>, <wizardry:wisdom_wood_slab>],
    [<wizardry:wisdom_wood_planks>, null, <wizardry:wisdom_wood_planks>]
], {<ore:artisansHandsaw> : 6} as int[IIngredient]);

