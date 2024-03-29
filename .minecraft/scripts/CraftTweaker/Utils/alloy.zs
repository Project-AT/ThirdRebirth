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

//arcFurnace_energyModifier=0.157
//arcFurnace_timeModifier=0.8

//注意配方的项必须为4个，不能多也不能少，不然直接全用不了（
//Lv1
Lv1AlloyRecipe(<enderio:item_material:4> * 16, <embers:blend_caminite> * 8, <enderio:item_material:49>, null);
Lv1AlloyRecipe(<enderio:item_alloy_ingot:7>, <ore:Dawnstone>, <contenttweaker:soul_extract> * 4, null);
Lv1AlloyRecipe(<modularmachinery:itemmodularium> * 3, <ore:IronCompressed> * 2, <ore:Aluminum>, null);
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
Lv2AlloyRecipe(<enderio:item_alloy_ingot:3>, <ore:gemRedstone>, <ore:Bronze>, <ore:ingotElectricalSteel>);
Lv2AlloyRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, null);
Lv2AlloyRecipe(<refraction:reflective_alloy> * 5, <ore:ingotEnergeticSilver>, <ore:PureIron> * 3, <ore:Gold>);
Lv2AlloyRecipe(<ore:ingotMagnesiumDiboride>.firstItem * 3, <ore:Magnesium>, <ore:Boron> * 2, null);
Lv2AlloyRecipe(<ore:ingotLithiumManganeseDioxide>.firstItem * 2, <ore:ingotMagnesiumDiboride>, <ore:Lithium> * 2, null);
Lv2AlloyRecipe(<ore:ingotZircaloy>.firstItem * 8, <ore:Tin>, <ore:Zirconium> * 7, null);
Lv2AlloyRecipe(<ore:ingotTitaniumIridium>.firstItem * 2, <ore:Titanium>, <ore:Iridium>, null);
Lv2AlloyRecipe(<thermalfoundation:glass>, <ore:fusedQuartz>, <ore:Copper> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass:1>, <ore:fusedQuartz>, <ore:Tin> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass:2>, <ore:fusedQuartz>, <ore:Sliver> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass:4>, <ore:fusedQuartz>, <ore:Aluminum> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass:5>, <ore:fusedQuartz>, <ore:Nickel> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass:6>, <ore:fusedQuartz>, <ore:Platinum> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass:7>, <ore:fusedQuartz>, <ore:Iridium> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass:8>, <ore:fusedQuartz>, <ore:Mithril> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass_alloy>, <ore:fusedQuartz>, <ore:Steel> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass_alloy:1>, <ore:fusedQuartz>, <ore:Electrum> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass_alloy:2>, <ore:fusedQuartz>, <ore:Invar> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass_alloy:3>, <ore:fusedQuartz>, <ore:Bronze> * 4, null);
Lv2AlloyRecipe(<thermalfoundation:glass_alloy:4>, <ore:fusedQuartz>, <ore:Constantan> * 4, null);
Lv2AlloyRecipe(<ore:ingotTitaniumAluminide>.firstItem * 3, <ore:Titanium> * 1, <ore:HighStrengthAluminumAlloy> * 2, null);
Lv2AlloyRecipe(<ore:itemPulsatingCrystal>.firstItem, <ore:enderpearl>, <ore:Electricium> * 4, <ore:Diamond> * 2);
Lv2AlloyRecipe(<psi:material:4>, <ore:ingotPsi>, <ore:substanceIvory> * 8, <ore:nuggetTitanium>);
Lv2AlloyRecipe(<psi:material:3>, <ore:ingotPsi>, <enderio:item_material:50> * 8, null);
Lv2AlloyRecipe(<ore:itemMachineChassi>.firstItem, <ore:itemSimpleMachineChassi>, <ore:ingotDarkSteel> * 4, <ore:dyeMachine> * 2);

