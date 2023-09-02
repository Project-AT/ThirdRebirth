#priority 5
#modloaded trutils

import mods.harvestcrafttweaker.HarvestCraftTweaker;

//HarvestCraftTweaker.addPressing(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
//HarvestCraftTweaker.removePressingByInput(IItemStack input);

HarvestCraftTweaker.addPressing(<netherex:enoki_mushroom>, <minecraft:paper>, <minecraft:paper>);
HarvestCraftTweaker.addPressing(<biomesoplenty:honeycomb>, <harvestcraft:beeswaxitem>, <harvestcraft:beeswaxitem>);
HarvestCraftTweaker.addPressing(<biomesoplenty:filled_honeycomb>, <harvestcraft:beeswaxitem>, <harvestcraft:honeyitem>);
HarvestCraftTweaker.addPressing(<minecraft:melon>, <harvestcraft:melonjuiceitem>, <harvestcraft:fruitbaititem>);
HarvestCraftTweaker.addPressing(<minecraft:beetroot>, <minecraft:sugar>, <harvestcraft:veggiebaititem>);
