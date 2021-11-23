#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

function seedTweak(item as IItemStack, weight as float) as void {
    vanilla.seeds.removeSeed(item);
    vanilla.seeds.addSeed(item % weight);
}

seedTweak(<roots:wildroot>, 0.575);