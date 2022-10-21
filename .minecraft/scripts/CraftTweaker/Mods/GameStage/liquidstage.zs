#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import mods.ItemStages;
import crafttweaker.liquid.ILiquidStack;

val specialStageLiquidMap as ILiquidStack[][string] = {
    "two" : [
        <liquid:plastic>,
        <liquid:etchacid>,
        <liquid:oil>,
        <liquid:lpg>,
        <liquid:fuel>,
        <liquid:kerosene>,
        <liquid:diesel>,
        <liquid:lubricant>,
    ],
    "three" : [
        <liquid:germanium_slurry>
    ]
};

for stage, liquids in specialStageLiquidMap {
    for liquid in liquids {
        ItemStages.stageLiquidAndBucket(stage, liquid);
    }
}