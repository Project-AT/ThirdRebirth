#priority 30
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

var oreDictNames as string[] = [
    "Copper", "Tin", "Lead", "Aluminum", "Nickel", "Silver", "Uranium", "Boron", "Lithium", "Magnesium", 
    "Thorium", "Bronze", "Constantan", "Electrum", "Steel", "Iridium", "Invar", "Quartz", "Gold", "Iron",
    "Diamond", "Emerald", "NetherQuartz"
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
    "blockRustyIron" : [<trutils:rusty_iron>],
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
    "boatWood" : [
        <biomesoplenty:boat_sacred_oak>,
        <biomesoplenty:boat_cherry>,
        <biomesoplenty:boat_umbran>,
        <biomesoplenty:boat_fir>,
        <biomesoplenty:boat_ethereal>,
        <biomesoplenty:boat_magic>,
        <biomesoplenty:boat_mangrove>,
        <biomesoplenty:boat_palm>,
        <biomesoplenty:boat_redwood>,
        <biomesoplenty:boat_willow>,
        <biomesoplenty:boat_pine>,
        <biomesoplenty:boat_hellbark>,
        <biomesoplenty:boat_jacaranda>,
        <biomesoplenty:boat_mahogany>,
        <biomesoplenty:boat_ebony>,
        <biomesoplenty:boat_eucalyptus>,
        <minecraft:boat>,
        <minecraft:spruce_boat>,
        <minecraft:birch_boat>,
        <minecraft:jungle_boat>,
        <minecraft:acacia_boat>,
        <minecraft:dark_oak_boat>
    ],
    "mold" : [
        <immersiveengineering:mold>,
        <immersiveengineering:mold:1>,
        <immersiveengineering:mold:2>,
        <immersiveengineering:mold:3>,
        <immersiveengineering:mold:4>,
        <immersiveengineering:mold:5>,
        <immersiveengineering:mold:6>,
        <immersiveengineering:mold:7>
    ],
    "stonePolished" : [
        <chisel:stonebrick2:9>
    ],
    "trapdoorWood" : [
        <wizardry:wisdom_wood_trapdoor>,
    ],
    "mekTabletReplacement" : [
        <mekanism:energytablet>,
        <contenttweaker:inactive_energytablet>
    ],
    "aeViewCellReplacement" : [
        <appliedenergistics2:view_cell>,
        <contenttweaker:inactive_view_cell>
    ],
    "ingotTritanium" : [
        <matteroverdrive:tritanium_ingot>
    ],
    "ingotAluminum" : [
        <nuclearcraft:ingot:12>,
        <embers:ingot_aluminum>
    ],
    "ingotAluminium" : [
        <thermalfoundation:material:132>
    ], 
    "listAllseed" : [
        <roots:moonglow_seed>,
        <immersiveengineering:seed>,
        <roots:spirit_herb_seed>,
        <roots:wildewheet_seed>,
        <extrautils2:enderlilly>,
        <mysticalworld:assorted_seeds>,
    ],
    "toolMortarandpestle" : [
        <botania:pestleandmortar>
    ],
    "pestleAndMortar" : [
        <harvestcraft:mortarandpestleitem>
    ],
    "rootsBark" : [
        <contenttweaker:bark_wisdomwood>
    ],
    "plateIronCompressed" : [<contenttweaker:iron_compressed_plate>],
    "listAllturkeyraw" : [<betteranimalsplus:turkey_leg_raw>, <betteranimalsplus:turkey_raw>],
    "listAllturkeycooked" : [<betteranimalsplus:turkey_leg_cooked>, <betteranimalsplus:turkey_cooked>],
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

var oreNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Dilithium", "Germanium"
];

for oreName in oreNames {
    var shard as IOreDictEntry = oreDict.get("shard" ~ oreName);
    var clamp as IOreDictEntry = oreDict.get("clump" ~ oreName);

    var ore as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var crystal as IOreDictEntry = oreDict.get("crystal" ~ oreName);
    var oreEnriched as IOreDictEntry = oreDict.get("oreEnriched" ~ oreName);
    var oreAuraInfusion as IOreDictEntry = oreDict.get("oreAuraInfusion" ~ oreName);

    var dust as IOreDictEntry = oreDict.get("dust" ~ oreName);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ oreName);
    var oreCrushedInfused as IOreDictEntry = oreDict.get("oreCrushedInfused" ~ oreName);
    var oreCrushedEnriched as IOreDictEntry = oreDict.get("oreCrushedEnriched" ~ oreName);
    var oreCleanCrushedInfused as IOreDictEntry = oreDict.get("oreCleanCrushedInfused" ~ oreName);


    if(!isNull(shard) && !shard.empty) oreDict.get("allshards").addAll(shard);
    if(!isNull(clamp) && !clamp.empty) oreDict.get("allClamps").addAll(clamp);
    if(!isNull(ore) && !ore.empty) oreDict.get("allOres").addAll(ore);
    if(!isNull(crystal) && !crystal.empty) oreDict.get("allCrystals").addAll(crystal);
    if(!isNull(oreEnriched) && !oreEnriched.empty) oreDict.get("allOreEnricheds").addAll(oreEnriched);
    if(!isNull(oreAuraInfusion) && !oreAuraInfusion.empty) oreDict.get("allOreAuraInfusions").addAll(oreAuraInfusion);
    if(!isNull(dust) && !dust.empty) oreDict.get("alldusts").addAll(dust);
    if(!isNull(ingot) && !ingot.empty) oreDict.get("allIngots").addAll(ingot);
    if(!isNull(oreCrushedInfused) && !oreCrushedInfused.empty) oreDict.get("allOreCrushedInfuseds").addAll(oreCrushedInfused);
    if(!isNull(oreCrushedEnriched) && !oreCrushedEnriched.empty) oreDict.get("allOreCrushedEnricheds").addAll(oreCrushedEnriched);
    if(!isNull(oreCleanCrushedInfused) && !oreCleanCrushedInfused.empty) oreDict.get("allOreCleanCrushedInfuseds").addAll(oreCleanCrushedInfused);
}