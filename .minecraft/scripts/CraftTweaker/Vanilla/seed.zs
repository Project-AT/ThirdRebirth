#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

var removeSeeds as IItemStack[] = [
    <extrautils2:redorchid>,
    <extrautils2:enderlilly>,
    <teslathingies:tesla_plant_seeds>
];

function seedTweak(item as IItemStack, weight as float) as void {
    vanilla.seeds.removeSeed(item);
    vanilla.seeds.addSeed(item % weight);
}

seedTweak(<roots:wildroot>, 0.575);

for seed in removeSeeds {
    vanilla.seeds.removeSeed(seed);
}