#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;
import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;


var recipeNames = [
    "embers:block_tank",
] as string[];

for str in recipeNames {
    recipes.removeByRecipeName(str);
}

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:heat_coil>, [
    [<ore:coilCopper>, <ore:coilCopper>, <ore:coilCopper>],
    [<embers:brick_caminite>, <ore:blockCopper>, <embers:brick_caminite>],
    [null, <embers:mech_core>, null]
], {<ore:artisansDriver> : 18, <ore:artisansSpanner> : 20} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <embers:sealed_planks> * 8,
    RecipeUtils.createSurround(<ore:slimeball>, <immersiveengineering:treated_wood>)
);

RecipeUtils.recipeTweak(false, <embers:plate_caminite_raw>, [
    [<embers:blend_caminite>, <embers:stamp_plate>.reuse() | <immersiveengineering:mold>.reuse()]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_bore>, [
    [<embers:stairs_caminite_brick>, <immersiveengineering:metal_decoration0:5>, <embers:stairs_caminite_brick>],
    [<immersiveengineering:material:9>, <embers:mech_core>, <immersiveengineering:material:9>],
    [<ore:gearSteel>, <ore:gearSteel>, <ore:gearSteel>]
], {<ore:artisansDriver> : 23, <ore:artisansSpanner> : 25} as int[IIngredient]);

electronicAssembly.addRecipe("engineer", true, <embers:archaic_circuit> * 2, [
    [<embers:archaic_brick>, <ore:wireCopper>, <embers:archaic_brick>],
    [<embers:archaic_brick>, <ore:plateCopper>, <embers:archaic_brick>],
    [<embers:archaic_brick>, <ore:wireCopper>, <embers:archaic_brick>]
], {<ore:artisansDriver> : 3, <ore:artisansSolderer> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:mech_core>, [
    [<ore:ingotSteel>, <ore:plateIron>, <ore:ingotSteel>],
    [<ore:plateLead>, <immersiveengineering:metal_decoration0:5>, <ore:plateLead>],
    [<ore:ingotSteel>, <ore:plateIron>, <ore:ingotSteel>]
], {<ore:artisansSpanner> : 15, <ore:artisansDriver> : 15} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:mixer>, [
    [<ore:plateSteel>, <immersiveengineering:metal_decoration0:4>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:fanSteel>, <ore:plateSteel>],
    [<embers:block_caminite_brick>, <embers:mech_core>, <embers:block_caminite_brick>]
], {<ore:artisansSpanner> : 18, <ore:artisansDriver> : 15} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:pump>, [
    [null, <ore:dustRedstone>], 
    [<embers:pipe>, <embers:plate_caminite>, <embers:pipe>],
    [null, <ore:dustRedstone>]
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

artisanUtils.RecipeTweakWithTools("basic", false, <embers:wrapped_sealed_planks>, [
    [<embers:sealed_planks>, <ore:barsIron>]
], {<ore:artisansHammer> | <ore:artisansFramingHammer> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("blacksmith", false, <embers:wrapped_sealed_planks>, [
    [<embers:sealed_planks>, <ore:barsIron>]
], {<ore:artisansHammer> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("carpenter", false, <embers:wrapped_sealed_planks>, [
    [<embers:sealed_planks>, <ore:barsIron>]
], {<ore:artisansFramingHammer> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:breaker>,
    inputPattern(["TDT", "LBL", "LRL"])
        .with("T", <ore:plateSteel>)
        .with("D", <ore:ingotSteel>)
        .with("L", <ore:ingotLead>)
        .with("B", <ore:plateLead>)
        .with("R", <ore:dustRedstone>).get()
, {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <embers:blend_caminite> * 12,
    inputPattern(["NLN", "KSK", "NYN"])
        .with('N', <contenttweaker:refractory_clay_ball>)
        .with("L", <ore:dustAluminum>)
        .with("K", <ore:blockClay>)
        .with("S", <ore:sand>)
        .with("Y", <ore:dustQuartz>).get()
, {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:stamper_base>, 
    inputPattern(["G G", "BTB", "KBK"])
        .with("G", <ore:ingotSteel>)
        .with("B", <contenttweaker:glazed_refractory_brick>)
        .with("K", <embers:block_caminite_brick>)
        .with("T", <minecraft:bucket>).get()
, {<ore:artisansHammer> : 13, <ore:artisansSpanner> : 6});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:stamper>, 
    inputPattern(["FGF", "TKT", "F F"])
        .with("F", <embers:brick_caminite>)
        .with("G", <ore:ingotSteel>)
        .with("T", <ore:ingotCopper>)
        .with("K", <ore:blockSteel>).get()
, {<ore:artisansHammer> : 15, <ore:artisansSpanner> : 8});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:item_transfer>,
    inputPattern(["QWQ", "EWE", "E E"])
        .with("Q", <ore:plateLead>)
        .with("W", <embers:item_pipe>)
        .with("E", <ore:ingotLead>).get()
, {<ore:artisansSpanner> : 8});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:fluid_transfer>,
    inputPattern(["QWQ", "EWE", "E E"])
        .with("Q", <ore:plateIron>)
        .with("W", <embers:item_pipe>)
        .with("E", <ore:ingotIron>).get()
, {<ore:artisansSpanner> : 8});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:bin>,
    inputPattern(["E E", "E E", "EQE"])
        .with("Q", <ore:plateIron>)
        .with("W", <embers:item_pipe>)
        .with("E", <ore:ingotIron>).get()
, {<ore:artisansSpanner> : 5});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:stone_valve>,
    inputPattern(["EEE", "W W", "EEE"])
        .with("Q", <ore:plateIron>)
        .with("W", <ore:ingotSteel>)
        .with("E", <embers:wall_caminite_brick>).get()
, {<ore:artisansSpanner> : 12});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:stone_edge>,
    inputPattern(["EEE", "W W", "EEE"])
        .with("Q", <ore:plateIron>)
        .with("W", <embers:brick_caminite>)
        .with("E", <embers:wall_caminite_brick>).get()
, {<ore:artisansTrowel> : 12});

artisanUtils.RecipeTweakWithTools_("engineer", true, <embers:block_tank>,
    inputPattern(["W W", "Q Q", "WEW"])
        .with("Q", <ore:plateIron>)
        .with("E", <ore:ingotSteel>)
        .with("W", <embers:brick_caminite>).get()
, {<ore:artisansSpanner> : 10});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:large_tank>,
    inputPattern(["W W", "E E", "WQW"])
        .with("Q", <embers:block_tank>)
        .with("E", <ore:plateSteel>)
        .with("W", <embers:stairs_caminite_brick>).get()
, {<ore:artisansTrowel> : 20});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_funnel>,
    inputPattern(["W W", "EQE", " E"])
        .with("Q", <embers:ember_receiver>)
        .with("E", <ore:plateDawnstone>)
        .with("W", <ore:ingotCopper>).get()
, {<ore:artisansDriver> : 14, <ore:artisansSpanner> : 15});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_pulser>,
    inputPattern([" E", " Q", " W"])
        .with("Q", <embers:ember_emitter>)
        .with("E", <ore:plateDawnstone>)
        .with("W", <ore:ingotSteel>).get()
, {<ore:artisansDriver> : 13, <ore:artisansSpanner> : 13});

electronicAssembly.addRecipe("engineer", true, <embers:spark_plug>,
    inputPattern(["E E", " W", " Q"])
        .with("Q", <embers:aspectus_silver>)
        .with("E", <ore:ingotAluminum>)
        .with("W", <ore:plateSteel>).get()
, {<ore:artisansDriver> : 12, <ore:artisansSpanner> : 13});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:mini_boiler>,
    inputPattern(["WWW", "E W", "WWW"])
        .with("Q", <embers:aspectus_silver>)
        .with("E", <ore:ingotCopper>)
        .with("W", <ore:plateIron>).get()
, {<ore:artisansDriver> : 12, <ore:artisansSpanner> : 14});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_receiver> * 2,
    inputPattern(["E E", "WQW"])
        .with("Q", <embers:plate_caminite>)
        .with("E", <ore:ingotIron>)
        .with("W", <ore:ingotCopper>).get()
, {<ore:artisansDriver> : 5, <ore:artisansSpanner> : 7});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_emitter> * 2,
    inputPattern([" W"," W", "EQE"])
        .with("Q", <embers:plate_caminite>)
        .with("E", <ore:ingotIron>)
        .with("W", <ore:ingotCopper>).get()
