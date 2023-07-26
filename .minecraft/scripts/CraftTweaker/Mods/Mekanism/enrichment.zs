#priority 5
#modloaded trutils

import mods.mekanism.enrichment as Enrichment;

//mods.mekanism.enrichment.removeRecipe(IIngredient inputStack, @Optional IIngredient outputStack);

Enrichment.addRecipe(<ore:ingotSignalum>, <contenttweaker:compressed_signalum>);
Enrichment.addRecipe(<ore:ingotDraconium>, <contenttweaker:compressed_draconium>);
Enrichment.addRecipe(<ore:ingotCrystaltine>, <contenttweaker:compressed_crystaltine>);

Enrichment.removeRecipe(<minecraft:redstone>);
Enrichment.addRecipe(<ore:gemRedstone>, <mekanism:compressedredstone>);

Enrichment.removeRecipe(<minecraft:coal>);
Enrichment.removeRecipe(<minecraft:coal:1>);
Enrichment.addRecipe(<ore:pyrolyticCarbon>, <mekanism:compressedcarbon>);