#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.removeByRecipeName("extrautils2:watering_can");


RecipeUtils.recipeTweak(true, <extrautils2:ingredients>, [
    [null, <minecraft:redstone>],
    [<minecraft:redstone>, NACRE_PEARL, <minecraft:redstone>],
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

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:analogcrafter>, [
    [null, <extendedcrafting:crafting_table>],
    [<embers:sealed_planks>, <teslacorelib:machine_case>, <embers:sealed_planks>],
    [null, <embers:sealed_planks>]
], {<ore:artisansSpanner> : 15, <ore:artisansDriver> : 18});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:crafter>, [
    [null, <extendedcrafting:crafting_table>],
    [<extrautils2:compressedcobblestone>, <teslacorelib:machine_case>, <extrautils2:compressedcobblestone>],
    [null, <extrautils2:compressedcobblestone>]
], {<ore:artisansSpanner> : 18, <ore:artisansDriver> : 20});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:scanner>, [
    [null, <ore:eye>],
    [<ore:compressed1xCobblestone>, <teslacorelib:machine_case>, <ore:compressed1xCobblestone>],
    [null, <ore:compressed1xCobblestone>]
], {<ore:artisansSpanner> : 18, <ore:artisansDriver> : 20});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:indexer>, [
    [<ore:gemRedstone>, <extrautils2:grocket:3>, <ore:gemRedstone>],
    [<extrautils2:decorativesolid:3>, <teslacorelib:machine_case>, <extrautils2:decorativesolid:3>],
    [<ore:gemRedstone>, <extrautils2:decorativesolid:3>, <ore:gemRedstone>]
], {<ore:artisansSpanner> : 20, <ore:artisansDriver> : 25});

artisanUtils.RecipeTweakWithTools("engineer", true, <extrautils2:resonator>, [
    [<ore:ingotIron>, <ore:dyeBlack>, <ore:ingotIron>],
    [<ore:gemRedstone>, <teslacorelib:machine_case>, <ore:gemRedstone>],
    [<ore:ingotIron>, <ore:dyeBlack>, <ore:ingotIron>]
], {<ore:artisansSpanner> : 20, <ore:artisansDriver> : 25});