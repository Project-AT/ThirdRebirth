#priority 5
#modloaded trutils

import mods.artisanworktables.builder.RecipeBuilder;

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

RecipeBuilder.get("carpenter")
    .setShapeless([<minecraft:log>])
    .addTool(<ore:knife>, 1)
    .addOutput(<roots:bark_oak> * 5)
    .setExtraOutputOne(<mekanism:sawdust>, 1.0)
    .setExtraOutputTwo(<mekanism:sawdust>, 0.25)
    .setMaximumTier(1)
    .create();

RecipeBuilder.get("carpenter")
    .setShapeless([<wizardry:wisdom_wood_log>])
    .addTool(<ore:knife>, 1)
    .addOutput(<contenttweaker:bark_wisdomwood> * 5)
    .setExtraOutputOne(<mekanism:sawdust>, 1.0)
    .setExtraOutputTwo(<mekanism:sawdust>, 0.25)
    .setMaximumTier(1)
    .create();

RecipeBuilder.get("carpenter")
    .setShapeless([<minecraft:log:1>])
    .addTool(<ore:knife>, 1)
    .addOutput(<roots:bark_spruce> * 5)
    .setExtraOutputOne(<mekanism:sawdust>, 1.0)
    .setExtraOutputTwo(<mekanism:sawdust>, 0.25)
    .setMaximumTier(1)
    .create();

RecipeBuilder.get("carpenter")
    .setShapeless([<minecraft:log:2>])
    .addTool(<ore:knife>, 1)
    .addOutput(<roots:bark_birch> * 5)
    .setExtraOutputOne(<mekanism:sawdust>, 1.0)
    .setExtraOutputTwo(<mekanism:sawdust>, 0.25)
    .setMaximumTier(1)
    .create();

RecipeBuilder.get("carpenter")
    .setShapeless([<minecraft:log:3>])
    .addTool(<ore:knife>, 1)
    .addOutput(<roots:bark_jungle> * 5)
    .setExtraOutputOne(<mekanism:sawdust>, 1.0)
    .setExtraOutputTwo(<mekanism:sawdust>, 0.25)
    .setMaximumTier(1)
    .create();

RecipeBuilder.get("carpenter")
    .setShapeless([<minecraft:log2:1>])
    .addTool(<ore:knife>, 1)
    .addOutput(<roots:bark_dark_oak> * 5)
    .setExtraOutputOne(<mekanism:sawdust>, 1.0)
    .setExtraOutputTwo(<mekanism:sawdust>, 0.25)
    .setMaximumTier(1)
    .create();

RecipeUtils.recipeTweak(true, <roots:imbuer>,
    inputPatternGet(["B B", " A ", "B B"], {
        "A" : <ore:runestone>,
        "B" : <ore:stickWood>,
}));

RecipeUtils.recipeTweak(true, <roots:imposer>,
    inputPatternGet(["B B", " C ", "AAA"], {
        "A" : <ore:runestone>,
        "B" : <ore:stickWood>,
        "C" : <roots:imbuer>,
}));
