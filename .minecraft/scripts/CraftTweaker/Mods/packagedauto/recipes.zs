#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;

var ingotTwo as IIngredient = <ore:ingotElectricalSteel> | <ore:ingotPureIron>;

RecipeUtils.recipeTweak(true, <packagedauto:packager_extension>, [
    [ingotTwo, <packagedauto:me_package_component>, ingotTwo],
    [<ore:dustSignalum>, <mekanism:basicblock:8>, <ore:dustSignalum>],
    [<appliedenergistics2:material:23>,  ingotTwo, <appliedenergistics2:material:24>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:unpackager>, [
    [ingotTwo, <packagedauto:me_package_component>, ingotTwo],
    [<ore:dustSignalum>, <appliedenergistics2:material:23>, <ore:dustSignalum>],
    [ingotTwo, <appliedenergistics2:material:23>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <packagedauto:packager>, [
    [ingotTwo, <packagedauto:me_package_component>, ingotTwo],
    [<ore:dustSignalum>, <mekanism:basicblock:8>, <ore:dustSignalum>],
    [ingotTwo, <appliedenergistics2:material:23>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <packagedauto:encoder>, [
    [ingotTwo, <packagedauto:me_package_component>, ingotTwo],
    [<appliedenergistics2:material:24>, <mekanism:basicblock:8>, <appliedenergistics2:material:22>],
    [ingotTwo, <ore:dustSignalum>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <packagedauto:package_component>, [
    [<ore:ingotElvenElementium>, <embers:sealed_planks>, <ore:ingotElvenElementium>],
    [<embers:sealed_planks>, <ore:pearlEnderEye>, <embers:sealed_planks>],
    [<ore:ingotElvenElementium>, <embers:sealed_planks>, <ore:ingotElvenElementium>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:recipe_holder> * 2, [
    [<ore:ingotCopper>, ingotTwo, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:dustSignalum>, <ore:ingotCopper>],
    [ingotTwo, <packagedauto:package_component>, ingotTwo]
]);