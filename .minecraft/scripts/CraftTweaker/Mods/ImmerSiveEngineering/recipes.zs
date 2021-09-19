#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("basic", true, <immersiveengineering:stone_decoration:1> * 3, [
    [<ore:ingotBrickNether>, <contenttweaker:refractory_brick>, <ore:ingotBrickNether>],
    [<contenttweaker:refractory_brick>, <buildinggadgets:constructionpaste>, <contenttweaker:refractory_brick>],
    [<ore:ingotBrickNether>, <contenttweaker:refractory_brick>, <ore:ingotBrickNether>]
], {<ore:artisansTrowel> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <immersiveengineering:stone_decoration> * 3, [
    [<ore:sandstone>, <contenttweaker:refractory_brick>, <ore:sandstone>],
    [<contenttweaker:refractory_brick>, <buildinggadgets:constructionpaste>, <contenttweaker:refractory_brick>],
    [<ore:sandstone>, <contenttweaker:refractory_brick>, <ore:sandstone>]
], {<ore:artisansTrowel> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <immersiveengineering:stone_decoration:10> * 2, [
    [<ore:ingotBrick>, <contenttweaker:refractory_brick>, <ore:ingotBrick>],
    [<contenttweaker:refractory_brick>, <buildinggadgets:constructionpaste>, <contenttweaker:refractory_brick>],
    [<ore:ingotBrick>, <contenttweaker:refractory_brick>, <ore:ingotBrick>]
], {<ore:artisansTrowel> : 2} as int[IIngredient]);