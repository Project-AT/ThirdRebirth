#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.removeShapeless(<minecraft:paper> * 2, [<mekanism:sawdust>, <mekanism:sawdust>, <mekanism:sawdust>, <mekanism:sawdust>, <minecraft:water_bucket>]);

recipes.addShapeless(<minecraft:paper> * 3, [
    <ore:dustWood>, <ore:dustWood>, <ore:dustWood>
]);

for meta in 22 to 28 {
    var stack as IItemStack = <thermalfoundation:material>.definition.makeStack(meta);
    if (meta == 22 || meta == 23) JEI.hide(stack);
    if (meta == 26) continue;
    recipes.remove(stack);
}

artisanUtils.RecipeTweakWithTools_("basic", false, <thermalfoundation:material:768>, [
    [<ore:coal>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <thermalfoundation:material:769>, [
    [<ore:charcoal>]
], {<ore:artisansMortar> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("basic", false, <thermalfoundation:material:771>, [
    [<ore:stoneBrimstone>]
], {<ore:artisansMortar> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <thermalfoundation:material:656>, [
    [null, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotCopper>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
], {<ore:artisansSpanner> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <thermalfoundation:material:657>, [
    [<ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ore:ingotCopper>, <ore:plateIron>],
    [null, <ore:plateIron>, <ore:plateIron>]
], {<ore:artisansDriver> : 4, <ore:artisansSpanner> : 4} as int[IIngredient]);

val removeItem as IItemStack[] = [
    <thermalfoundation:bait:2>, <thermalfoundation:upgrade>, <thermalfoundation:upgrade:1>, <thermalfoundation:upgrade:2>, <thermalfoundation:upgrade:3>,
    <thermalfoundation:upgrade:33>, <thermalfoundation:upgrade:34>, <thermalfoundation:upgrade:35>, <thermalfoundation:security>, <thermalfoundation:material:512>,
    <thermalfoundation:material:513>, <thermalfoundation:material:514>, <thermalfoundation:material:515>, <thermalfoundation:material:640>, <thermalfoundation:material:1024>,
    <thermalfoundation:material:1025>, <thermalfoundation:material:1026>, <thermalfoundation:material:1027>, 
];

for i in removeItem {
    recipes.remove(i);
}