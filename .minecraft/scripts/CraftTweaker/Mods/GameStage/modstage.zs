#priority 11
#modloaded trutils
#loader crafttweaker reloadableevents

import mods.ItemStages;
import crafttweaker.liquid.ILiquidStack;

val defaultStageModMap as string[][string] = {
    "two" : [
        "teslathingies", "pneumaticcraft", "extrautils2", "buildinggadgets", "teslacorelib", "artisanautomation", "rftools", "modularmachinery",
    ],
    "three" : [
        "enderio", "nuclearcraft", "simplyjetpacks"
    ],
    "four" : [
        "libvulpes", "appliedenergistics2"
    ],
    "root" : [
        "roots","naturescompass"
    ],
    "wizardry" : [
        "wizardry"
    ],
    "aura" : [
        "naturesaura"
    ],
    "botania" : [
        "botania", "botanianeedsit", "botania_tweaks"
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
    "lightning" : [
        "lightningcraft"
    ],
    "ductdynamic" : [
        "thermaldynamics", "enderstorage:ender_storage"
    ],
    "xnet" : [
        "xnet", "rftoolscontrol"
    ],
    "psi" : [
        "psi", "psicosts", "psicaster"
    ],
    "compactmachines" : [
        "compactmachines3"
    ]
};

//无阶段mod
var modUsed as string[] = [
    "minecraft", "primal_tech", "elevatorid", "travelersbackpack", "quark", "tetra", "flopper", "artisanworktables",
    "immersiveengineering", "akashictome", "morphtool", "tombstone", "harvestcraft", "survivalist", "cookingforblockheads",
    "mysticalworld", "storagedrawers", "fluiddrawers", "netherex", "openglider", "waystones", "betteranimalsplus",
    "thermalfoundation", "biomesoplenty", "familiarfauna", "ironchest", "traverse", "compactdrawers", "bountifulbaubles",
    "pouchofunknown", "The One Probe", "forge", "chisel", "ftbquests", "toolbelt", "jecalculation", "theoneprobe",
];

for stage, modids in defaultStageModMap {
    ALLSTAGES.insert(stage);
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