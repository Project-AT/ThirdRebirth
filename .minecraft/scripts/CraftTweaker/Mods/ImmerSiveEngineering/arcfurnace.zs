#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

import mods.immersiveengineering.ArcFurnace;

var removeRecipes as IItemStack[] = [
    <enderio:item_alloy_ingot:7>,
    <enderio:item_alloy_ingot:6>,
    <enderio:item_alloy_ingot:0>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot> * 2,
    <advancedrocketry:productingot>,
    <advancedrocketry:productingot:1>,
    <libvulpes:productingot:7>,
    <immersiveengineering:metal:8>,
    <immersiveengineering:metal:7>,
    <immersiveengineering:metal:6>,
    <immersiveengineering:metal:5>,
    <immersiveengineering:metal:4>,
    <immersiveengineering:metal:3>,
    <immersiveengineering:metal:2>,
    <immersiveengineering:metal:1>,
    <immersiveengineering:metal>,
    <enderio:item_alloy_ingot:4>,
];

for recipe in removeRecipes {
    ArcFurnace.removeRecipe(recipe);
}

ArcFurnace.addRecipe(<contenttweaker:pure_iron_ingot>, <ore:Iron>, null, 100, 640);
ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:blockQuartz>, null, 100, 640);
ArcFurnace.addRecipe(<enderio:block_fused_quartz>, <ore:gemQuartz> * 4, null, 100, 640);

var oreNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Germanium", "Electrum", "Invar", "Bronze", "Constantan", "Titanium", "TitaniumAluminide",
    "TitaniumIridium"
];

for oreName in oreNames {
    var dust as IOreDictEntry = oreDict.get("dust" ~ oreName);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ oreName);

    ArcFurnace.removeRecipe(ingot.firstItem);
    if(!isNull(dust) && !dust.empty) ArcFurnace.addRecipe(ingot.firstItem, dust, null, 100, 512);
}

//LV1
/*ArcFurnace.addRecipe(<enderio:item_alloy_ingot:7>, <contenttweaker:soul_extract> * 4, null, 200, 2048, [<ore:ingotDawnstone>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, null, 200, 2048, [<ore:ingotAluminum>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, null, 200, 2048, [<ore:dustAluminum>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, null, 200, 2048, [<ore:ingotAluminum>], "Alloying");
ArcFurnace.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, null, 200, 2048, [<ore:dustAluminum>], "Alloying");
ArcFurnace.addRecipe(<contenttweaker:glazed_refractory_brick>, <ore:ingotBrickNether>, null, 200, 2048, [<contenttweaker:refractory_clay_ball> * 2, <contenttweaker:glaze>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_material:50> * 2, <psi:material:5> * 2, null, 200, 2048, [<quark:black_ash> * 4, <ore:slimeball>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_material:49> * 2, <ore:dyeBrown> * 2, null, 200, 2048, [<ore:itemSlagRich> * 2, <ore:slimeball>], "Alloying");
ArcFurnace.addRecipe(<ore:ingotRoseGold>.firstItem * 2, <ore:ingotGold>, null, 200, 2048, [<ore:ingotCopper>], "Alloying");
ArcFurnace.addRecipe(<embers:archaic_brick> * 2, <ore:netherrack>, null, 200, 2048, [<ore:soulSand>], "Alloying");*/

