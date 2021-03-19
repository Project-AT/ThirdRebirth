#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils.recipeTweak;

import mods.primaltech.ClayKiln;

recipeTweak(true, <primal_tech:clay_kiln>,[
        [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
        [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
        [<minecraft:clay>, <minecraft:clay>, <minecraft:clay>]
]);
recipeTweak(true, <primal_tech:rock>,[
        [<survivalist:rock>],
        [<survivalist:rock>]
]);

recipeTweak(false, <primal_tech:work_stump>,[
    [<ore:plankWood>, <ore:logWood>]
]);
recipeTweak(false, <primal_tech:fire_sticks>,[
    [<ore:oreKnife>.transformDamage(), <ore:stickWood>]
]);