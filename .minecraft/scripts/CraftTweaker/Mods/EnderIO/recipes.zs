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
], {<ore:artisansHammer> : 1, <ore:artisansSpanner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material:2> * 4, [
	[<enderio:item_material:69>, <nuclearcraft:alloy:1>, <enderio:item_material:69>],
    [null, <enderio:item_material:51>, null],
	[<enderio:item_material:69>, <nuclearcraft:alloy:1>, <enderio:item_material:69>]
], {<ore:artisansHammer> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material:1>, [
	[<enderio:item_material:2>, <enderio:item_material:2>, <enderio:item_material:2>],
    [<enderio:item_material:2>, <embers:mech_core>, <enderio:item_material:2>],
    [<enderio:item_material:2>, <enderio:item_material:2>, <enderio:item_material:2>]
], {<ore:artisansDriver> : 1, <ore:artisansHammer> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_basic_capacitor>, [
	[null, <embers:nugget_dawnstone>, <ore:ingotHOPGraphite>],
	[<embers:nugget_dawnstone>, <embers:plate_caminite>, <embers:nugget_dawnstone>],
    [<ore:ingotHOPGraphite>, <embers:nugget_dawnstone>]
], {<ore:artisansDriver> : 1, <ore:artisansSolderer> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <lightningcraft:lightning_cell:1>, [
	[<ore:rodGold>,       <ore:ingotSilver>,              <ore:rodGold>],
    [<ore:plateSkyfather>,<lightningcraft:lightning_cell>,<ore:plateSkyfather>],
    [<ore:rodGold>,       <ore:ingotSilver>,              <ore:rodGold>]
], {<ore:artisansDriver> : 1, <ore:artisansSpanner> : 1} as int[IIngredient]);