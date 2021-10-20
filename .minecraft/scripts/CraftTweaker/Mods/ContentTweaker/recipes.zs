#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

<contenttweaker:four_leaf_clover_necklace>.addShiftTooltip(game.localize("autotech.tier.flcn.tooltip"));

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
    [<ore:charcoal>, <ore:dustCoal>],
    [<ore:dustCoal>, <ore:dustCoal>]
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
    [null, <roots:wildewheet>, null],
    [<roots:salmon_of_knowledge>.withTag({advancements: ["everything"], crafter: "Nature"}), <minecraft:glass_bottle>, <roots:moonglow_leaf>],
    [null, <roots:cloud_berry>,     null]
], <liquid:water> * 250, {<ore:artisansBeaker> : 135} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <contenttweaker:sensitive_element> * 3, 
    inputPattern("Z Z", "GFG", "XZX")
        .with("Z", <ore:paper>)
        .with("G", <enderio:item_material:5>)
        .with("F", <ore:dustGermanium>)
        .with("X", <ore:wireElectrum>).get()
, {<ore:artisansSolderer> : 3} as int[IIngredient]);

var recipe as IOreDictEntry[IOreDictEntry] = {
    <ore:ingotTough> : <ore:blockTough>,
    <ore:ingotExtreme> : <ore:blockExtreme>,
    <ore:ingotRustyIron> : <ore:blockRustyIron>,
    <ore:ingotHighStrengthAluminumAlloy> : <ore:blockHighStrengthAluminumAlloy>
};

for k, v in recipe {
    addRecipe(k, v);
}

function addRecipe(b as IOreDictEntry, a as IOreDictEntry) {
    RecipeUtils.recipeTweak(true, a.firstItem, RecipeUtils.createFull3(b));
    RecipeUtils.recipeTweak(false, b.firstItem * 9, [[a]]);
}