//Lv3
Lv3AlloyRecipe(<simplyjetpacks:metaitemmods:13>, <ore:Soularium>, <ore:dustFluix> * 4, <ore:itemVibrantCrystal>);
Lv3AlloyRecipe(<ore:ingotFerroboron>.firstItem * 2, <ore:IronCompressed>, <ore:Boron>, null);
Lv3AlloyRecipe(<ore:ingotHardCarbon>.firstItem, <ore:ingotHOPGraphite>, <ore:Diamond>, null);
Lv3AlloyRecipe(<ore:ingotThermoconducting>.firstItem * 2, <ore:ingotHardCarbon>, <ore:gemBoronArsenide>, null);
Lv3AlloyRecipe(<ore:ingotBrickNetherGlazed>.firstItem, <contenttweaker:glazed_refractory_brick>, <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), null);
Lv3AlloyRecipe(<nuclearcraft:alloy:10> * 3, <ore:Tough>, <ore:TitaniumIridium>, <ore:Signalum>);
Lv3AlloyRecipe(<thermalfoundation:material:165> * 8, <embers:ember_cluster>, <ore:ingotEnergeticSilver> * 4, <ore:ingotRedstoneAlloy> * 4);
Lv3AlloyRecipe(<extendedcrafting:material:48>, <ore:Enderium>, <extendedcrafting:material:41>, null);
Lv3AlloyRecipe(<draconicevolution:draconium_ingot> * 3, <ore:ingotMelodicAlloy>, <ore:ingotRefinedObsidian>, <ore:dustDraconium>);
Lv3AlloyRecipe(<simplyjetpacks:metaitemmods:12>, <ore:Soularium>, <ore:dustFluix> * 4, <ore:itemPulsatingCrystal>);
Lv3AlloyRecipe(<ore:ingotHSLASteel>.firstItem * 16, <ore:PureIron> * 15, <ore:dustCarbonManganese>, null);
Lv3AlloyRecipe(<ore:ingotZirconiumMolybdenum>.firstItem * 16, <ore:Zirconium>, <ore:dustMolybdenum> * 15, null);
Lv3AlloyRecipe(<thermalfoundation:glass_alloy:5>, <ore:fusedQuartz>, <ore:Signalum> * 4, null);
Lv3AlloyRecipe(<thermalfoundation:glass_alloy:6>, <ore:fusedQuartz>, <ore:Lumium> * 4, null);
Lv3AlloyRecipe(<thermalfoundation:glass_alloy:7>, <ore:fusedQuartz>, <ore:Enderium> * 4, null);
Lv3AlloyRecipe(<ore:itemEnhancedMachineChassi>.firstItem, <ore:itemSimpleMachineChassi>, <ore:ingotTough> * 4, <ore:dyeEnhancedMachine> * 2);

ArcFurnace.addRecipe(<ore:ingotFerroboron>.firstItem * 12, <ore:Steel> * 4, null, 500, 955, [<ore:Constantan>, <ore:Manganese>, <ore:Boron> * 6], "Alloying");
ArcFurnace.addRecipe(<pneumaticcraft:ingot_iron_compressed> * 12, <ore:Steel> * 8, null, 500, 955, [<ore:Manganese> * 2, <ore:Copper>, <ore:Nickel>], "Alloying");
ArcFurnace.addRecipe(<ore:ingotTitaniumAluminide>.firstItem * 9, <ore:Titanium> * 3, null, 500, 955, [<ore:Aluminum> * 4, <ore:Magnesium>, <ore:Copper>], "Alloying");
ArcFurnace.addRecipe(<ore:ingotMelodicAlloy>.firstItem * 2, <ore:ingotDarkSteel>.firstItem, null, 400, 955, [<ore:dustDimensional> * 2, <ore:Manganese>, <integrateddynamics:crystalized_chorus_chunk> * 4], "Alloying");
ArcFurnace.addRecipe(<ore:ingotFerroboron>.firstItem * 24, <ore:Steel> * 8, null, 625, 955, [<ore:Manganese> * 2, <ore:Copper>, <ore:Nickel>, <ore:Boron> * 12], "Alloying");