//LV2
/*ArcFurnace.addRecipe(<nuclearcraft:alloy:1> * 2, <ore:ingotHighStrengthAluminumAlloy>, null, 200, 2048, [<ore:ingotDarkSteel>], "Alloying");
ArcFurnace.addRecipe(<contenttweaker:high_strength_aluminum_alloy_ingot> * 6, <ore:ingotAluminum> * 4, null, 200, 2048, [<ore:ingotMagnesium>, <ore:ingotCopper>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot> * 5, <ore:ingotSteel> * 3, null, 2000, 2048, [<ore:ingotAluminum>, <ore:ingotNickel>], "Alloying");
ArcFurnace.addRecipe(<pneumaticcraft:ingot_iron_compressed> * 6, <ore:ingotSteel> * 4, null, 200, 2048, [<ore:ingotManganese>, <ore:ingotConstantan>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:166> * 2, <extendedcrafting:material:7> * 2, null, 200, 2048, [<ore:ingotRefinedGlowstone> ,<ore:ingotEnergeticSilver>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:8>, <ore:dustDimensional> * 2, null, 200, 2048, [<ore:ingotDarkSteel>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:167> * 2, <ore:ingotEnderiumBase>, null, 2000, 2048, [<integrateddynamics:crystalized_chorus_chunk> * 4, <ore:ingotVibrantAlloy>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:2> * 2, <ore:ingotEndSteel>, null, 200, 2048, [<integrateddynamics:crystalized_chorus_chunk> * 4, <ore:ingotManganese>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6> * 2, <ore:ingotSteel> * 2, null, 200, 2048, [<ore:dustPetrotheum>, <ore:gemEnderBiotite>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:6> * 2, <ore:ingotSteel> * 2, null, 200, 2048, [<ore:dustPetrotheum>, <ore:substanceEbony>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:3> * 2, <ore:gemRedstone>, null, 200, 2048, [<ore:ingotBronze>, <ore:ingotElectricalSteel>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, null, 200, 2048, [<ore:nuggetTerrasteel>], "Alloying");
ArcFurnace.addRecipe(<refraction:reflective_alloy> * 5, <ore:ingotIron> * 3, null, 200, 2048, [<ore:ingotEnergeticSilver>, <ore:ingotGold>], "Alloying");
ArcFurnace.addRecipe(<enderio:item_alloy_endergy_ingot:1>, <ore:ingotPlatinum>, null, 200, 2048, [<ore:itemPulsatingPowder>], "Alloying");*/


//LV3
/*
ArcFurnace.addRecipe(<nuclearcraft:alloy:10> * 3, <ore:ingotTough>, null, 200, 2048, [<ore:ingotTitaniumIridium>, <ore:ingotSignalum>], "Alloying");
ArcFurnace.addRecipe(<thermalfoundation:material:165> * 8, <ore:ingotEnergeticSilver> * 4, null, 200, 2048, [<embers:ember_cluster>, <ore:ingotRedstoneAlloy> * 4], "Alloying");
ArcFurnace.addRecipe(<extendedcrafting:material:48>, <ore:ingotEnderium>, null, 200, 2048, [<extendedcrafting:material:41>], "Alloying");
ArcFurnace.addRecipe(<draconicevolution:draconium_ingot> * 2, <ore:ingotMelodicAlloy>, null, 200, 2048, [<ore:ingotRefinedObsidian>, <ore:dustDraconium>], "Alloying");
ArcFurnace.addRecipe(<simplyjetpacks:metaitemmods:12>, <ore:ingotSoularium>, null, 200, 2048, [<ore:dustFluix> * 4, <ore:itemPulsatingCrystal>], "Alloying");
*/

/*
ArcFurnace.addRecipe(<thermalfoundation:material:128> * 2, <ore:oreCopper>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:128>, <ore:dustCopper>, null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:132> * 2, <ore:oreAluminium>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:132>, <ore:dustAluminium>, null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:131> * 2, <ore:oreLead>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:131>, <ore:dustLead>, null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:130> * 2, <ore:oreSilver>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:130>, <ore:dustSilver>, null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:123> * 2, <ore:oreNickel>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:123>, <ore:dustNickel>, null, 100, 512);
ArcFurnace.addRecipe(<nuclearcraft:ingot:4> * 2, <ore:oreUranium>, <immersiveengineering:material:7>, 200, 512);
ArcFurnace.addRecipe(<nuclearcraft:ingot:4>, <ore:dustUranium>, null, 100, 512);


ArcFurnace.addRecipe(<thermalfoundation:material:161>, <ore:dustConstantan>, null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:128>, <ore:dustElectrum>, null, 100, 512);
ArcFurnace.addRecipe(<thermalfoundation:material:160>, <ore:dustSteel>, null, 100, 512);
*/