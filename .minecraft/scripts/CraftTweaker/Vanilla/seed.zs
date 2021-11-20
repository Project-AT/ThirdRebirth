#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

function seedTweak(item as IItemStack, weight as float) as void {
    vanilla.seeds.removeSeed(item);
    vanilla.seeds.addSeed(<minecraft:carrot> % weight);
}

seedTweak(<roots:wildroot>, 0.575);