#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.roots.Chrysopoeia;

import scripts.grassUtils.StringHelper;


var stacks as IItemStack[] = [
    <ore:ingotGold>.firstItem, <ore:nuggetGold>.firstItem, <ore:nuggetIron>.firstItem, <ore:ingotIron>.firstItem  
];

function chrysopoeiaUtils(output as IItemStack, input as IIngredient) {
    Chrysopoeia.addRecipe(StringHelper.getItemNameWithUnderline(output), input, output);
}

chrysopoeiaUtils(<minecraft:redstone>, <wizardry:devil_dust>);
chrysopoeiaUtils(<minecraft:ender_pearl>, <mysticalworld:pearl> * 8);
chrysopoeiaUtils(<biomesoplenty:fleshchunk>, <ore:listAllmeatraw> | <ore:listAllfishraw>);

for stack in stacks {
    Chrysopoeia.removeRecipe(stack);
}
