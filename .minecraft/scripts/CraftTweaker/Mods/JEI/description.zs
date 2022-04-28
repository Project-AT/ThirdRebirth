#priority 5
#modloaded trutils

import mods.jei.JEI;
import moretweaker.jei.MoreJei;
import crafttweaker.item.IItemStack;

var toRemoveDescriptors as IItemStack[] = [
    <lightningcraft:ingot>,
    <lightningcraft:material:11>,
    <extrautils2:ingredients:11>,
    
];

for toRemove in toRemoveDescriptors {
    MoreJei.removeDescription(toRemove);
}

MoreJei.addDescription(<survivalist:rock>, [game.localize("thirdrebirth.description.survivalist.rock")]);