, {<ore:artisansDriver> : 5, <ore:artisansSpanner> : 7});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:boiler>, [
    [<ore:rodCopper>, <ore:ingotCopper>, <ore:rodCopper>],
    [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>],
    [<ore:ingotSteel>, <ore:blockCopper>, <ore:ingotSteel>]
], {<ore:artisansDriver> : 23, <ore:artisansSpanner> : 27} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:ember_activator>, [
    [<ore:rodCopper>, <ore:ingotCopper>, <ore:rodCopper>],
    [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>],
    [<embers:brick_caminite>, <ore:plateSteel>, <embers:brick_caminite>]
], {<ore:artisansDriver> : 20, <ore:artisansSpanner> : 18} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:cinder_plinth>, [
    [null, <ore:plateLead>],
    [<ore:ingotSilver>, <minecraft:furnace>, <ore:ingotSilver>],
    [<ore:plateLead>, <embers:block_caminite_brick>, <ore:plateLead>]
], {<ore:artisansDriver> : 24, <ore:artisansSpanner> : 23} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:crystal_cell>,
    inputPattern(["QAQ", "WAW", "OUO"])
        .with("Q", <ore:plateDawnstone>)
        .with("W", <ore:blockDawnstone>)
        .with("O", <embers:block_caminite_brick>)
        .with("U", <ore:blockCopper>)
        .with("A", <embers:crystal_ember>).get()
