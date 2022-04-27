#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.addShapeless(<harvestcraft:oliveoilitem> * 2, [<quark:tallow>, <harvestcraft:potitem>.reuse()]);

RecipeUtils.recipeTweak(false, <harvestcraft:hardenedleatheritem>, [[<ore:materialLeather>, <ore:materialPressedwax>]]);
RecipeUtils.recipeTweak(false, <harvestcraft:honeyitem>, [[<harvestcraft:honeycombitem> | <biomesoplenty:honeycomb>]]);
RecipeUtils.recipeTweak(false, <harvestcraft:beeswaxitem>, [[<harvestcraft:waxcombitem>]]);

artisanUtils.RecipeTweakWithTools("engineer", true, <harvestcraft:grinder>,
	inputPatternGet(["CBC", "D D", "EEE"], {
        "B" : <minecraft:iron_sword>,
        "C" : <ore:ingotIron>,
        "D" : <ore:gearIron>,
        "E" : <ore:plankTreatedWood>
}), {<ore:artisansSpanner> : 6} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <harvestcraft:presser>,
	inputPatternGet(["CBC", "D D", "EDE"], {
        "B" : <minecraft:piston>,
        "C" : <ore:ingotIron>,
        "D" : <ore:gearIron>,
        "E" : <ore:plankTreatedWood>
}), {<ore:artisansSpanner> : 9} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <harvestcraft:waterfilter>,
	inputPatternGet(["DCD", "D D", "EEE"], {
        "C" : <ore:ingotIron>,
        "D" : <ore:barsIron>,
        "E" : <ore:plankTreatedWood>
}), {<ore:artisansSpanner> : 3} as int[IIngredient]);
