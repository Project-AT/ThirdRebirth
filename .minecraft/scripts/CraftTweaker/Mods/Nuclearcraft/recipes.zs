#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;
import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;

RecipeUtils.recipeTweak(true, <ore:ingotSiCSiCCMC>.firstItem, 
    RecipeUtils.createSurround(<embers:brick_caminite>, <ore:fiberSiliconCarbide>)
);

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:10>, [
    [<ore:itemChassiParts>, <ore:ingotTough>, <ore:itemChassiParts>],
    [<ore:ingotTough>, <pneumaticcraft:printed_circuit_board>, <ore:ingotTough>],
    [<ore:itemChassiParts>, <ore:ingotTough>, <ore:itemChassiParts>]
], {<ore:artisansDriver> : 36, <ore:artisansSpanner> : 49});

RecipeUtils.recipeTweak(true, <nuclearcraft:part> * 2, [
    [<ore:plateLead>, <ore:dustGraphite>],
    [<ore:dustGraphite>, <ore:plateLead>]
]);

RecipeUtils.recipeTweak(true, <nuclearcraft:part:1>, [
    [null, <ore:dustRedstone>],
    [<ore:ingotDarkSteel>, <ore:plateBasic>, <ore:ingotDarkSteel>],
    [null, <ore:dustRedstone>]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:12>, [
    [<ore:itemChassiParts>, <ore:ingotIronCompressed>, <ore:itemChassiParts>],
    [<ore:ingotIronCompressed>, <ore:ingotBronze>, <ore:ingotIronCompressed>],
    [<ore:itemChassiParts>, <ore:ingotIronCompressed>, <ore:itemChassiParts>]
], {<ore:artisansDriver> : 15, <ore:artisansSpanner> : 20});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:4>, [
    [<ore:wireCopper>, <ore:wireCopper>],
    [<ore:ingotIron>, <ore:ingotIron>],
    [<ore:wireCopper>, <ore:wireCopper>]
], {<ore:artisansDriver> : 12, <ore:artisansSpanner> : 8});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:7>, [
    [<ore:ingotFerroboron>, null, <ore:ingotFerroboron>],
    [<ore:dustRedstone>, <pneumaticcraft:printed_circuit_board>, <ore:dustRedstone>],
    [<ore:plateSteel>, <ore:solenoidCopper>, <ore:plateSteel>]
], {<ore:artisansDriver> : 15, <ore:artisansSolderer> : 20});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:8>, [
    [<ore:plateSteel>, <ore:plateSteel>],
    [<ore:solenoidCopper>, <ore:solenoidCopper>, <ore:stickIron>],
    [<ore:plateSteel>, <ore:plateSteel>]
], {<ore:artisansDriver> : 15, <ore:artisansSpanner> : 10});

electronicAssembly.addRecipe("engineer", true, <nuclearcraft:part:9>, [
    [null, null, <lightningcraft:rod:1>],
    [<nuclearcraft:alloy:6>, <lightningcraft:rod:1>],
    [<nuclearcraft:part:4>, <nuclearcraft:alloy:6>]
], {<ore:artisansDriver> : 10, <ore:artisansSolderer> : 15});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:rock_crusher>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:gearSteel>, <ore:itemSimpleMachineChassi>, <ore:gearSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
], {<ore:artisansDriver> : 51, <ore:artisansSpanner> : 49});

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
    [<ore:plateAdvanced>, <ore:ingotBrickNetherGlazed>, <ore:plateAdvanced>],
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
    [<extendedcrafting:material:7>, <ore:chassis>, <extendedcrafting:material:7>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 40});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:salt_mixer>, [
    [<ore:plateBasic>, <ore:ingotSteel>, <ore:plateBasic>],
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

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:assembler>, [
    [<ore:plateAdvanced>, <ore:ingotTough>, <ore:plateAdvanced>],
    [<ore:actuator>, <ore:chassis>, <ore:actuator>],
    [<ore:plateAdvanced>, <ore:servo>, <ore:plateAdvanced>]
], {<ore:artisansDriver> : 35, <ore:artisansSpanner> : 42});
