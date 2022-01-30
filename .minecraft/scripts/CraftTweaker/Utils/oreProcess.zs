#priority -5
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;


var ores as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Dilithium"
];

for ore in ores {
    var shard as IOreDictEntry = oreDict.get("shard" ~ ore);
    var clamp as IOreDictEntry = oreDict.get("clump" ~ ore);

    if(!isNull(shard) && !shard.empty) {
        for itemIn in shard.items {
            if(itemIn.definition.owner != "contenttweaker") {
                mods.mekanism.chemical.injection.removeRecipe(itemIn);
                JEI.removeAndHide(itemIn);
                shard.remove(itemIn);
            }
        }
    }

    if(!isNull(clamp) && !clamp.empty) {
        for itemIn in clamp.items {
            if(itemIn.definition.owner != "contenttweaker") {
                mods.mekanism.purification.removeRecipe(itemIn);
                JEI.removeAndHide(itemIn);
                clamp.remove(itemIn);
            }
        }
    }
}
