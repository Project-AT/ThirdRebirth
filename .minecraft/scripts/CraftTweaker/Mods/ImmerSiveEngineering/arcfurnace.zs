#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;

import mods.immersiveengineering.ArcFurnace;

var removeRecipes as IItemStack[] = [
    <enderio:item_alloy_ingot:7>,
    <enderio:item_alloy_ingot:6>,
    <enderio:item_alloy_ingot:0>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot> * 2
];

for recipe in removeRecipes {
    ArcFurnace.removeRecipe(recipe);
}

//todo function 和 修改耗电量和配方

ArcFurnace.addRecipe(<nuclearcraft:alloy:1> * 2, <ore:ingotHighStrengthAluminumAlloy>, null, 200, 2048, [<ore:ingotDarkSteel>], "Alloying");
ArcFurnace.addRecipe(<nuclearcraft:alloy:10> * 3, <ore:ingotTough>, null, 200, 2048, [<ore:ingotTitaniumIridium>, <ore:ingotSignalum>], "Alloying");
ArcFurnace.addRecipe(<contenttweaker:high_strength_aluminum_alloy_ingot> * 6, <ore:ingotAluminum> * 4, null, 200, 2048, [<ore:ingotMagnesium>, <ore:ingotCopper>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot> * 5, <ore:ingotSteel> * 3, null, 2000, 2048, [<ore:ingotAluminum>, <ore:ingotNickel>], "Alloying");
ArcFurnace.addRecipe(<pneumaticcraft:ingot_iron_compressed> * 6, <ore:ingotSteel> * 4, null, 200, 2048, [<ore:ingotManganese>, <ore:ingotConstantan>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:166> * 2, <extendedcrafting:material:7> * 2, null, 200, 2048, [<ore:ingotRefinedGlowstone> ,<ore:ingotEnergeticSilver>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:8>, <ore:dustDimensional> * 2, null, 200, 2048, [<ore:ingotDarkSteel>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:7>, <contenttweaker:soul_extract> * 4, null, 200, 2048, [<ore:ingotDawnstone>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:165> * 8, <ore:ingotEnergeticSilver> * 4, null, 200, 2048, [<embers:ember_cluster>, <ore:ingotRedstoneAlloy> * 4], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:167> * 2, <ore:ingotEnderiumBase>, null, 2000, 2048, [<integrateddynamics:crystalized_chorus_chunk> * 4, <ore:ingotVibrantAlloy>], "Alloying");
ArcFurnace.addRecipe(<extendedcrafting:material:48>, <ore:ingotEnderium>, null, 200, 2048, [<extendedcrafting:material:41>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:2> * 2, <ore:ingotEndSteel>, null, 200, 2048, [<integrateddynamics:crystalized_chorus_chunk> * 4, <ore:ingotManganese>], "Alloying");
ArcFurnace.addRecipe(<draconicevolution:draconium_ingot> * 2, <ore:ingotMelodicAlloy>, null, 200, 2048, [<ore:ingotRefinedObsidian>, <ore:dustDraconium>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6> * 2, <ore:dustPetrotheum>, null, 200, 2048, [<ore:ingotSteel> * 2, <ore:gemEnderBiotite>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, null, 200, 2048, [<ore:ingotAluminum>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, null, 200, 2048, [<ore:dustAluminum>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, null, 200, 2048, [<ore:ingotAluminum>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, null, 200, 2048, [<ore:dustAluminum>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:3> * 2, <ore:gemRedstone>, null, 200, 2048, [<ore:ingotBronze>, <ore:ingotElectricalSteel>], "Alloying");
ArcFurnace.addRecipe(<contenttweaker:glazed_refractory_brick>, <ore:ingotBrickNether>, null, 200, 2048, [<contenttweaker:refractory_clay_ball> * 2, <contenttweaker:glaze>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, null, 200, 2048, [<ore:nuggetTerrasteel>], "Alloying");
ArcFurnace.addRecipe(<contenttweaker:pure_iron_ingot>, <ore:ingotIron>, null, 200, 2048);
ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:blockQuartz>, null, 200, 2048);
ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:gemQuartz> * 4, null, 200, 2048);
ArcFurnace.addRecipe(<enderio:item_material:50> * 2, <psi:material:5> * 2, null, 200, 2048, [<quark:black_ash> * 4, <ore:slimeball>], "Alloying");

var oldrecipe as IItemStack[] =[
<immersiveengineering:metal:8>,
<immersiveengineering:metal:7>,
<immersiveengineering:metal:6>,
<immersiveengineering:metal:5>,
<immersiveengineering:metal:4>,
<immersiveengineering:metal:3>,
<immersiveengineering:metal:2>,
<immersiveengineering:metal:1>,
<immersiveengineering:metal>
];
for recipe in oldrecipe{
    ArcFurnace.removeRecipe(recipe);
}

ArcFurnace.addRecipe(<thermalfoundation:material:128>*2,<ore:oreCopper>,<immersiveengineering:material:7>,200,512);
ArcFurnace.addRecipe(<thermalfoundation:material:128>,<ore:dustCopper>,null,100,512);
ArcFurnace.addRecipe(<thermalfoundation:material:132>*2,<ore:oreAluminium>,<immersiveengineering:material:7>,200,512);
ArcFurnace.addRecipe(<thermalfoundation:material:132>,<ore:dustAluminium>,null,100,512);
ArcFurnace.addRecipe(<thermalfoundation:material:131>*2,<ore:oreLead>,<immersiveengineering:material:7>,200,512);
ArcFurnace.addRecipe(<thermalfoundation:material:131>,<ore:dustLead>,null,100,512);
ArcFurnace.addRecipe(<thermalfoundation:material:130>*2,<ore:oreSilver>,<immersiveengineering:material:7>,200,512);
ArcFurnace.addRecipe(<thermalfoundation:material:130>,<ore:dustSilver>,null,100,512);
ArcFurnace.addRecipe(<thermalfoundation:material:123>*2,<ore:oreNickel>,<immersiveengineering:material:7>,200,512);
ArcFurnace.addRecipe(<thermalfoundation:material:123>,<ore:dustNickel>,null,100,512);
ArcFurnace.addRecipe(<nuclearcraft:ingot:4>*2,<ore:oreUranium>,<immersiveengineering:material:7>,200,512);
ArcFurnace.addRecipe(<nuclearcraft:ingot:4>,<ore:dustUranium>,null,100,512);

ArcFurnace.addRecipe(<thermalfoundation:material:161>*2,<ore:ingotGold>,null,100,512,[<ore:dustSilver>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:161>*2,<ore:dustGold>,null,100,512,[<ore:dustSilver>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:161>*2,<ore:ingotSilver>,null,100,512,[<ore:dustSilver>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:161>*2,<ore:dustSilver>,null,100,512,[<ore:dustSilver>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:128>*2,<ore:ingotNickel>,null,100,512,[<ore:ingotCopper>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:128>*2,<ore:dustNickel>,null,100,512,[<ore:ingotCopper>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:128>*2,<ore:ingotCopper>,null,100,512,[<ore:ingotCopper>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:128>*2,<ore:dustCopper>,null,100,512,[<ore:ingotCopper>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>,<ore:ingotIron>,<immersiveengineering:material:7>,400,512,[<ore:dustCoke>],"Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:160>,<ore:ingotIron>,<immersiveengineering:material:7>,400,512,[<ore:fuelCoke>],"Alloying");

ArcFurnace.addRecipe(<thermalfoundation:material:161>,<ore:dustConstantan>,null,100,512);
ArcFurnace.addRecipe(<thermalfoundation:material:128>,<ore:dustElectrum>,null,100,512);
ArcFurnace.addRecipe(<thermalfoundation:material:160>,<ore:dustSteel>,null,100,512);
