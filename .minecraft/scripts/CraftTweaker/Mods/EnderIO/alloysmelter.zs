#priority 5
#modloaded atutils

import mods.enderio.AlloySmelter;
import mods.pneumaticcraft.explosioncrafting;
import mods.pneumaticcraft.pressurechamber;

AlloySmelter.removeRecipe(<nuclearcraft:alloy:1>);

AlloySmelter.addRecipe(<nuclearcraft:alloy:1> * 2, [<ore:ingotHighStrengthAluminumAlloy>, <ore:ingotDarkSteel>]);

AlloySmelter.removeRecipe(<nuclearcraft:alloy:10>);

AlloySmelter.addRecipe(<nuclearcraft:alloy:10> * 3, [<ore:ingotTough>, <ore:ingotTitaniumIridium>, <ore:ingotSignalum>]);

AlloySmelter.removeRecipe(<contenttweaker:high_strength_aluminum_alloy_ingot>);

AlloySmelter.addRecipe(<contenttweaker:high_strength_aluminum_alloy_ingot> * 6, [<ore:ingotAluminum> * 4, <ore:ingotMagnesium>, <ore:ingotCopper>]);

AlloySmelter.removeRecipe(<enderio:item_alloy_ingot>);

AlloySmelter.addRecipe(<enderio:item_alloy_ingot> * 5, [<ore:ingotAluminum>, <ore:ingotNickel>, <ore:ingotSteel> * 3]);

explosioncrafting.removeRecipe(<pneumaticcraft:ingot_iron_compressed>);
pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);

AlloySmelter.addRecipe(<pneumaticcraft:ingot_iron_compressed> * 6, [<ore:ingotConstantan>, <ore:ingotSteel> * 4, <ore:ingotManganese>]);

AlloySmelter.removeRecipe(<thermalfoundation:material:166>);

AlloySmelter.addRecipe(<thermalfoundation:material:166> * 2, [<extendedcrafting:material:7> * 2, <ore:ingotRefinedGlowstone> ,<ore:ingotEnergeticSilver>]);

AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:8>);

AlloySmelter.addRecipe(<enderio:item_alloy_ingot:8>, [<ore:ingotDarkSteel>, <ore:dustDimensional> * 2]);

AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:7>);

AlloySmelter.addRecipe(<enderio:item_alloy_ingot:7>, [<ore:ingotDawnstone>, <contenttweaker:soul_extract> * 4]);

AlloySmelter.removeRecipe(<thermalfoundation:material:165>);

AlloySmelter.addRecipe(<thermalfoundation:material:165> * 8, [<embers:ember_cluster>, <ore:ingotEnergeticSilver> * 4, <ore:ingotRedstoneAlloy> * 4]);

AlloySmelter.removeRecipe(<thermalfoundation:material:167>);

AlloySmelter.addRecipe(<thermalfoundation:material:167> * 2, [<ore:ingotEnderiumBase>, <integrateddynamics:crystalized_chorus_chunk> * 4, <ore:ingotVibrantAlloy>]);

recipes.remove(<extendedcrafting:material:48>);

AlloySmelter.addRecipe(<extendedcrafting:material:48>, [<ore:ingotEnderium>, <extendedcrafting:material:41>]);

AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:2>);

AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:2> * 2, [<ore:ingotEndSteel>, <integrateddynamics:crystalized_chorus_chunk> * 4, <ore:ingotManganese>]);

furnace.remove(<draconicevolution:draconium_ingot>);

AlloySmelter.addRecipe(<draconicevolution:draconium_ingot> * 2, [<ore:ingotMelodicAlloy>, <ore:ingotRefinedObsidian>, <ore:dustDraconium>]);

AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:6>);

AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6> * 2, [<ore:dustPetrotheum>, <ore:ingotSteel> * 2, <ore:gemEnderBiotite>]);

AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:6>);

AlloySmelter.addRecipe(<enderio:item_alloy_ingot:6> * 2, [<ore:dustPetrotheum>, <ore:ingotSteel> * 2, <ore:substanceEbony>]);

recipes.remove(<modularmachinery:itemmodularium>);

AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, [<ore:ingotAluminum>, <ore:ingotSteel> * 2]);

recipes.remove(<refraction:reflective_alloy>);

AlloySmelter.addRecipe(<refraction:reflective_alloy> * 5, [<ore:ingotIron> * 3, <ore:ingotEnergeticSilver>, <ore:ingotGold>]);

AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);

AlloySmelter.addRecipe(<enderio:item_alloy_ingot:3> * 2, [<ore:gemRedstone>, <ore:ingotBronze>, <ore:ingotElectricalSteel>]);