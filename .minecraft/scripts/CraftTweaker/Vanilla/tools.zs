#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

var toolTypes as string[] = ["sword", "axe", "pickaxe", "shovel"];

for toolType in toolTypes {
    var wooden as IItemStack = itemUtils.getItem("wooden_" ~ toolType);
    var stone as IItemStack = itemUtils.getItem("stone_" ~ toolType);

    wooden.maxDamage = 1;
    stone.maxDamage = 1;
}