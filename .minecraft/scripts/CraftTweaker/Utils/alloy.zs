#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.immersiveengineering.ArcFurnace;
import mods.enderio.AlloySmelter;

// 3000rf/5s/100t 
//mods.enderio.AlloySmelter.addRecipe(IItemStack output, IIngredient[] input, @Optional int energyCost, @Optional float xp);
//mods.immersiveengineering.ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives, @Optional String specialRecipeType);
function Lv1AlloyRecipe(Lv1output as IItemStack, Lv1input1 as IIngredient, Lv1input2 as IIngredient, Lv1input3 as IIngredient){
    if(isNull(Lv1input3)){
        ArcFurnace.addRecipe(Lv1output, Lv1input1, null, 100, 640, [Lv1input2], "Alloying");
        AlloySmelter.addRecipe(Lv1output, [Lv1input1, Lv1input2], 4000);
    } else {
        ArcFurnace.addRecipe(Lv1output, Lv1input1, null, 125, 640, [Lv1input2 ,Lv1input3], "Alloying");
        AlloySmelter.addRecipe(Lv1output, [Lv1input1, Lv1input2, Lv1input3], 5000);
    }

}
function Lv2AlloyRecipe(Lv2output as IItemStack, Lv2input1 as IIngredient, Lv2input2 as IIngredient, Lv2input3 as IIngredient){
    if(isNull(Lv2input3)){
        ArcFurnace.addRecipe(Lv2output, Lv2input1, null, 225, 764, [Lv2input2], "Alloying");
        AlloySmelter.addRecipe(Lv2output, [Lv2input1, Lv2input2], 15000);
    } else {
        ArcFurnace.addRecipe(Lv2output, Lv2input1, null, 250, 764, [Lv2input2 ,Lv2input3], "Alloying");
        AlloySmelter.addRecipe(Lv2output, [Lv2input1, Lv2input2, Lv2input3], 20000);
    }

}
function Lv3AlloyRecipe(Lv3output as IItemStack, Lv3input1 as IIngredient, Lv3input2 as IIngredient, Lv3input3 as IIngredient){
    if(isNull(Lv3input3)){
        ArcFurnace.addRecipe(Lv3output, Lv3input1, null, 350, 830, [Lv3input2], "Alloying");
        AlloySmelter.addRecipe(Lv3output, [Lv3input1, Lv3input2], 30000);
    } else {
        ArcFurnace.addRecipe(Lv3output, Lv3input1, null, 375, 830, [Lv3input2 ,Lv3input3], "Alloying");
        AlloySmelter.addRecipe(Lv3output, [Lv3input1, Lv3input2, Lv3input3], 40000);
    }

}

//注意配方的项必须为4个，不能多也不能少，不然直接全用不了（
//Lv1
Lv1AlloyRecipe(<enderio:item_material:4> * 16, <embers:blend_caminite> * 8, <enderio:item_material:49>, null);
Lv1AlloyRecipe(<enderio:item_alloy_ingot:7>, <ore:Dawnstone>, <contenttweaker:soul_extract> * 4, null);
Lv1AlloyRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotIronCompressed> * 2, <ore:Aluminum>, null);
Lv1AlloyRecipe(<contenttweaker:glazed_refractory_brick>, <ore:ingotBrickNether>, <contenttweaker:refractory_clay_ball> * 2, <contenttweaker:glaze>);
Lv1AlloyRecipe(<enderio:item_material:50> * 2, <psi:material:5> * 2, <quark:black_ash> * 4, <ore:slimeball>);
Lv1AlloyRecipe(<enderio:item_material:49> * 2, <ore:dyeBrown> , <ore:itemSlagRich> * 2, <ore:slimeball>);
Lv1AlloyRecipe(<ore:ingotRoseGold>.firstItem * 2, <ore:Gold>, <ore:Copper>, null);
Lv1AlloyRecipe(<embers:archaic_brick> * 2, <ore:soulSand>, <ore:netherrack>, null);
Lv1AlloyRecipe(<ore:ingotConductiveIron>.firstItem, <ore:PureIron>, <ore:dustRedstone>, null);
Lv1AlloyRecipe(<ore:ingotSteel>.firstItem, <ore:PureIron>, <ore:Coke>, null);
Lv1AlloyRecipe(<ore:ingotSteel>.firstItem * 2, <ore:CrudeSteel> * 2, <ore:Coke>, null);
Lv1AlloyRecipe(<ore:ingotElectrum>.firstItem * 2, <ore:Gold> , <ore:Sliver>, null);
Lv1AlloyRecipe(<ore:ingotBronze>.firstItem * 4, <ore:Tin> , <ore:Copper> * 3, null);
Lv1AlloyRecipe(<ore:ingotInvar>.firstItem * 3, <ore:Nickel> , <ore:Iron> * 2, null);
Lv1AlloyRecipe(<ore:ingotConstantan>.firstItem * 2, <ore:Copper> , <ore:Nickel>, null);

