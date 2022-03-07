#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <extrautils2:ingredients>, [
    [null, <minecraft:redstone>],
    [<minecraft:redstone>, <wizardry:nacre_pearl>, <minecraft:redstone>],
    [null, <minecraft:redstone>]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:pipe> * 8, [
    [<ore:stonePolished>, <ore:blockGlass>, <ore:stonePolished>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
    [<ore:stonePolished>, <ore:blockGlass>, <ore:stonePolished>]
], {<ore:artisansSpanner> : 8});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:grocket> * 4, [
    [<ore:dustRedstone>, <extrautils2:pipe>, <ore:dustRedstone>],
    [<ore:stonePolished>, <ore:chest>, <ore:stonePolished>]
], {<ore:artisansSpanner> : 16});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:grocket:1> * 4, [
    [<ore:dustRedstone>, <extrautils2:filter>, <ore:dustRedstone>],
    [<ore:stonePolished>, <extrautils2:pipe>, <ore:stonePolished>]
], {<ore:artisansSpanner> : 4});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:grocket:2> * 4, [
    [<ore:gemLapis>, <extrautils2:pipe>, <ore:gemLapis>],
    [<ore:stonePolished>, <minecraft:bucket>, <ore:stonePolished>]
], {<ore:artisansSpanner> : 16});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:grocket:3> * 2, [
    [null, <ore:nuggetEmerald>],
    [<extrautils2:grocket>, <ore:pearlEnderEye>, <extrautils2:grocket>],
    [null, <ore:nuggetEmerald>]
], {<ore:artisansSpanner> : 16});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:grocket:4> * 2, [
    [null, <ore:nuggetDiamond>],
    [<extrautils2:grocket:2>, <ore:pearlEnderEye>, <extrautils2:grocket:2>],
    [null, <ore:nuggetDiamond>]
], {<ore:artisansSpanner> : 16});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:grocket:6> * 2, [
    [<thermalfoundation:material:128>, <extrautils2:pipe>, <thermalfoundation:material:128>],
    [<ore:stonePolished>, <minecraft:redstone_block>, <ore:stonePolished>]
], {<ore:artisansSpanner> : 8});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:user>, [
    [null, <minecraft:dispenser>],
    [<ore:compressed1xCobblestone>, <teslacorelib:machine_case>, <ore:compressed1xCobblestone>],
    [null, <ore:compressed1xCobblestone>]
], {<ore:artisansDriver> : 25, <ore:artisansSolderer> : 25});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:miner>, [
    [null, <thermalfoundation:material:656>],
    [<ore:compressed1xCobblestone>, <teslacorelib:machine_case>, <ore:compressed1xCobblestone>],
    [null, <ore:compressed1xCobblestone>]
], {<ore:artisansSpanner> : 25});

