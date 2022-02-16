#priority 5
#modloaded atutils

import mods.lightningcraft.LightningInfusion;

LightningInfusion.remove(<lightningcraft:stone_block:3>);
LightningInfusion.add(<lightningcraft:stone_block:3>, <lightningcraft:stone_block>, 35,
    [<extrautils2:ingredients:11>]);
LightningInfusion.add(<extrautils2:ingredients:11>, <minecraft:gold_ingot>, 30,
    [<wizardry:devil_dust>, <lightningcraft:material:5>, <wizardry:devil_dust>, <lightningcraft:material:5>]);
