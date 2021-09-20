#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweak("basic", true, <embers:blend_caminite> * 12, [
    [<minecraft:clay_ball>, <ore:dustAluminum>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <harvestcraft:mixingbowlitem>.reuse(), <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <ore:dustQuartz>|<ore:dustNetherQuartz>, <minecraft:clay_ball>]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:block_furnace>,[
	[<embers:plate_caminite>, <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_wild_fire"}}), <embers:plate_caminite>],
    [<ore:ingotSteel>, <botania:rune:1>, <ore:ingotSteel>],
    [<ore:plateSteel>, <immersiveengineering:metal_device1:1>,<ore:plateSteel>]
], {<ore:artisansDriver> : 1, <ore:artisansSpanner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_bore>,[
	[<embers:stairs_caminite_brick>, <immersiveengineering:metal_decoration0:5>, <embers:stairs_caminite_brick>],
    [<immersiveengineering:material:9>, <embers:mech_core>, <immersiveengineering:material:9>],
    [<ore:gearSteel>, <ore:gearSteel>, <ore:gearSteel>]
], {<ore:artisansSpanner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:archaic_circuit> * 2, [
	[<embers:archaic_brick>,<ore:wireCopper>, <embers:archaic_brick>],
    [<embers:archaic_brick>,<ore:plateCopper>,<embers:archaic_brick>],
    [<embers:archaic_brick>,<ore:wireCopper>, <embers:archaic_brick>]
], {<ore:artisansDriver> : 2, <ore:artisansSolderer> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:mech_core>,[
	[<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>],
    [<ore:plateLead>, <ore:gearSteel>, <ore:plateLead>],
    [<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>]
],{<ore:artisansSpanner> : 1} as int[IIngredient]);