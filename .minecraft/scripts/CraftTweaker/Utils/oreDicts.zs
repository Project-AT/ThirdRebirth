#priority 30
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;


var knifes as IItemStack[] = itemUtils.getItemsByRegexRegistryName(".*_knife.*");

var oreDictNames as string[] = [
    "Iron", "Gold", "Copper", "Tin", "Lead", "Aluminum", "Nickel", "Silver", "Uranium", "Boron", "Lithium", "Magnesium", "Thorium", "Bronze",
    "Constantan", "Electrum", "Steel", "Iridium", "Invar"
];
var partNames as string[] = [
    "ingot", "ore", "plate", "gear", "block", "nugget", "dust", "stick"
];

var oreDictAdd as IItemStack[string] = {
    "dustCrudeSteel" : <contenttweaker:dust_rudesteel>,
    "oreNickel" : <contenttweaker:udorenickel>,
    "oreSilver" : <contenttweaker:udoresilver>,
    "oreUranium" : <contenttweaker:udoreuranium>,
    "oreAluminum" : <contenttweaker:udorealuminum>,
    "oreCrudeSteel" : <contenttweaker:ironcoal_ore>,
    "oreAquamarine" : <contenttweaker:aqua_ore_gravel>,
    "oreQuartzBlack" : <contenttweaker:netherblackquartz>,
    "oreSkyStoneBlock" : <appliedenergistics2:sky_stone_block>
};

var oreDictRemove as IItemStack[string] = {
    "oreDilithium" : <matteroverdrive:dilithium_ore>
};

for partName in partNames {
    for key in oreDictNames {
        var ore as IOreDictEntry = oreDict.get(partName ~ key);
        var ores as [IItemStack] = ore.items;
        for oreItem in ores {
            var owner = oreItem.definition.owner;
            if(owner == "thermalfoundation" || owner == "enderio" || owner == "nuclearcraft") {
                 for otherItem in ores {
                    if(!(otherItem.matches(oreItem)) && (otherItem.definition.owner != "chisel")) {
                        JEI.removeAndHide(otherItem);
                        ore.remove(otherItem);
                    }
                }
                break;
            }
        }
    }
}

for item in knifes {
    var owner as string = item.definition.owner;

    if(owner == "mysticalworld" || owner == "roots"){
        <ore:oreKnife>.add(item);
    }
}

for key, value in oreDictAdd {
    oreDict.get(key).add(value);
}

for key, value in oreDictRemove {
    oreDict.get(key).remove(value);
    JEI.removeAndHide(value);
}