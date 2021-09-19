#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

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

artisanUtils.RecipeTweakWithTools("basic", true, <artisanworktables:workstation:6>, [
    [<ore:plateSteel>, <ore:plateBronze>, <ore:plateSteel>],
    [<ore:stickIron>, <artisanworktables:worktable:6>, <ore:stickIron>],
    [<ore:plankTreatedWood>, <ore:chest>, <ore:plankTreatedWood>]
], {<ore:artisansSpanner> : 10, <ore:artisansDriver> : 10} as int[IIngredient]);

artisanUtils.RecipeTweak("basic", true, <artisanworktables:worktable:9>, [
    [<roots:runed_obsidian_slab>, <minecraft:concrete:13>, <roots:runed_obsidian_slab>],
    [<minecraft:glass_bottle>, <artisanworktables:worktable:5>, <minecraft:glass_bottle>],
    [<wizardry:wisdom_wood_planks>, null, <wizardry:wisdom_wood_planks>]
]);

artisanUtils.RecipeTweak("basic", true, <artisanworktables:worktable:12>, [
    [<artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>],
    [<ore:logWood>, <artisanworktables:worktable:5>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>]
]);

artisanUtils.RecipeTweak("basic", true, <artisanworktables:workstation:12>, [
    [<artisanworktables:design_pattern>, <artisanworktables:design_pattern>, <artisanworktables:design_pattern>],
    [<ore:logWood>, <artisanworktables:worktable:12>, <ore:logWood>],
    [<ore:logWood>, <ore:chest>, <ore:logWood>]
]);

artisanUtils.RecipeTweakWithLiquid("basic", true, <artisanworktables:worktable:7>, [
    [<wizardry:orb:1>, <minecraft:wool:11>, <wizardry:orb:1>],
    [<ore:plankWood>, <artisanworktables:worktable:5>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>]
], <liquid:mana_fluid> * 1000);

artisanUtils.RecipeTweakWithTools("basic", true, <artisanworktables:worktable:6>, [
    [<ore:ingotIron>, <ore:plateCopper>, <ore:ingotIron>],
    [<ore:blockIron>, <artisanworktables:worktable:5>, <ore:blockIron>],
    [<ore:plankTreatedWood>, null, <ore:plankTreatedWood>]
], {<ore:artisansHammer> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithAll("basic", true, <artisanworktables:workstation:7>, [
    [<ore:powderMana>, <ore:powderMana>, <ore:powderMana>],
    [<ore:ingotManasteel>, <artisanworktables:worktable:7>, <ore:ingotManasteel>],
    [<ore:livingwood>, null, <ore:livingwood>]
], <liquid:mana_fluid> * 4000, {<ore:artisansAthame> : 10, <ore:artisansGrimoire> : 10} as int[IIngredient]);