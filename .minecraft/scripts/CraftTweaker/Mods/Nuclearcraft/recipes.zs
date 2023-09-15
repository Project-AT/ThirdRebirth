#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;
import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;

recipes.remove(<nuclearcraft:compound:1>);

RecipeUtils.recipeTweak(true, <ore:ingotSiCSiCCMC>.firstItem, 
    RecipeUtils.createSurround(<ore:ingotBrickNetherGlazed>, <ore:fiberSiliconCarbide>)
);

var dusts as IItemStack[] = [
    <nuclearcraft:dust>,
    <nuclearcraft:dust:1>,
    <nuclearcraft:dust:2>,
];

for i in dusts {
    furnace.remove(<*>, i);
}

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:10>, [
    [<ore:itemChassiParts>, <ore:ingotTough>, <ore:itemChassiParts>],
    [<ore:ingotTough>, <pneumaticcraft:printed_circuit_board>, <ore:ingotTough>],
    [<ore:itemChassiParts>, <ore:ingotTough>, <ore:itemChassiParts>]
], {<ore:artisansDriver> : 36, <ore:artisansSpanner> : 49});

RecipeUtils.recipeTweak(true, <nuclearcraft:part> * 2, [
    [<ore:plateLead>, <ore:pyrolyticCarbon>],
    [<ore:pyrolyticCarbon>, <ore:plateLead>]
]);

RecipeUtils.recipeTweak(false, <nuclearcraft:fission_glass>, [
    [<nuclearcraft:fission_casing>, <ore:blockGlassHardened>]
]);

RecipeUtils.recipeTweak(true, <nuclearcraft:part:14>, [
    [<ore:plateAdvanced>, <ore:ingotFerroboron>, <ore:plateAdvanced>],
    [<ore:ingotFerroboron>, null, <ore:ingotFerroboron>],
    [<ore:plateAdvanced>, <ore:ingotFerroboron>, <ore:plateAdvanced>]
]);

