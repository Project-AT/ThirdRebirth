#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("basic", true, <travelersbackpack:backpack_tank>, [
    [<ore:blockGlass>, <ore:ingotIron>, <ore:blockGlass>],
    [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>],
    [<ore:blockGlass>, <ore:ingotIron>, <ore:blockGlass>]
], {<ore:artisansBurner> : 20} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <travelersbackpack:sleeping_bag_bottom>, [
    [<quark:quilted_wool:14>, <quark:quilted_wool:14>, <quark:quilted_wool>]
], {<ore:artisansNeedle> : 50} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <travelersbackpack:travelers_backpack>, [
    [<harvestcraft:hardenedleatheritem>, <ore:ingotGold>, <harvestcraft:hardenedleatheritem>],
    [<travelersbackpack:backpack_tank>, <ore:chest>, <travelersbackpack:backpack_tank>],
    [<harvestcraft:hardenedleatheritem>, <travelersbackpack:sleeping_bag_bottom>, <harvestcraft:hardenedleatheritem>]
], {<ore:artisansNeedle> : 100} as int[IIngredient]);