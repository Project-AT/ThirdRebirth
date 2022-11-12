#priority 5
#modloaded trutils
import mods.artisanworktables.builder.RecipeBuilder;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithLiquid("basic", true, <wizardry:nacre_block>, RecipeUtils.createFull3(NACRE_PEARL), <liquid:nacre_fluid> * 4000);

artisanUtils.RecipeTweakWithTools("carpenter", true, <wizardry:magicians_worktable>, [
    [null, <minecraft:book>],
    [<wizardry:wisdom_wood_slab>, <wizardry:wisdom_wood_slab>, <wizardry:wisdom_wood_slab>],
    [<wizardry:wisdom_wood_planks>, null, <wizardry:wisdom_wood_planks>]
], {<ore:artisansHandsaw> : 6} as int[IIngredient]);

RecipeBuilder.get("carpenter")
    .setShaped([
        [<wizardry:wisdom_wood_planks>],
        [<wizardry:wisdom_wood_planks>]])
    .addTool(<ore:artisansHandsaw>, 1)
    .addOutput(<wizardry:wisdom_stick> * 5)
    .setMinimumTier(0)
    .setMaximumTier(1)
    .setExtraOutputOne(<mekanism:sawdust>, 0.25)
    .setExtraOutputTwo(<wizardry:wisdom_stick>, 0.5)
.create();

