#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <packagedauto:packager_extension>, [
    [<ore:ingotElectricalSteel>, <packagedauto:me_package_component>, <ore:ingotElectricalSteel>],
    [<ore:dustSignalum>, <mekanism:basicblock:8>, <ore:dustSignalum>],
    [<appliedenergistics2:material:23>,  <ore:ingotElectricalSteel>, <appliedenergistics2:material:24>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:unpackager>, [
    [<ore:ingotElectricalSteel>, <packagedauto:me_package_component>, <ore:ingotElectricalSteel>],
    [<ore:dustSignalum>, <appliedenergistics2:material:23>, <ore:dustSignalum>],
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:23>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:packager>, [
    [<ore:ingotElectricalSteel>, <packagedauto:me_package_component>, <ore:ingotElectricalSteel>],
    [<ore:dustSignalum>, <mekanism:basicblock:8>, <ore:dustSignalum>],
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:23>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:encoder>, [
    [<ore:ingotElectricalSteel>, <packagedauto:me_package_component>, <ore:ingotElectricalSteel>],
    [<appliedenergistics2:material:24>, <mekanism:basicblock:8>, <appliedenergistics2:material:22>],
    [<ore:ingotElectricalSteel>, <ore:dustSignalum>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:package_component>, [
    [<ore:ingotElvenElementium>, <embers:sealed_planks>, <ore:ingotElvenElementium>],
    [<embers:sealed_planks>, <ore:pearlEnderEye>, <embers:sealed_planks>],
    [<ore:ingotElvenElementium>, <embers:sealed_planks>, <ore:ingotElvenElementium>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:recipe_holder> * 2, [
    [<ore:ingotCopper>, <ore:ingotElectricalSteel>, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:dustSignalum>, <ore:ingotCopper>],
    [<ore:ingotElectricalSteel>, <packagedauto:package_component>, <ore:ingotElectricalSteel>]
]);