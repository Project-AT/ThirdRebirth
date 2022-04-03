#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

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

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:4>, [
    [<ore:wireCopper>, <ore:wireCopper>],
    [<ore:ingotIron>, <ore:ingotIron>],
    [<ore:wireCopper>, <ore:wireCopper>]
], {<ore:artisansDriver> : 12, <ore:artisansSpanner> : 8});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:7>, [
    [<ore:ingotFerroboron>, null, <ore:ingotFerroboron>],
    [<ore:dustRedstone>, <pneumaticcraft:printed_circuit_board>, <ore:dustRedstone>],
    [<ore:plateSteel>, <ore:solenoidCopper>, <ore:plateSteel>]
], {<ore:artisansDriver> : 15, <ore:artisansSolderer> : 20});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:8>, [
    [<ore:plateSteel>, <ore:plateSteel>],
    [<ore:solenoidCopper>, <ore:solenoidCopper>, <ore:stickIron>],
    [<ore:plateSteel>, <ore:plateSteel>]
], {<ore:artisansDriver> : 15, <ore:artisansSpanner> : 10});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:part:9>, [
    [null, null, <lightningcraft:rod:1>],
    [<nuclearcraft:alloy:6>, <lightningcraft:rod:1>],
    [<nuclearcraft:part:4>, <nuclearcraft:alloy:6>]
], {<ore:artisansDriver> : 10, <ore:artisansSolderer> : 15});

artisanUtils.RecipeTweakWithTools("engineer", true, <nuclearcraft:rock_crusher>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:gearSteel>, <ore:itemSimpleMachineChassi>, <ore:gearSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
], {<ore:artisansDriver> : 51, <ore:artisansSpanner> : 49});

