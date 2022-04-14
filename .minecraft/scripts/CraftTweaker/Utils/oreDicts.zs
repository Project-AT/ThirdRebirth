#priority 30
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

var oreDictNames as string[] = [
    "Copper", "Tin", "Lead", "Aluminum", "Nickel", "Silver", "Uranium", "Boron", "Lithium", "Magnesium", "Thorium", "Bronze",
    "Constantan", "Electrum", "Steel", "Iridium", "Invar", "Quartz"
];
var partNames as string[] = [
    "ingot", "ore", "plate", "gear", "block", "nugget", "dust"
];

var oreDictAdd as IItemStack[][string] = {
    "dustCrudeSteel" : [<contenttweaker:dust_crude_steel>],
    "oreNickel" : [<contenttweaker:udorenickel>],
    "oreUranium" : [<contenttweaker:udoreuranium>],
    "oreAluminum" : [<contenttweaker:udorealuminum>],
    "oreBoron" : [<contenttweaker:udoreboron>],
    "oreLithium" : [<contenttweaker:udorelithium>],
    "oreEndLithium" : [<contenttweaker:endorelithium>],
    "oreEndRutile" : [<contenttweaker:endorerutile>],
    "oreMagnesium" : [<contenttweaker:udoremagnesium>],
    "oreThorium" : [<contenttweaker:udorethorium>],
    "oreCrudeSteel" : [<contenttweaker:ironcoal_ore>],
    "oreSkyStoneBlock" : [<appliedenergistics2:sky_stone_block>],
    "ingotRustyIron" : [<contenttweaker:rusty_iron_ingot>],
    "plateTritanium" : [<matteroverdrive:tritanium_plate>],
    "plateTough" : [<contenttweaker:tough_alloy_plate>],
    "blockRustyIron" : [<atutils:rusty_iron>],
    "dustQuartz" : [<enderio:item_material:33>],
    "stickSteel" : [<lightningcraft:rod:1>],
    "stickAluminum" : [<lightningcraft:rod:4>],
    "stickIron" : [<lightningcraft:rod>],
    "exosuitSensorLight" : [<psi:exosuit_sensor>, <contenttweaker:sensitive_element>],
    "ancientTree" : [<naturesaura:ancient_log>, <naturesaura:ancient_bark>],
    "foodCake" : [
        <minecraft:cake>,
        <harvestcraft:carrotcakeitem>,
        <harvestcraft:cheesecakeitem>,
        <harvestcraft:cherrycheesecakeitem>,
        <harvestcraft:chocolatesprinklecakeitem>,
        <harvestcraft:holidaycakeitem>,
        <harvestcraft:lamingtonitem>,
        <harvestcraft:pavlovaitem>,
        <harvestcraft:pineappleupsidedowncakeitem>,
        <harvestcraft:pumpkincheesecakeitem>,
        <harvestcraft:redvelvetcakeitem>,
        <harvestcraft:jaffaitem>,
        <harvestcraft:carrotcupcakeitem>,
        <harvestcraft:raspberrytrifleitem>,
        <harvestcraft:lemondrizzlecakeitem>,
        <harvestcraft:vanillacupcakeitem>,
        <harvestcraft:chocolatecupcakeitem>,
        <harvestcraft:redvelvetcupcakeitem>,
        <harvestcraft:chilicupcakeitem>,
        <harvestcraft:peanutbuttercupcakeitem>,
        <harvestcraft:lemoncupcakeitem>,
        <harvestcraft:strawberrycupcakeitem>,
        <harvestcraft:mintcupcakeitem>,
        <harvestcraft:coffeecupcakeitem>,
        <harvestcraft:sprinklescupcakeitem>,
        <harvestcraft:caramelcupcakeitem>,
        <harvestcraft:bakedalaskaitem>,
        <harvestcraft:merveilleuxitem>,
        <harvestcraft:mochicakeitem>,
        <harvestcraft:battenbergitem>,
        <harvestcraft:rivermudcakeitem>,
        <harvestcraft:fruitcakeitem>,
        <travelersbackpack:travelers_backpack:18>
    ],
    "nuggetSmithingIron" : [<contenttweaker:pure_iron_nugget>, <enderio:item_alloy_nugget>],
    "ingotSmithingIron" : [<contenttweaker:pure_iron_ingot>, <enderio:item_alloy_ingot>],
    "blockSmithingIron" : [<ore:blockPureIron>.firstItem, <enderio:block_alloy>],
    "pyrolyticCarbon" : [<immersiveengineering:material:19>, <nuclearcraft:part:15>],

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
                    var otherOwner as string = otherItem.definition.owner;

                    if(!(otherItem.matches(oreItem)) && (otherOwner != "chisel")) {
                        if (otherOwner == "netherendingores" || otherOwner == "contenttweaker") 
                            continue;
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