#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;

import mods.lightningcraft.LightningInfusion;


var toRemoves as IItemStack[] = [
    <lightningcraft:ingot>,
    <lightningcraft:metal_block>,
    <lightningcraft:stone_block:3>,
];

for toRemove in toRemoves {
    LightningInfusion.remove(toRemove);
}

LightningInfusion.add(<lightningcraft:ingot>, <ore:ingotCopper>.firstItem, 30, 
    [<ore:ingotSilver>.firstItem, <botania:manaresource>]);
LightningInfusion.add( <lightningcraft:metal_block>, <ore:blockCopper>.firstItem, 270, 
    [<ore:blockSilver>.firstItem, <botania:storage>]);

LightningInfusion.add(<lightningcraft:stone_block:3>, <lightningcraft:stone_block>, 35,
    [<extrautils2:ingredients:11>]);
LightningInfusion.add(<extrautils2:ingredients:11>, <minecraft:gold_ingot>, 30,
    [<wizardry:devil_dust>, <lightningcraft:material:5>, <wizardry:devil_dust>, <lightningcraft:material:5>]);