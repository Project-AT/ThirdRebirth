#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("basic", true, <roots:runic_dust> * 5, [
    [null, <ore:dustCharcoal>, <ore:dustWheat>],
    [<ore:stone>, <roots:moonglow_leaf>, <minecraft:dye:15>]
], {<ore:artisansMortar> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", false, <roots:flour>, [
    [<ore:cropPotato> | <ore:cropWheat>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", false, <roots:petals>, [
    [<ore:allFlowers>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", false, <roots:petals> * 2, [
    [<ore:allTallFlowers>]
], {<ore:artisansMortar> : 2} as int[IIngredient]);

RecipeUtils.recipeTweak(false, <roots:fire_starter>, [
    [<primal_tech:fire_sticks>, <primal_tech:fire_sticks>],
]);

RecipeUtils.recipeTweak(false, <roots:fire_starter>,
    inputPatternGet(["BAA"], {
        "A" : <ore:stickWood>,
        "B" : <ore:knife>.transformDamage()
}));

RecipeUtils.recipeTweak(true, <roots:pyre>,
    inputPatternGet(["ABA", "BCB", "DED"], {
        "A" : <roots:wildroot>,
        "B" : <ore:logWood>,
        "C" : <roots:terra_moss>,
        "D" : <ore:stone>,
        "E" : <primal_tech:charcoal_block>
}));

RecipeUtils.recipeTweak(true, <roots:grove_stone>,
    inputPatternGet(["ABA", "CBE", "DBD"], {
        "A" : <roots:runic_dust>,
        "B" : <ore:stone>,
        "C" : <roots:wildroot>,
        "D" : <ore:slabStone>,
        "E" : <roots:terra_moss>
}));

RecipeUtils.recipeTweak(true, <roots:mortar>,
    inputPatternGet(["A A", "ABA", " A "], {
        "A" : <ore:stone>,
        "B" : <ore:charcoal>
}));

RecipeUtils.recipeTweak(true, <roots:fey_crafter>,
    inputPatternGet(["ABA", "BCB", "DED"], {
        "A" : <roots:wildroot>,
        "B" : <ore:treeSapling>,
        "C" : NACRE_PEARL,
        "D" : <roots:terra_moss>,
        "E" : <ore:logWood>
}));
