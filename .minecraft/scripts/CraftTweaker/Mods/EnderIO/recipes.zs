#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material:69> * 2, [
	[<ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>],
    [null, <ore:ingotIron>, null],
    [<ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>]
], {<ore:artisansHammer> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material>, [
	[<enderio:item_material:69>,<enderio:item_material:69>,<enderio:item_material:69>],
    [<enderio:item_material:69>,<embers:mech_core>,        <enderio:item_material:69>],
    [<enderio:item_material:69>,<enderio:item_material:69>,<enderio:item_material:69>]
], {<ore:artisansHammer> : 4, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material:1>, [
	[<enderio:item_material:2>, <enderio:item_material:2>, <enderio:item_material:2>],
    [<enderio:item_material:2>, <embers:mech_core>, <enderio:item_material:2>],
    [<enderio:item_material:2>, <enderio:item_material:2>, <enderio:item_material:2>]
], {<ore:artisansDriver> : 10, <ore:artisansHammer> : 8} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_basic_capacitor>, [
	[null, <embers:nugget_dawnstone>, <ore:ingotHOPGraphite> | <ore:ingotPyrolyticCarbon>],
	[<embers:nugget_dawnstone>, <embers:plate_caminite> | <ore:plasticWhite>, <embers:nugget_dawnstone>],
    [<ore:ingotHOPGraphite> | <ore:ingotPyrolyticCarbon>, <embers:nugget_dawnstone>]
], {<ore:artisansDriver> : 1, <ore:artisansSolderer> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:block_simple_alloy_smelter>, 
    inputPattern(["SBS", "GCG", "SQS"])
        .with("S", <ore:ingotSteel>)
        .with("B", <ore:plateSteel>)
        .with("G", <ore:gearSteel>)
        .with("C", <ore:itemSimpleMachineChassi>)
        .with("Q", <immersiveengineering:metal_device1:1>).get()
, {<ore:artisansHammer> : 20, <ore:artisansSpanner> : 10});

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material:2> * 4, 
    inputPattern("LXL", " T ", "LXL")
        .with("L", <ore:itemSimpleChassiParts>)
        .with("X", <ore:ingotDarkSteel>)
        .with("T", <ore:dyeMachine>).get()
, {<ore:artisansHammer> : 10});