#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <embers:sealed_planks> * 8,
    RecipeUtils.createSurround(<ore:slimeball>, <immersiveengineering:treated_wood>)
);

RecipeUtils.recipeTweak(true, <embers:plate_caminite_raw>, [
    [<embers:blend_caminite>, <embers:stamp_plate>.reuse() | <immersiveengineering:mold>.reuse()]
]);

artisanUtils.RecipeTweak("basic", true, <embers:blend_caminite> * 12, [
    [<minecraft:clay_ball>, <ore:dustAluminum>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <harvestcraft:mixingbowlitem>.reuse(), <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <ore:dustQuartz>|<ore:dustNetherQuartz>, <minecraft:clay_ball>]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:block_furnace>, [
	[<embers:plate_caminite>, <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_wild_fire"}}), <embers:plate_caminite>],
    [<ore:ingotSteel>, <botania:rune:1>, <ore:ingotSteel>],
    [<ore:plateSteel>, <immersiveengineering:metal_device1:1>,<ore:plateSteel>]
], {<ore:artisansDriver> : 1, <ore:artisansSpanner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_bore>, [
	[<embers:stairs_caminite_brick>, <immersiveengineering:metal_decoration0:5>, <embers:stairs_caminite_brick>],
    [<immersiveengineering:material:9>, <embers:mech_core>, <immersiveengineering:material:9>],
    [<ore:gearSteel>, <ore:gearSteel>, <ore:gearSteel>]
], {<ore:artisansSpanner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:archaic_circuit> * 2, [
	[<embers:archaic_brick>,<ore:wireCopper>, <embers:archaic_brick>],
    [<embers:archaic_brick>,<ore:plateCopper>,<embers:archaic_brick>],
    [<embers:archaic_brick>,<ore:wireCopper>, <embers:archaic_brick>]
], {<ore:artisansDriver> : 2, <ore:artisansSolderer> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:mech_core>, [
	[<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>],
    [<ore:plateLead>, <ore:gearSteel>, <ore:plateLead>],
    [<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>]
], {<ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:mixer>, [
    [<ore:plateSteel>, <immersiveengineering:metal_decoration0:4>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:fanSteel>, <ore:plateSteel>],
    [<embers:block_caminite_brick_slab_double>, <embers:mech_core>, <embers:block_caminite_brick_slab_double>]
], {<ore:artisansSpanner> : 10, <ore:artisansDriver> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:pump>, [
    [null, <ore:dustRedstone>, null], 
    [<embers:pipe>, <embers:plate_caminite>, <embers:pipe>],
    [null, <ore:dustRedstone>, null]
], {<ore:artisansSpanner> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:item_pump>, [
    [null, <ore:dustRedstone>, null], 
    [<embers:item_pipe>, <embers:plate_caminite>, <embers:item_pipe>],
    [null, <ore:dustRedstone>, null]
], {<ore:artisansSpanner> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:pipe> * 8, [
    [<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>]
], {<ore:artisansSpanner> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:item_pipe> * 8, [
    [<ore:ingotLead>, <ore:plateLead>, <ore:ingotLead>]
], {<ore:artisansSpanner> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("base", true, <embers:blend_caminite> * 8, [
    [<contenttweaker:refractory_clay_ball>, <ore:dustAluminum>, <contenttweaker:refractory_clay_ball>],
    [<ore:blockClay>, <ore:sand>, <ore:blockClay>],
    [<contenttweaker:refractory_clay_ball>, <ore:dustQuartz>, <contenttweaker:refractory_clay_ball>]
], {<ore:artisansHammer> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("base", false, <embers:wrapped_sealed_planks>, [
    [<embers:sealed_planks>, <ore:barsIron>]
], {<ore:artisansHammer> : 1} as int[IIngredient]);