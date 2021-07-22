#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;


var banList as IItemStack[] = [
    <lightningcraft:rod:*>,
    <lightningcraft:plate:*>
];

for banItem in banList {
    recipes.remove(banItem);
}