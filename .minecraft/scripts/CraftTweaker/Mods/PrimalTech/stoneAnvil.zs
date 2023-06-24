#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.primaltech.StoneAnvil;

import scripts.grassUtils.StringHelper;
import scripts.grassUtils.RecipeUtils;

//StoneAnvil.addRecipe(output, input);

StoneAnvil.addRecipe(<minecraft:netherbrick> * 2, <minecraft:nether_brick>);
StoneAnvil.addRecipe(<minecraft:brick> * 2, <minecraft:brick_block>);
StoneAnvil.addRecipe(<embers:archaic_brick> * 2, <embers:archaic_bricks>);
StoneAnvil.addRecipe(<embers:brick_caminite> * 2, <embers:block_caminite_brick>);

StoneAnvil.addRecipe(<minecraft:sand:1> * 2, <minecraft:red_sandstone>);
StoneAnvil.addRecipe(<minecraft:sand> * 2, <minecraft:sandstone>);
StoneAnvil.addRecipe(<biomesoplenty:white_sand> * 2, <biomesoplenty:white_sandstone>);

StoneAnvil.addRecipe(<minecraft:quartz> * 3, <ore:blockQuartz>);

StoneAnvil.addRecipe(<survivalist:rock> * 8, <ore:cobblestone>);
StoneAnvil.addRecipe(<survivalist:rock> * 8, <ore:stone>);
StoneAnvil.addRecipe(<survivalist:rock:1> * 8, <ore:stoneAndesite>);
StoneAnvil.addRecipe(<survivalist:rock:2> * 8, <ore:stoneDiorite>);
StoneAnvil.addRecipe(<survivalist:rock:3> * 8, <ore:stoneGranite>);

var Quartz as string[] = [
    "Mana", "Blaze", "Lavender", "Red", "Elven", "Sunny"
];

for QuartzName in Quartz {
    var gemQuartz as IOreDictEntry = oreDict.get("quartz" ~ QuartzName);
    var Quartzblock as IOreDictEntry = oreDict.get("blockQuartz" ~ QuartzName);

    if(!gemQuartz.empty && !Quartzblock.empty) {
        
        StoneAnvil.addRecipe(gemQuartz.firstItem * 3, Quartzblock);

    }
}