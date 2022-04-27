#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.roots.Chrysopoeia;

import scripts.grassUtils.StringHelper;

var stacks as IItemStack[] = [
    <minecraft:gold_ingot>, <minecraft:gold_nugget>, <minecraft:iron_nugget>, <minecraft:iron_ingot>
];

function chrysopoeiaUtils(output as IItemStack, input as IIngredient) {
    Chrysopoeia.addRecipe(StringHelper.getItemNameWithUnderline(output), input, output);
}

chrysopoeiaUtils(<minecraft:redstone>, <wizardry:devil_dust>);
chrysopoeiaUtils(<minecraft:ender_pearl>, <mysticalworld:pearl> * 8);
chrysopoeiaUtils(<biomesoplenty:fleshchunk>, <ore:listAllmeatraw> | <ore:listAllfishraw>);

for stack in stacks {
    Chrysopoeia.removeRecipeByOutput(stack);
}
