#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <libvulpes:linker>, [
    [null, <ore:dustSignalum>, null],
	[<contenttweaker:high_strength_aluminum_alloy_plate>, <appliedenergistics2:material:23>, <contenttweaker:high_strength_aluminum_alloy_plate>],
	[<contenttweaker:high_strength_aluminum_alloy_plate>, <contenttweaker:high_strength_aluminum_alloy_plate>, <contenttweaker:high_strength_aluminum_alloy_plate>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:battery:1>, [
    [<ore:itemBattery>, <ore:itemBattery>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:structuremachine>*4, [
    [<ore:rodHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:rodHighStrengthAluminumAlloy>],
    [<ore:plateHighStrengthAluminumAlloy>, null, <ore:plateHighStrengthAluminumAlloy>],
    [<ore:rodHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:rodHighStrengthAluminumAlloy>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:motor>, [
    [null, <ore:coilCopper>, <ore:ingotTough>],
    [<ore:rodHighStrengthAluminumAlloy>, <ore:motor>, <ore:ingotTough>],
    [null, <ore:coilCopper>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:advancedmotor>, [
    [null, <ore:coilGold>, <ore:ingotTough>],
    [<ore:rodHighStrengthAluminumAlloy>, <ore:motor>, <ore:ingotTough>],
    [null, <ore:coilGold>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:battery>, [
    [null, <ore:wireCopper>, null],
    [<ore:plateIron>, <ore:dustLithium>, <ore:plateIron>],
    [<ore:plateIron>, <ore:dustLithium>, <ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:elitemotor>, [
    [null, <ore:coilIridium>, <ore:ingotTough>],
    [<ore:stickTitaniumIridium>, <ore:motor>, <ore:ingotTough>],
    [null, <ore:coilIridium>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:enhancedmotor>, [
    [null, <ore:coilAluminum>, <ore:ingotTough>],
    [<ore:stickTitaniumAluminide>, <ore:motor>, <ore:ingotTough>],
    [null, <ore:coilAluminum>, <ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:advstructuremachine> * 4, [
    [<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>],
    [<ore:plateTitaniumAluminide>, null, <ore:plateTitaniumAluminide>],
    [<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>]
]);

RecipeUtils.recipeTweak(true, <libvulpes:holoprojector>, [
    [<refraction:lens>, <refraction:lens>, <refraction:lens>],
    [<ore:dustSignalum>, <appliedenergistics2:view_cell>, <ore:dustSignalum>],
    [<ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>]
]);
