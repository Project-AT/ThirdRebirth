#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <artisanworktables:design_pattern>, [
    [<ore:paper>, <ore:gemLapis>],
    [<ore:paper>, <ore:paper>]
]);

RecipeUtils.recipeTweak(true, <artisanworktables:worktable:3>, [
    [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>],
    [<ore:plankWood>, <artisanworktables:worktable:5>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(true, <artisanworktables:worktable:5>, [
    [<ore:plankWood>, <ore:craftingTableWood>, <ore:plankWood>],
    [<ore:plankWood>, <minecraft:bucket>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>]
]);