//Lv2
Lv2AlloyRecipe(<nuclearcraft:alloy:1> * 2, <ore:HighStrengthAluminumAlloy>, <ore:ingotDarkSteel>, null);
Lv2AlloyRecipe(<contenttweaker:high_strength_aluminum_alloy_ingot> * 6, <ore:Aluminum> * 4, <ore:Magnesium>, <ore:Copper>);
Lv2AlloyRecipe(<enderio:item_alloy_ingot> * 5, <ore:Aluminum>, <ore:Nickel>, <ore:Steel> * 3);
Lv2AlloyRecipe(<pneumaticcraft:ingot_iron_compressed> * 6, <ore:Steel> * 4, <ore:Constantan>, <ore:Manganese>);
Lv2AlloyRecipe(<thermalfoundation:material:166> * 2, <extendedcrafting:material:7> * 2, <ore:ingotRefinedGlowstone> ,<ore:ingotEnergeticSilver>);
Lv2AlloyRecipe(<enderio:item_alloy_ingot:8>, <ore:ingotDarkSteel>, <ore:dustDimensional> * 2, null);
Lv2AlloyRecipe(<thermalfoundation:material:167> * 2, <ore:ingotEnderiumBase>, <integrateddynamics:crystalized_chorus_chunk> * 4, <ore:ingotVibrantAlloy>);
Lv2AlloyRecipe(<enderio:item_alloy_endergy_ingot:2> * 2, <ore:ingotEndSteel>, <integrateddynamics:crystalized_chorus_chunk> * 4, <ore:Manganese>);
Lv2AlloyRecipe(<enderio:item_alloy_ingot:6> * 2, <ore:dustPetrotheum>, <ore:Steel> * 2, <ore:gemEnderBiotite>);
Lv2AlloyRecipe(<enderio:item_alloy_ingot:6> * 2, <ore:dustPetrotheum>, <ore:Steel> * 2, <ore:substanceEbony>);
Lv2AlloyRecipe(<enderio:item_alloy_ingot:3> * 2, <ore:gemRedstone>, <ore:Bronze>, <ore:ingotElectricalSteel>);
Lv2AlloyRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, null);
Lv2AlloyRecipe(<refraction:reflective_alloy> * 5, <ore:Iron> * 3, <ore:ingotEnergeticSilver>, <ore:Gold>);
Lv2AlloyRecipe(<enderio:item_alloy_endergy_ingot:1>, <ore:itemPulsatingPowder>, <ore:Platinum>, null);

//Lv3
Lv3AlloyRecipe(<simplyjetpacks:metaitemmods:13>, <ore:Soularium>, <ore:dustFluix> * 4, <ore:itemPulsatingCrystal>);
Lv3AlloyRecipe(<ore:ingotFerroboron>.firstItem * 2, <ore:IronCompressed>, <ore:Boron>, null);
Lv3AlloyRecipe(<nuclearcraft:alloy:10> * 3, <ore:Tough>, <ore:ingotTitaniumIridium>, <ore:ingotSignalum>);
Lv3AlloyRecipe(<thermalfoundation:material:165> * 8, <embers:ember_cluster>, <ore:ingotEnergeticSilver> * 4, <ore:ingotRedstoneAlloy> * 4);
Lv3AlloyRecipe(<extendedcrafting:material:48>, <ore:ingotEnderium>, <extendedcrafting:material:41>, null);
Lv3AlloyRecipe(<draconicevolution:draconium_ingot> * 3, <ore:ingotMelodicAlloy>, <ore:ingotRefinedObsidian>, <ore:dustDraconium>);
Lv3AlloyRecipe(<simplyjetpacks:metaitemmods:12>, <ore:Soularium>, <ore:dustFluix> * 4, <ore:itemPulsatingCrystal>);
ArcFurnace.addRecipe(<pneumaticcraft:ingot_iron_compressed> * 12, <ore:Steel> * 8, null, 375, 830, [<ore:Manganese> * 2, <ore:Copper>, <ore:Nickel>], "Alloying");