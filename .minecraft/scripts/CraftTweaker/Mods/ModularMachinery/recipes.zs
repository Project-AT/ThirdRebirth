#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(false, <modularmachinery:blockcasing:5>, [
    [<modularmachinery:blockcasing>,<ore:circuitBasic>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry:1>, [
    [<modularmachinery:blockcasing>,<ore:circuitElite>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry:2>, [
    [<modularmachinery:blockcasing>,<ore:circuitUltimate>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcasing:5>, [
    [<contenttweaker:germanium_integrated_circuit_board>,<modularmachinery:blockcasing>,<contenttweaker:germanium_integrated_circuit_board>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry>, [
    [<modularmachinery:blockcasing>,<ore:circuitAdvanced>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:3>, [
    [null,<ore:gearTough>],
    [<ore:gearTough>, <modularmachinery:blockcasing>, <ore:gearTough>],
    [null, <ore:gearTough>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:1> * 2, [
    [<modularmachinery:itemmodularium>, <ore:fenceSteel>, <modularmachinery:itemmodularium>],
    [<ore:fenceSteel>, null, <ore:fenceSteel>],
    [<modularmachinery:itemmodularium>, <ore:fenceSteel>, <modularmachinery:itemmodularium>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:4> * 4, [
    [<ore:ingotTough>, <modularmachinery:blockcasing>, <ore:ingotTough>],
    [<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
    [<ore:ingotTough>, <modularmachinery:blockcasing>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:2>, [
    [<modularmachinery:itemmodularium>, <ore:rodSteel>, <modularmachinery:itemmodularium>],
    [<ore:rodSteel>, null, <ore:rodSteel>],
    [<modularmachinery:itemmodularium>, <ore:rodSteel>, <modularmachinery:itemmodularium>]
]);
