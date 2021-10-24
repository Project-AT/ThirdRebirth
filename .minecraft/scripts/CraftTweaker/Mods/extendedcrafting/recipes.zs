#priority 5
#modloaded atutils

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
    [null, <ore:plateTough>, null],
    [<ore:ingotLumium>, <appliedenergistics2:material:16>, <ore:ingotLumium>],
    [null, <ore:plateTough>, null]
]);


mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:crafting_core>, [
	[<ore:blockTough>, <ore:plateTough>, <extendedcrafting:material:10>, <ore:plateTough>, <ore:blockTough>], 
	[<ore:plateTough>, <ore:ingotTough>, <ore:circuitElite>, <ore:ingotTough>, <ore:plateTough>], 
	[<extendedcrafting:material:16>, <ore:circuitElite>, <extendedcrafting:frame>, <ore:circuitElite>, <extendedcrafting:material:16>], 
	[<ore:plateTough>, <ore:ingotTough>, <ore:circuitElite>, <ore:ingotTough>, <ore:plateTough>], 
	[<ore:blockTough>, <extendedcrafting:material:18>, <extendedcrafting:material:16>, <extendedcrafting:material:18>, <ore:blockTough>]
]);


mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:material:24>*2, [
	[<ore:manaDiamond>, <naturesaura:sky_ingot>, <ore:ingotLumium>, <ore:gemRime>, <ore:ingotLumium>, <naturesaura:sky_ingot>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <ore:ingotCrystallineAlloy>, <ore:ingotSoularium>, <ore:nuggetNetherStar>, <ore:ingotSoularium>, <ore:ingotCrystallineAlloy>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <ore:ingotCrystallineAlloy>, <ore:ingotSoularium>, <ore:nuggetNetherStar>, <ore:ingotSoularium>, <ore:ingotCrystallineAlloy>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <naturesaura:sky_ingot>, <ore:ingotLumium>, <ore:gemRime>, <ore:ingotLumium>, <naturesaura:sky_ingot>, <ore:manaDiamond>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:interface>, [
	[null, <ore:ingotTough>, <ore:ingotTough>, <extendedcrafting:material:10>, <ore:ingotTough>, <ore:ingotTough>, null], 
	[<ore:ingotTough>, <ore:alloyElite>, <ore:blockTough>, <appliedenergistics2:material:23>, <ore:blockTough>, <ore:alloyElite>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:blockTough>, <extendedcrafting:material:16>, <ore:circuitElite>, <extendedcrafting:material:16>, <ore:blockTough>, <ore:ingotTough>], 
	[<ore:ingotTough>, <appliedenergistics2:material:22>, <extendedcrafting:material:10>, <extendedcrafting:frame>, <extendedcrafting:material:10>, <appliedenergistics2:material:22>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:blockTough>, <extendedcrafting:material:18>, <ore:circuitElite>, <extendedcrafting:material:18>, <ore:blockTough>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:alloyElite>, <ore:blockTough>, <appliedenergistics2:material:23>, <ore:blockTough>, <ore:alloyElite>, <ore:ingotTough>], 
	[null, <ore:ingotTough>, <ore:ingotTough>, <extendedcrafting:material:12>, <ore:ingotTough>, <ore:ingotTough>, null]
]);
