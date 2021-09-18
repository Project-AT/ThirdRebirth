#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

recipes.removeByRecipeName("survivalist:string");

RecipeUtils.recipeTweak(true, <contenttweaker:straw_rope>,[
    [<survivalist:plant_fibres>, <survivalist:plant_fibres>],
    [<survivalist:plant_fibres>, <survivalist:plant_fibres>],
]);

RecipeUtils.recipeTweak(true, <survivalist:pick>, [
    [<ore:itemFlint>, <contenttweaker:straw_rope>, <ore:itemFlint>],
    [null, <ore:stickWood>, null],
    [null, <ore:stickWood>, null]
]);

RecipeUtils.recipeTweak(true, <survivalist:hatchet>, [
    [<ore:itemFlint>, <ore:itemFlint>],
    [<contenttweaker:straw_rope>, <ore:stickWood>]
]);

RecipeUtils.recipeTweak(true, <atutils:flint_hoe>, [
    [<ore:itemFlint>, <contenttweaker:straw_rope>],
	[null, <ore:stickWood>],
	[null, <ore:stickWood>]
]);