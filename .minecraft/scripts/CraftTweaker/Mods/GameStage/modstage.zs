#priority 15
#modloaded trutils
#loader crafttweaker reloadableevents

import mods.ItemStages;
import crafttweaker.liquid.ILiquidStack;

val defaultStageModMap as string[][string] = {
    "two" : [
        "teslathingies", "pneumaticcraft", "extrautils2", "buildinggadgets", "teslacorelib"
    ],
    "three" : [
        "enderio", "nuclearcraft"
    ],
    "four" : [
        "libvulpes"
    ],
    "root" : [
        "roots"
    ],
    "wizardry" : [
        "wizardry"
    ],
    "aura" : [
        "naturesaura"
    ],
    "botania" : [
        "botania", "botanianeedsit"
    ],
    "ember" : [
        "embers"
    ],
    "refraction" : [
        "refraction"
    ],
    "five" : [
        "advancedrocketry", "mekanism"
    ],
};

//无阶段mod
var modUsed as string[] = [
    "minecraft", "primal_tech", "elevatorid", "travelersbackpack", "quark", "tetra", "flopper", "artisanworktables",
    "immersiveengineering", "akashictome", "morphtool", "tombstone", "harvestcraft", "survivalist", "cookingforblockheads",
    "mysticalworld", "storagedrawers", "fluiddrawers", "netherex", "openglider", "waystones", "betteranimalsplus",
    "thermalfoundation", "biomesoplenty", "familiarfauna", "ironchest", "traverse", "compactdrawers", "bountifulbaubles",
    "pouchofunknown", "The One Probe", "forge", "chisel"
];

for stage, modids in defaultStageModMap {
    for modid in modids {
        ItemStages.stageModItems(stage, modid);
        modUsed += modid;
    }
}

for mod in loadedMods {
    if (modUsed has mod.id) continue;
    //if (defaultStageModMap has mod.id) continue;

    //recipes.removeByMod(mod.id);
    ItemStages.stageModItems("locked", mod.id);
    //for item in loadedMods[mod.id].items {
        //item.addTooltip("§4" ~ game.localize("thirdrebirth.tooltip.item.ban"));
    //}
}