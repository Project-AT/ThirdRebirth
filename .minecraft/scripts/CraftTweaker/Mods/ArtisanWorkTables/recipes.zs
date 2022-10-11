#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <artisanworktables:design_pattern> * 3, [
    [<ore:paper>, <ore:dyeBlue>],
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
    [<ore:stickSteel>, <artisanworktables:worktable:6>, <ore:stickSteel>],
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
    [<wizardry:wisdom_wood_planks>, <artisanworktables:worktable:5>, <wizardry:wisdom_wood_planks>],
    [<wizardry:wisdom_wood_planks>, null, <wizardry:wisdom_wood_planks>]
], <liquid:mana_fluid> * 1000);

artisanUtils.RecipeTweakWithTools("basic", true, <artisanworktables:worktable:6>, [
    [<ore:ingotIron>, <ore:plateCopper>, <ore:ingotIron>],
    [<ore:blockIron>, <artisanworktables:worktable:5>, <ore:blockIron>],
    [<ore:plankTreatedWood>, null, <ore:plankTreatedWood>]
], {<ore:artisansHammer> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <artisanworktables:workstation:3>, [
    [<ore:ingotIron>, <ore:plateIron>, <ore:ingotIron>],
    [<ore:plateIron>, <artisanworktables:worktable:3>, <ore:plateIron>],
    [<ore:ingotSteel>, <minecraft:anvil>, <ore:ingotSteel>]
], {<ore:artisansHammer> : 10, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithAll("basic", true, <artisanworktables:workstation:7>, [
    [<ore:powderMana>, <ore:powderMana>, <ore:powderMana>],
    [<ore:ingotManasteel>, <artisanworktables:worktable:7>, <ore:ingotManasteel>],
    [<ore:livingwood>, null, <ore:livingwood>]
], <liquid:mana_fluid> * 4000, {<ore:artisansAthame> : 10, <ore:artisansGrimoire> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <artisanworktables:mechanical_toolbox>, 
    inputPattern("A A", "BCB", "A A")
        .with("A", <ore:ingotIron>)
        .with("B", <ore:gearIron> | <ore:gearBronze>)
        .with("C", <artisanworktables:toolbox>).get()
, {<ore:artisansSpanner> : 20} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <artisanworktables:toolbox>, 
    inputPatternGet([" A ", "BCB", " B "], {
        "A" : <ore:plateCopper>,
        "B" : <ore:plankWood>,
        "C" : <minecraft:chest>
}));

RecipeUtils.recipeTweak(true, <artisanworktables:workstation:5>, 
    inputPatternGet(["CCC", "BAB", "BDB"], {
        "A" : <artisanworktables:worktable:5>,
        "B" : <ore:logWood>,
        "C" : <ore:plankWood>,
        "D" : <ore:chest>
}));

artisanUtils.RecipeTweakWithTools("basic", true, <artisanworktables:worktable:1>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:fenceWood>, <artisanworktables:worktable:5>, <ore:fenceWood>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
], {<ore:artisansHandsaw> : 25} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <artisanworktables:workstation:1>, [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:stairWood>, <artisanworktables:worktable:1>, <ore:stairWood>],
    [<minecraft:ladder>, <ore:chestWood>, <minecraft:ladder>]
], {<ore:artisansHandsaw> : 30, <ore:artisansSartisansFramingHammerpanner> : 35} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <artisanautomation:automator_power_rf>, [
    [<ore:ingotIronCompressed>, <embers:wrapped_sealed_planks>, <ore:ingotIronCompressed>],
    [<ore:stickSteel>, <immersiveengineering:metal_decoration0:4>, <ore:stickSteel>],
    [<ore:ingotIronCompressed>, <embers:wrapped_sealed_planks>, <ore:ingotIronCompressed>]
], {<ore:artisansSpanner> : 15, <ore:artisansDriver> : 12} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <artisanautomation:automator>, [
    [<ore:ingotIronCompressed>, <ore:blockGlassHardened>, <ore:ingotIronCompressed>],
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>],
    [<embers:wrapped_sealed_planks>, <immersiveengineering:metal_decoration0:4>, <embers:wrapped_sealed_planks>]
], {<ore:artisansSpanner> : 18, <ore:artisansDriver> : 15} as int[IIngredient]);