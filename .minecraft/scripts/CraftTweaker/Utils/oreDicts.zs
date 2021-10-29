#priority 30
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

var oreDictNames as string[] = [
    "Iron", "Gold", "Copper", "Tin", "Lead", "Aluminum", "Nickel", "Silver", "Uranium", "Boron", "Lithium", "Magnesium", "Thorium", "Bronze",
    "Constantan", "Electrum", "Steel", "Iridium", "Invar", "Quartz"
];
var partNames as string[] = [
    "ingot", "ore", "plate", "gear", "block", "nugget", "dust"
];

var oreDictAdd as IItemStack[string] = {
    "dustCrudeSteel" : <contenttweaker:dust_crude_steel>,
    "oreNickel" : <contenttweaker:udorenickel>,
    "oreUranium" : <contenttweaker:udoreuranium>,
    "oreAluminum" : <contenttweaker:udorealuminum>,
    "oreBoron" : <contenttweaker:udoreboron>,
    "oreLithium" : <contenttweaker:udorelithium>,
    "oreEndLithium" : <contenttweaker:endorelithium>,
    "oreMagnesium" : <contenttweaker:udoremagnesium>,
    "oreThorium" : <contenttweaker:udorethorium>,
    "oreCrudeSteel" : <contenttweaker:ironcoal_ore>,
    "oreSkyStoneBlock" : <appliedenergistics2:sky_stone_block>,
    "ingotRustyIron" : <contenttweaker:rusty_iron_ingot>,
    "plateTritanium" : <matteroverdrive:tritanium_plate>,
    "plateTough" : <contenttweaker:tough_alloy_plate>,
    "blockRustyIron" : <atutils:rusty_iron>,
    "dustQuartz" : <enderio:item_material:33>,
    "stickSteel" : <lightningcraft:rod:1>,
    "stickAluminum" : <lightningcraft:rod:4>,
    "stickIron" : <lightningcraft:rod>
};

var oreDictRemove as IItemStack[] = [
    <libvulpes:productrod:4>, <immersiveengineering:material:3>, <immersiveengineering:material:2>, 
    <libvulpes:productrod:6>, <immersiveengineering:material:1>, <libvulpes:productrod:1>
];

for key, value in oreDictAdd {
    oreDict.get(key).add(value);
}

for item in oreDictRemove {
    for ore in item.ores {
        ore.remove(item);
    }
    JEI.removeAndHide(item);
}

for ore in <libvulpes:productgem>.ores {
    ore.remove(<libvulpes:productgem>);
}

for partName in partNames {
    for key in oreDictNames {
        var ore as IOreDictEntry = oreDict.get(partName ~ key);
        var ores as [IItemStack] = ore.items;
        for oreItem in ores {
            var owner = oreItem.definition.owner;
            if (owner == "thermalfoundation" || owner == "enderio" || owner == "nuclearcraft") {
                 for otherItem in ores {
                    if(!(otherItem.matches(oreItem)) && (otherItem.definition.owner != "chisel")) {
                        if (otherItem.definition.owner == "netherendingores" || 
                            otherItem.definition.owner == "contenttweaker") continue;
                        JEI.removeAndHide(otherItem);
                        ore.remove(otherItem);
                    }
                }
                break;
            }
        }
    }
}

for item in loadedMods["roots"].items {
    if (item.name.contains("knife")) {
        <ore:knife>.add(item.definition.makeStack(32767));
    }
}

for item in loadedMods["mysticalworld"].items {
    if (item.name.contains("knife")) {
        <ore:knife>.add(item.definition.makeStack(32767));
    }
}

<ore:itemSilicon>.remove(<enderio:item_material:5>);