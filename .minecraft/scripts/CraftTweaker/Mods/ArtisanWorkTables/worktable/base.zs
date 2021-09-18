#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

import mods.artisanworktables.builder.RecipeBuilder;

var nacrePearl as IItemStack = <wizardry:nacre_pearl>.withTag({purity: 600 as long, complete: 1 as byte, purity_override: 1.0 as float});

artisanUtils.RecipeTweak("basic", true, <wizardry:nacre_block>, RecipeUtils.createFull3(nacrePearl));

artisanUtils.RecipeTweak("basic", false, <naturesaura:gold_powder> * 8, [
    [<mysticalworld:gold_dust_tiny>, <naturesaura:gold_leaf>, <naturesaura:gold_leaf>, 
    <naturesaura:gold_leaf>, <naturesaura:gold_leaf>]
]);

artisanUtils.RecipeTweakWithLiquid("basic", true, <artisanworktables:worktable:7>, [
    [<wizardry:orb:1>, <minecraft:wool:11>, <wizardry:orb:1>],
    [<ore:plankWood>, <artisanworktables:worktable:5>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>]
], <liquid:mana_fluid> * 1000);

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