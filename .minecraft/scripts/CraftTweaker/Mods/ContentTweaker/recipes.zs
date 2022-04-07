#priority 5
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.naturesaura.Altar;

import scripts.grassUtils.RecipeUtils;
import scripts.grassUtils.StringHelper;
import scripts.CraftTweaker.Utils.artisanUtils;

<contenttweaker:four_leaf_clover_necklace>.addShiftTooltip(game.localize("autotech.title.flcn.tooltip"));

furnace.addRecipe(<ore:ingotCrudeSteel>.firstItem, <ore:oreCrudeSteel>);
furnace.addRecipe(<ore:ingotCrudeSteel>.firstItem, <ore:dustCrudeSteel>);
furnace.addRecipe(<contenttweaker:stamp_nugget>, <contenttweaker:raw_stamp_nugget>);
furnace.addRecipe(<contenttweaker:refractory_brick>, <contenttweaker:refractory_clay_ball>);

RecipeUtils.recipeTweak(true, <contenttweaker:villager_language_dictionary>, [
    [<ore:leather>,<contenttweaker:dictionary_paper>],
    [<contenttweaker:dictionary_paper>,<contenttweaker:dictionary_paper>]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:four_leaf_clover_necklace>, [
    [null, <contenttweaker:straw_rope>, null],
    [<contenttweaker:straw_rope>, null, <contenttweaker:straw_rope>],
    [null, <contenttweaker:four_leaf_clover>, null]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:blast_furnace_fuel>, [
    [<ore:fuelCoke>, <ore:dustCharcoal>],
    [<ore:dustCharcoal>, <ore:dustCharcoal>]
]);

RecipeUtils.recipeTweak(false, <contenttweaker:pure_iron_ingot>, [
    [<botania:spellcloth>, <botania:manaresource>]
]);

RecipeUtils.recipeTweak(false, <contenttweaker:sub_block_holder_2:12>, [
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

artisanUtils.RecipeTweakWithTools("engineer", true, <contenttweaker:sensitive_element> * 3, 
    inputPattern("Z Z", "GFG", "XZX")
        .with("Z", <ore:plasticWhite>)
        .with("G", <enderio:item_material:5>)
        .with("F", <ore:dustGermanium>)
        .with("X", <ore:wireElectrum>).get()
, {<ore:artisansSolderer> : 3} as int[IIngredient]);

var recipe as IOreDictEntry[IOreDictEntry] = {
    <ore:ingotTough> : <ore:blockTough>,
    <ore:ingotExtreme> : <ore:blockExtreme>,
    <ore:ingotRustyIron> : <ore:blockRustyIron>,
    <ore:ingotHighStrengthAluminumAlloy> : <ore:blockHighStrengthAluminumAlloy>,
    <ore:ingotPureIron> : <ore:blockPureIron>
};

for k, v in recipe {
    addRecipe(k, v);
}

function addRecipe(b as IOreDictEntry, a as IOreDictEntry) {
    RecipeUtils.recipeTweak(true, a.firstItem, RecipeUtils.createFull3(b));
    RecipeUtils.recipeTweak(false, b.firstItem * 9, [[a]]);
}