, {<ore:artisansSpanner> : 30, <ore:artisansDriver> : 28});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:copper_cell>.withTag({emberCapacity: 24000.0, ember: 0.0}),
    inputPattern(["QAQ", "AWA", "QAQ"])
        .with("A", <ore:ingotIron>)
        .with("W", <ore:blockCopper>)
        .with("Q", <embers:brick_caminite>).get()
, {<ore:artisansSpanner> : 22, <ore:artisansDriver> : 18});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:reaction_chamber>,
    inputPattern(["QQQ", "Q Q", "OAO"])
        .with("Q", <ore:plateConstantan>)
        .with("O", <ore:ingotBronze>)
        .with("A", <embers:spark_plug>).get()
, {<ore:artisansSpanner> : 18, <ore:artisansDriver> : 15});

artisanUtils.RecipeTweakWithTools("engineer", true, <embers:block_furnace>, [
    [<embers:plate_caminite>, null, <embers:plate_caminite>],
    [<ore:ingotSteel>, <ore:runeFireB>, <ore:ingotSteel>],
    [<ore:plateSteel>, <ore:coilCopper>, <ore:plateSteel>]
], {<ore:artisansSpanner> : 18, <ore:artisansDriver> : 17});

artisanUtils.RecipeTweakWithLiquid("carpenter", false, <embers:sealed_planks>, [
    [<ore:plankTreatedWood>]
], <liquid:slime> * 12);

artisanUtils.RecipeTweakWithLiquid("basic", false, <embers:sealed_planks>, [
    [<ore:plankTreatedWood>]
], <liquid:slime> * 18);

RecipeBuilder.get("blacksmith")
  .setShapeless([<embers:archaic_bricks>])
  .addTool(<ore:artisansHammer>, 1)
  .addOutput(<embers:archaic_brick> * 2)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .setExtraOutputOne(<embers:archaic_brick>, 0.75)
  .setExtraOutputTwo(<embers:archaic_brick>, 0.5)
  .create();

recipes.addShaped(<embers:archaic_light> * 2,
    [[<embers:archaic_brick>, <embers:archaic_brick>, <embers:archaic_brick>],
    [<embers:archaic_brick>, <ore:runeFireB>, <embers:archaic_brick>],
    [<embers:archaic_brick>, <embers:archaic_brick>, <embers:archaic_brick>]]
);

var emberIngot as IItemStack[] = [<embers:ingot_copper>, <embers:ingot_lead>, <embers:ingot_silver>, <embers:ingot_aluminum>, <embers:ingot_tin>, <embers:ingot_nickel>];

for Ingot in emberIngot {
    furnace.remove(Ingot);
}