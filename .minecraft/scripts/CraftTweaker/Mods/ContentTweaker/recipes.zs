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
    [null, <roots:wildewheet>, null],
    [<roots:salmon_of_knowledge>, <minecraft:glass_bottle>, <roots:moonglow_leaf>],
    [null, <roots:cloud_berry>, null]
], <liquid:water> * 250, {<ore:artisansBeaker> : 135} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <contenttweaker:mana_crystal>, 
    inputPattern("ABA", "GFG", "ABA")
        .with("B", <ore:manaPearl>)
        .with("G", <ore:gemDiamond>)
        .with("F", <wizardry:nacre_pearl>.withTag({purity: 600 as long}) | <wizardry:nacre_pearl>.withTag({purity: 599 as long}) | <wizardry:nacre_pearl>.withTag({purity: 601 as long}))
        .with("A", <roots:dewgonia>).get()
, {<ore:artisansGrimoire> : 30, <ore:artisansAthame> : 30} as int[IIngredient]);

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

static partName as string = "oreAuraInfusion";

for ore in oreDict.entries {
    var oreName as string = ore.name;
    
    if(oreName.contains(partName)) {
        var output as IItemStack = ore.firstItem;
        var recipeName as string = StringHelper.getItemNameWithUnderline(output);
        var metalName as string = RecipeUtils.getMetalNameNew(ore, partName);
        var oreMetal as IOreDictEntry = oreDict.get("ore" ~ metalName);

        if(!isNull(oreMetal) && !oreMetal.empty) {
            Altar.addRecipe(recipeName, oreMetal, output, null, 2000, 80);
        }
    }
}

function addRecipe(b as IOreDictEntry, a as IOreDictEntry) {
    RecipeUtils.recipeTweak(true, a.firstItem, RecipeUtils.createFull3(b));
    RecipeUtils.recipeTweak(false, b.firstItem * 9, [[a]]);
}