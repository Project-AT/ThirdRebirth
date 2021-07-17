#priority 20
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
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

var oreDictAdd as string[string] = {
    "dustCrudeSteel" : "contenttweaker:dust_rudesteel",
    "oreNickel" : "contenttweaker:udorenickel",
    "oreSilver" : "contenttweaker:udoresilver",
    "oreUranium" : "contenttweaker:udoreuranium",
    "oreAluminum" : "contenttweaker:udorealuminum",
    "oreCrudeSteel" : "contenttweaker:ironcoal_ore",
    "oreAquamarine" : "contenttweaker:aqua_ore_gravel",
    "oreQuartzBlack" : "contenttweaker:netherblackquartz",
    "oreSkyStoneBlock" : "appliedenergistics2:sky_stone_block"
};

var oreDictRemove as string[string] = {
    "oreDilithium" : "matteroverdrive:dilithium_ore"
};

for i in partNames {
    for l in oreDictNames {
        var ore = oreDict.get(i ~ l);
        var ores = ore.items;
        for n in ores{
            var owner = n.definition.owner;
            if(owner == "thermalfoundation" || owner == "enderio" || owner == "nuclearcraft"){
                 for o in ores{
                    if(!(o.matches(n)) && (o.definition.owner != "chisel")){
                        JEI.removeAndHide(o);
                        ore.remove(o);
                    }
                }
                break;
            }
        }
    }
}

for i in knifes{
    var knifeOwner as string = i.definition.owner;
    if(knifeOwner == "mysticalworld" || knifeOwner == "roots"){
        <ore:oreKnife>.add(i);
    }
}

for key ,value in oreDictAdd{
    oreDict.get(key).add(itemUtils.getItem(value));
}

for key ,value in oreDictRemove{
    oreDict.get(key).remove(itemUtils.getItem(value));
}