RecipeUtils.recipeTweak(true, <nuclearcraft:part:1>, [
    [null, <ore:ingotRedstoneAlloy>],
    [<ore:ingotFerroboron>, <ore:plateBasic>, <ore:ingotFerroboron>],
    [null, <ore:ingotRedstoneAlloy>]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:12>, [
    [<ore:itemChassiParts>, <ore:ingotIronCompressed>, <ore:itemChassiParts>],
    [<ore:ingotIronCompressed>, <ore:ingotBronze>, <ore:ingotIronCompressed>],
    [<ore:itemChassiParts>, <ore:ingotIronCompressed>, <ore:itemChassiParts>]
], {<ore:artisansDriver> : 15, <ore:artisansSpanner> : 20});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:4>, [
    [<ore:wireCopper>, <ore:wireCopper>],
    [<ore:ingotSmithingIron>, <ore:ingotSmithingIron>],
    [<ore:wireCopper>, <ore:wireCopper>]
], {<ore:artisansDriver> : 12, <ore:artisansSpanner> : 8});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:7>, [
    [<ore:ingotFerroboron>, null, <ore:ingotFerroboron>],
    [<ore:ingotRedstoneAlloy>, <pneumaticcraft:printed_circuit_board>, <ore:ingotRedstoneAlloy>],
    [<ore:plateSteel>, <ore:solenoidCopper>, <ore:plateSteel>]
], {<ore:artisansDriver> : 15, <ore:artisansSolderer> : 20});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:8>, [
    [<ore:plateSteel>, <ore:plateSteel>],
    [<ore:solenoidCopper>, <ore:solenoidCopper>, <ore:stickSteel>],
    [<ore:plateSteel>, <ore:plateSteel>]
], {<ore:artisansDriver> : 15, <ore:artisansSpanner> : 10});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:9>, [
    [null, null, <ore:stickSteel>],
    [<ore:ingotFerroboron>, <ore:stickSteel>],
    [<ore:solenoidCopper>, <ore:ingotFerroboron>]
], {<ore:artisansDriver> : 10, <ore:artisansSolderer> : 15});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:rock_crusher>, [
    [null, <minecraft:piston>, null],
    [<ore:gearSteel>, <ore:itemSimpleMachineChassi>, <ore:gearSteel>],
    [null, <minecraft:piston>, null]
], {<ore:artisansDriver> : 21, <ore:artisansSpanner> : 29});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:crystallizer>, [
    [<ore:plateAdvanced>, <ore:solenoidCopper>, <ore:plateAdvanced>],
    [<ore:solenoidCopper>, <ore:chassis>, <ore:solenoidCopper>],
    [<ore:plateAdvanced>, <minecraft:cauldron>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 30, <ore:artisansSpanner> : 28});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:enricher>, [
    [<ore:plateAdvanced>, <enderio:item_basic_capacitor>, <ore:plateAdvanced>],
    [<minecraft:hopper>, <ore:chassis>, <flopper:flopper>],
    [<ore:plateAdvanced>, <ore:motor>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 28, <ore:artisansSpanner> : 32});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:extractor>, [
    [<ore:plateAdvanced>, <enderio:item_basic_capacitor>, <ore:plateAdvanced>],
    [<flopper:flopper>, <ore:chassis>, <flopper:flopper>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 32, <ore:artisansSpanner> : 25});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:centrifuge>, [
    [<ore:plateAdvanced>, <ore:ingotFerroboron>, <ore:plateAdvanced>],
    [<ore:motor>, <ore:chassis>, <ore:motor>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 32});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:separator>, [
    [<ore:plateBasic>, <ore:motor>, <ore:plateBasic>],
    [<ore:hopper>, <ore:chassis>, <ore:hopper>],
    [<ore:plateBasic>, <ore:motor>, <ore:plateBasic>]
], {<ore:artisansDriver> : 28, <ore:artisansSpanner> : 25});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:decay_hastener>, [
    [<nuclearcraft:part:1>, <extendedcrafting:material:7>, <nuclearcraft:part:1>],
    [<ore:ingotEnderiumBase>, <ore:chassis>, <ore:ingotEnderiumBase>],
    [<nuclearcraft:part:1>, <ore:solenoidCopper>, <nuclearcraft:part:1>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 40});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:infuser>, [
    [<ore:plateAdvanced>, <flopper:flopper>, <ore:plateAdvanced>],
    [<enderio:item_basic_capacitor>, <ore:chassis>, <enderio:item_basic_capacitor>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 38});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:melter>, [
    [<ore:plateAdvanced>, <teslathingies:item_liquefier>, <ore:plateAdvanced>],
    [<ore:ingotBrickNetherGlazed>, <ore:chassis>, <ore:ingotBrickNetherGlazed>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 38, <ore:artisansSpanner> : 42});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:supercooler>, [
    [<ore:plateAdvanced>, <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}), <ore:plateAdvanced>],
    [<ore:ingotHardCarbon>, <ore:chassis>, <ore:ingotHardCarbon>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 38});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:electrolyzer>, [
    [<ore:plateAdvanced>, <immersiveengineering:graphite_electrode>, <ore:plateAdvanced>],
    [<ore:solenoidCopper>, <ore:chassis>, <ore:solenoidCopper>],
    [<ore:plateAdvanced>, <ore:motor>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 32});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:ingot_former>, [
    [<ore:plateBasic>, <ore:hopper>, <ore:plateBasic>],
    [<ore:ingotFerroboron>, <ore:chassis>, <ore:ingotFerroboron>],
    [<ore:plateBasic>, <ore:ingotTough>, <ore:plateBasic>]
], {<ore:artisansDriver> : 30, <ore:artisansSpanner> : 28});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:pressurizer>, [
    [<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>],
    [<ore:actuator>, <ore:chassis>, <ore:actuator>],
    [<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 32, <ore:artisansSpanner> : 38});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:chemical_reactor>, [
    [<ore:plateAdvanced>, <ore:motor>, <ore:plateAdvanced>],
    [<embers:reaction_chamber>, <ore:chassis>, <embers:reaction_chamber>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 40});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:salt_mixer>, [
    [<ore:plateBasic>, <teslathingies:fluid_compound_producer>, <ore:plateBasic>],
    [<flopper:flopper>, <ore:chassis>, <flopper:flopper>],
    [<ore:plateBasic>, <ore:motor>, <ore:plateBasic>]
], {<ore:artisansDriver> : 28, <ore:artisansSpanner> : 32});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:manufactory>, [
    [<ore:plateBasic>, <ore:gemRedstone>, <ore:plateBasic>],
    [<ore:ingotDarkSteel>, <ore:steelFrame>, <ore:ingotDarkSteel>],
    [<ore:plateBasic>, <ore:solenoidCopper>, <ore:plateBasic>]
], {<ore:artisansDriver> : 23, <ore:artisansSpanner> : 25});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:fuel_reprocessor>, [
    [<ore:plateBasic>, <ore:ingotFerroboron>, <ore:plateBasic>],
    [<ore:ingotTough>, <ore:chassis>, <ore:ingotTough>],
    [<ore:plateBasic>, <ore:motor>, <ore:plateBasic>]
], {<ore:artisansDriver> : 25, <ore:artisansSpanner> : 22});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:alloy_furnace>, [
    [<ore:plateBasic>, <minecraft:furnace>, <ore:plateBasic>],
    [<contenttweaker:glazed_refractory_brick>, <ore:chassis>, <contenttweaker:glazed_refractory_brick>],
    [<ore:plateBasic>, <ore:solenoidCopper>, <ore:plateBasic>]  
], {<ore:artisansDriver> : 15, <ore:artisansSpanner> : 18});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:assembler>, [
    [<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>],
    [<ore:actuator>, <ore:chassis>, <ore:actuator>],
    [<ore:plateAdvanced>, <contenttweaker:germanium_integrated_circuit_board>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 42});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:solid_fission_controller>, [
    [<ore:plateAdvanced>, <ore:ingotExtreme>, <ore:plateAdvanced>],
    [<modularmachinery:blockcasing:5>, <nuclearcraft:part:12>, <modularmachinery:blockcasing:5>],
    [<ore:plateAdvanced>, <ore:ingotExtreme>, <ore:plateAdvanced>]
], {<ore:artisansSolderer> : 51, <ore:artisansDriver> : 48});

RecipeUtils.recipeTweak(true, <nuclearcraft:alloy:13>, 
    inputPatternGet(["AA", "AA"], {
        "A" : <nuclearcraft:part:13>
}));

RecipeUtils.recipeTweak(true, <nuclearcraft:compound:9> * 8 , 
    RecipeUtils.createCrossWithCore(<ore:dustLumium>, <ore:dustEndstone>, <lightningcraft:material:12>)
);