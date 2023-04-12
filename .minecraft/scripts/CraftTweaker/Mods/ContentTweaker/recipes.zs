#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.grassUtils.StringHelper;
import scripts.CraftTweaker.Utils.artisanUtils;
import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;
import mods.artisanworktables.builder.RecipeBuilder;


<contenttweaker:four_leaf_clover_necklace>.addShiftTooltip(game.localize("thirdrebirth.title.flcn.tooltip"));

furnace.addRecipe(<ore:ingotCrudeSteel>.firstItem, <ore:oreCrudeSteel>);
furnace.addRecipe(<ore:ingotCrudeSteel>.firstItem, <ore:dustCrudeSteel>);
furnace.addRecipe(<contenttweaker:stamp_nugget>, <contenttweaker:raw_stamp_nugget>);
furnace.addRecipe(<contenttweaker:refractory_brick>, <contenttweaker:refractory_clay_ball>);
furnace.addRecipe(<enderio:item_material:5>, <contenttweaker:crude_silicon_dust>);
furnace.addRecipe(<appliedenergistics2:material:5>, <contenttweaker:silicon_dust>);

recipes.addShapeless(<contenttweaker:pcb_substrate>,
    [<ore:plasticGreen>, <ore:plateCopper>
]);

RecipeUtils.recipeTweak(true, <contenttweaker:villager_language_dictionary>, [
    [<ore:leather>,<contenttweaker:dictionary_paper>],
    [<contenttweaker:dictionary_paper>,<contenttweaker:dictionary_paper>]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:raw_stamp_nugget>, [
    [null, <embers:blend_caminite>],
    [<embers:blend_caminite>, <embers:blend_caminite>, <embers:blend_caminite>],
    [null, <embers:blend_caminite>]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:four_leaf_clover_necklace>, [
    [null, <contenttweaker:straw_rope>],
    [<contenttweaker:straw_rope>, null, <contenttweaker:straw_rope>],
    [null, <contenttweaker:four_leaf_clover>]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:blast_furnace_fuel>, [
    [<ore:fuelCoke>, <ore:dustCharcoal>],
    [<ore:dustCharcoal>, <ore:dustCharcoal>]
]);

//玫瑰金粉
RecipeUtils.recipeTweak(false, <ore:dustRoseGold>.firstItem * 2, [
    [<ore:dustCopper>, <ore:dustGold>]
]);

//手动驱魔配方
RecipeUtils.recipeTweak(false, <contenttweaker:pure_iron_ingot>, [
    [<botania:spellcloth>, <botania:manaresource>]
]);

//手动驱魔配方
RecipeUtils.recipeTweak(false, <ore:blockPureIron>.firstItem, [
    [<botania:spellcloth>, <botania:storage>]
]);

artisanUtils.RecipeTweakWithTools("basic", true, <contenttweaker:refractory_clay_ball> * 7, [
    [<ore:clayBall>, <ore:clayBall>, <ore:clayBall>],
    [<ore:dustCoal>, <ore:clayBall>, <ore:dustQuartz>],
    [<ore:clayBall>, <ore:clayBall>, <ore:clayBall>],
], {<ore:artisansMortar> : 7} as int[IIngredient]);

artisanUtils.RecipeTweakWithAll("chemist", true, <contenttweaker:elixir_eyesight>, [
    [null, <roots:wildewheet>],
    [<roots:salmon_of_knowledge>, <minecraft:glass_bottle>, <roots:moonglow_leaf>],
    [null, <roots:cloud_berry>]
], <liquid:water> * 250, {<ore:artisansBeaker> : 135} as int[IIngredient]);

artisanUtils.RecipeTweakWithAll("mage", true, <contenttweaker:ender_portal>, [
    [<ore:ingotEnderiumBase>, <ore:pearlEnderEye>, <ore:ingotEnderiumBase>],
    [<ore:ingotEnderiumBase>, <contenttweaker:teleport_rune>, <ore:ingotEnderiumBase>],
    [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]
], <liquid:ender> * 1000, {<ore:artisansAthame> : 64, <ore:artisansGrimoire> : 64} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <contenttweaker:mana_crystal>, 
    inputPattern("ABA", "GFG", "ABA")
        .with("B", <ore:manaPearl>)
        .with("G", <ore:gemDiamond>)
        .with("F", NACRE_PEARL)
        .with("A", <roots:dewgonia>).get()
, {<ore:artisansGrimoire> : 30, <ore:artisansAthame> : 30} as int[IIngredient]);

electronicAssembly.addRecipe("engineer", true, <contenttweaker:sensitive_element> * 3, 
    inputPattern("Z Z", "GFG", "XZX")
        .with("Z", <ore:plasticWhite>)
        .with("G", <enderio:item_material:5>)
        .with("F", <ore:dustGermanium>)
        .with("X", <ore:wireElectrum>).get()
, {<ore:artisansSolderer> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <contenttweaker:calm>, [
    [<ore:gemRime>, <ore:ingotSilver>, <bountifulbaubles:spectralsilt>],
    [<ore:ingotSilver>, <ore:runePrideB>, <ore:ingotSilver>],
    [<bountifulbaubles:spectralsilt>, <ore:ingotSilver>, <bountifulbaubles:spectralsilt>]
], {<ore:artisansGemCutter> : 35, <ore:artisansGrimoire> : 50} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <contenttweaker:fury>, [
    [<ore:gemAmethyst>, <ore:ingotRoseGold>, <bountifulbaubles:spectralsilt>],
    [<ore:ingotRoseGold>, <ore:runeWrathB>, <ore:ingotRoseGold>],
    [<bountifulbaubles:spectralsilt>, <ore:ingotRoseGold>, <bountifulbaubles:spectralsilt>]
], {<ore:artisansGemCutter> : 25, <ore:artisansGrimoire> : 50} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <contenttweaker:tinned_copper_wire>, [
    [<ore:wireCopper>, <ore:nuggetTin>]
], {<ore:artisansBurner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithLiquid("engineer", false, <contenttweaker:tinned_copper_wire>, [
    [<ore:wireCopper>]
], <liquid:tin> * 16);

//锭：块，粒：锭
var recipe as IOreDictEntry[IOreDictEntry] = {
    <ore:ingotTough> : <ore:blockTough>,
    <ore:ingotExtreme> : <ore:blockExtreme>,
    <ore:ingotRustyIron> : <ore:blockRustyIron>,
    <ore:ingotHighStrengthAluminumAlloy> : <ore:blockHighStrengthAluminumAlloy>,
    <ore:ingotPureIron> : <ore:blockPureIron>,
    <ore:ingotRoseGold> : <ore:blockRoseGold>,
    <ore:ingotSky> : <ore:blockSky>,
    <ore:crystalEmber> : <ore:blockEmber>,
    <ore:nuggetGermanium> : <ore:ingotGermanium>,
    <ore:ingotGermanium> : <ore:blockGermanium>,
    <ore:nuggetRoseGold> : <ore:ingotRoseGold>,
    <ore:nuggetPureIron> : <ore:ingotPureIron>,
};

for k, v in recipe {
    addRecipe(k, v);
}

function addRecipe(b as IOreDictEntry, a as IOreDictEntry) {
    RecipeUtils.recipeTweak(true, a.firstItem, RecipeUtils.createFull3(b));
    RecipeUtils.recipeTweak(false, b.firstItem * 9, [[a]]);
}

RecipeUtils.recipeTweak(false, <contenttweaker:inactive_energytablet>, [[<mekanism:energytablet>]]);
RecipeUtils.recipeTweak(true, <contenttweaker:inactive_energytablet>, [
    [<ore:dustRedstone>, <ore:ingotGold>, <ore:dustRedstone>],
    [<mekanism:enrichedalloy>, <ore:ingotGold>, <mekanism:enrichedalloy>],
    [<ore:dustRedstone>, <ore:ingotGold>, <ore:dustRedstone>]
]);

RecipeUtils.recipeTweak(false, <contenttweaker:inactive_view_cell>, [[<appliedenergistics2:view_cell>]]);
RecipeUtils.recipeTweak(true, <contenttweaker:inactive_view_cell>, 
    RecipeUtils.createCrossWithCore(<ore:dustGlowstone>, <ore:ingotElectricalSteel> | <ore:ingotPureIron>, <ore:fusedQuartz>)
);

recipes.addShapeless(<contenttweaker:research_point_lv0> * 2, [<ore:paper>, <ore:paper>, <ore:feather>.reuse(), <ore:dyeBlack>]);

RecipeBuilder.get("basic")
  .setShapeless([<ore:paper>])
  .addTool(<ore:artisansPencil>, 20)
  .addOutput(<contenttweaker:research_point_lv0>)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("designer")
  .setShapeless([<ore:paper>])
  .addTool(<ore:artisansPencil>, 10)
  .addOutput(<contenttweaker:research_point_lv0>)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .create();