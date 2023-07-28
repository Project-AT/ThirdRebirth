#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <extendedcrafting:table_advanced>, [
    [<extendedcrafting:material:15>, <extendedcrafting:material:9>, <extendedcrafting:material:15>],
    [<ore:plateTough>, <extendedcrafting:table_basic>, <ore:plateTough>],
    [<extendedcrafting:material:15>, <ore:blockTough>, <extendedcrafting:material:15>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:16>, [
    [null, <ore:plateTough>, null],
    [<ore:alloyElite>, <appliedenergistics2:material:16>, <ore:alloyElite>],
    [null, <ore:plateTough>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:12>, [
    [null, <extendedcrafting:material:18>],
    [<extendedcrafting:material:18>, <ore:ingotTough>, <extendedcrafting:material:18>],
    [null, <extendedcrafting:material:18>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:table_elite>, [
    [<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>],
    [<ore:plateTough>, <extendedcrafting:table_basic>, <ore:plateTough>],
    [<extendedcrafting:material:16>, <ore:blockTough>, <extendedcrafting:material:16>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:10>, [
    [null, <extendedcrafting:material:16>, null],
    [<extendedcrafting:material:16>, <ore:ingotTough>, <extendedcrafting:material:16>],
    [null, <extendedcrafting:material:16>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:14>, [
    [null, <ore:plateTough>],
    [<ore:ingotPureIron>, <appliedenergistics2:material:16>, <ore:ingotPureIron>],
    [null, <ore:plateTough>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:9>, [
    [null, <extendedcrafting:material:15>, null],
    [<extendedcrafting:material:15>, <ore:ingotTough>, <extendedcrafting:material:15>],
    [null, <extendedcrafting:material:15>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:pedestal>, [
    [<ore:plateTough>, <ore:ingotTough>, <ore:plateTough>],
    [null, <ore:ingotTough>, null],
    [<ore:ingotTough>, <ore:blockTough>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:8>, [
    [null, <extendedcrafting:material:14>, null],
    [<extendedcrafting:material:14>, <ore:ingotTough>, <extendedcrafting:material:14>],
    [null, <extendedcrafting:material:14>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:18>, [
    [null, <ore:plateTough>, null],
    [<ore:ingotCrystaltine>, <appliedenergistics2:material:16>, <ore:ingotCrystaltine>],
    [null, <ore:plateTough>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:frame>, [
    [<ore:ingotTough>, <ore:fusedQuartz>, <ore:ingotTough>],
    [<ore:fusedQuartz>, <ore:plateTough>, <ore:fusedQuartz>],
    [<ore:ingotTough>, <ore:fusedQuartz>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:17>, [
    [null, <ore:plateTough>, null],
    [<ore:ingotTerrasteel>, <appliedenergistics2:material:16>, <ore:ingotTerrasteel>],
    [null, <ore:plateTough>, null]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:table_ultimate>, [
    [<extendedcrafting:material:17>, <extendedcrafting:material:11>, <extendedcrafting:material:17>],
    [<ore:plateTough>, <extendedcrafting:table_basic>, <ore:plateTough>],
    [<extendedcrafting:material:17>, <ore:blockTough>, <extendedcrafting:material:17>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:table_basic>, [
    [<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>],
    [<ore:plateTough>, <artisanworktables:worktable:5>, <ore:plateTough>],
    [<extendedcrafting:material:14>, <ore:blockTough>, <extendedcrafting:material:14>]
]);

recipes.replaceAllOccurences(<ore:blockBlackIron>, <ore:blockTough>, <*>.only(function(stack) {
    return stack.definition.id == "extendedcrafting:trimmed";
}));

RecipeUtils.recipeTweak(true, <extendedcrafting:material:15>, [
    [null, <ore:plateTough>],
    [<ore:ingotLumium>, <appliedenergistics2:material:16>, <ore:ingotLumium>],
    [null, <ore:plateTough>]
]);

RecipeUtils.recipeTweak(true, <extendedcrafting:material:7> * 2, 
    inputPatternGet(["AAA", "ABA", "AAA"], {
        "A" : <enderio:block_holier_fog>,
        "B" : <extrautils2:suncrystal>
}));

val removeItem as IItemStack[] = [
    <extendedcrafting:material:36>, <extendedcrafting:material:37>, <extendedcrafting:storage:5>
];

for i in removeItem {
    recipes.remove(i);
}

recipes.replaceAllOccurences(<extendedcrafting:storage>, <ore:blockTough>);