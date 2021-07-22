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
    var oreDictEntry as IOreDictEntry = oreDict.get("shard" ~ ore);

    if(!isNull(oreDictEntry) && !oreDictEntry.empty) {
        for itemIn in oreDictEntry.items {
            if(itemIn.definition.owner != "contenttweaker") {
                JEI.removeAndHide(itemIn);
                oreDictEntry.remove(itemIn);
            }
        }
    }
}