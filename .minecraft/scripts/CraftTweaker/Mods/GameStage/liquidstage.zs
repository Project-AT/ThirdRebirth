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
        <liquid:infused_slag_slurry>, 
        <liquid:manganese_dioxide>, 
        <liquid:manganese>, 
        <liquid:ethene>,
    ],
    "three" : [
        <liquid:germanium_slurry>, 
        <liquid:hdpe>, 
    ],
    "aura" : [
        <liquid:aura_overworld>,
        <liquid:aura_end>,
        <liquid:aura_nether>,
        <liquid:aura_underworld>,
    ],
    "Ge" : [
        <liquid:germanium_slurry>,
        <liquid:germanium_matrix>,
    ],
    "Enderium" : [
        <liquid:liquidchorus>, 
    ],
};

for stage, liquids in specialStageLiquidMap {
    ALLSTAGES.insert(stage);
    for liquid in liquids {
        ItemStages.stageLiquidAndBucket(stage, liquid);
    }
}