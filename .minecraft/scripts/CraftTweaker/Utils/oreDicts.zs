#priority 30
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;

var oreDictNames as string[] = [
    "Copper", "Tin", "Lead", "Aluminum", "Nickel", "Silver", "Uranium", "Boron", "Lithium", "Magnesium", 
    "Thorium", "Bronze", "Constantan", "Electrum", "Steel", "Iridium", "Invar", "Quartz", "Gold", "Iron",
    "Diamond", "Emerald", "NetherQuartz",
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
    "listAllturkeyraw" : [<betteranimalsplus:turkey_leg_raw>, <betteranimalsplus:turkey_raw>],
    "listAllturkeycooked" : [<betteranimalsplus:turkey_leg_cooked>, <betteranimalsplus:turkey_cooked>],
    "plateIronCompressed" : [<contenttweaker:iron_compressed_plate>],
    "ingotIronCompressed" : [<pneumaticcraft:ingot_iron_compressed>],
    "gearIronCompressed" : [<pneumaticcraft:compressed_iron_gear>],
    "blockIronCompressed" : [<pneumaticcraft:compressed_iron_block>],
    "dustAluminium" : [<thermalfoundation:material:68>],
    "blockAluminium" : [<thermalfoundation:storage:4>],
    "plateAluminium" : [<thermalfoundation:material:324>],
    "nuggetAluminium" : [<thermalfoundation:material:196>],
    "oreAluminium" : [<thermalfoundation:ore:4>],
    "gearAluminium" : [<thermalfoundation:material:260>],
    "gemCoal" : [<minecraft:coal>],
    "gemCertusQuartz" : [<appliedenergistics2:material:0>],
    "gemAmethyst" : [<netherex:amethyst_crystal>],
    "gemRime" : [<netherex:rime_crystal>],
    "oreRime" : [<netherex:rime_ore>],
    "oreAmethyst" : [<netherex:amethyst_ore>],
    "oreDiamond" : [<minecraft:diamond_ore>],
    "gemDiamond" : [<minecraft:diamond>],
    "dustDiamond" : [<nuclearcraft:gem_dust:0>],
    "oreEmerald" : [<minecraft:emerald_ore>],
    "gemEmerald" : [<minecraft:emerald>],
    "dustEmerald" : [<lightningcraft:material:2>],
    "gemDilithium" : [<matteroverdrive:dilithium_crystal>],
    "dustDilithium" : [<contenttweaker:dilithium_dust>],
    "oreDilithium" : [<matteroverdrive:dilithium_ore>],
    "oreCoal" : [<minecraft:coal_ore>],
    "dustCoal" : [<thermalfoundation:material:768>],
    "gemChargedCertusQuartz": [<appliedenergistics2:material:1>],
    "dustChargedCertusQuartz": [<appliedenergistics2:material:2>],
    "crystalRedstone": [<minecraft:redstone>],
    "crystalLapis": [<minecraft:dye:4>],
    "dustLapis": [<enderio:item_material:32>],
    "gemDraconium":[<draconicevolution:draconium_dust>],
    "gemCharcoal":[<minecraft:coal:1>],
    "gemCoke":[<immersiveengineering:material:6>],
    "gemFluix":[<appliedenergistics2:material:7>],
    "blockAshenStone":[<embers:ashen_stone>, <embers:ashen_brick>, <embers:ashen_tile>],
    "drawerBasic":[<storagedrawers:customdrawers:*>],
    "ingotSky":[<naturesaura:sky_ingot>],
    "blockSky":[<contenttweaker:sky_block>],
    "blockEmber":[<contenttweaker:ember_crystal_block>],
    "shardEmber":[<embers:shard_ember>],
    "crystalEmber":[<embers:crystal_ember>],
    "endPortal":[<minecraft:end_portal_frame>],

    "mushroomAny":[<biomesoplenty:mushroom:0>, <biomesoplenty:mushroom:1>, <biomesoplenty:mushroom:2>, <biomesoplenty:mushroom:3>, <biomesoplenty:mushroom:4>, <biomesoplenty:mushroom:5>],
    "listAllmushroom":[<biomesoplenty:mushroom:0>, <biomesoplenty:mushroom:1>, <biomesoplenty:mushroom:2>, <biomesoplenty:mushroom:3>, <biomesoplenty:mushroom:4>, <biomesoplenty:mushroom:5>],
    "mushroom":[<biomesoplenty:mushroom:0>, <biomesoplenty:mushroom:1>, <biomesoplenty:mushroom:2>, <biomesoplenty:mushroom:3>, <biomesoplenty:mushroom:4>, <biomesoplenty:mushroom:5>],
    "allFlowers":[
        <biomesoplenty:flower_0:1>, <biomesoplenty:flower_0:2>, <biomesoplenty:flower_0:3>, <biomesoplenty:flower_0:4>,
        <biomesoplenty:flower_0:5>, <biomesoplenty:flower_0:6>, <biomesoplenty:flower_0:7>, <biomesoplenty:flower_0:8>,
        <biomesoplenty:flower_0:9>, <biomesoplenty:flower_0:10>, <biomesoplenty:flower_0:11>, <biomesoplenty:flower_0:12>,
        <biomesoplenty:flower_0:13>, <biomesoplenty:flower_0:14>, <biomesoplenty:flower_0:15>, <biomesoplenty:flower_0:0>,
        <biomesoplenty:flower_1:1>, <biomesoplenty:flower_1:2>, <biomesoplenty:flower_1:3>, <biomesoplenty:flower_1:4>,
        <biomesoplenty:flower_1:5>, <biomesoplenty:flower_1:0>,
    ],
    "cropRice":[<biomesoplenty:plant_1:3>],
    "listAllgrain":[<biomesoplenty:plant_1:11>, <biomesoplenty:double_plant:3>],
    "cropBarley":[<biomesoplenty:plant_1:11>],
    "cropOats":[<biomesoplenty:double_plant:3>],
    "cropFlax":[<biomesoplenty:double_plant>],
    "listAllfiber":[<biomesoplenty:double_plant>],
    "cropBambooshoot":[<biomesoplenty:sapling_0:2>],
    "listAllveggie":[<biomesoplenty:sapling_0:2>, <biomesoplenty:seaweed>, <roots:pereskia_bulb>],
    "cropSeaweed":[<biomesoplenty:seaweed>],
    "listAllgreenveggie":[<biomesoplenty:seaweed>],
    "cropEdibleroot":[<quark:root>, <quark:root_flower>, <quark:root_flower:1>, <quark:root_flower:2>, <roots:wildroot>],
    "listAllrootveggie":[<roots:pereskia_bulb>],
    "listAllberry":[<biomesoplenty:berries>, <integrateddynamics:menril_berries>],
    "listAllfruit":[<biomesoplenty:berries>, <integrateddynamics:menril_berries>],
    "foodCrabraw":[<quark:crab_leg>, <betteranimalsplus:crab_meat_raw>],
    "foodCrabcooked":[<quark:cooked_crab_leg>, <betteranimalsplus:crab_meat_cooked>],
    "foodFrograw":[<quark:frog_leg>],
    "foodFrogcooked":[<quark:cooked_frog_leg>],
    "foodFriedegg":[<betteranimalsplus:fried_egg>],
    "foodEelraw":[<betteranimalsplus:eel_meat_raw>],
    "foodMarshmellows":[<nuclearcraft:marshmallow>],
    "listAllchickenraw":[<betteranimalsplus:pheasantraw>],
    "listAllchickencooked":[<betteranimalsplus:pheasantcooked>],
    "bread":[<survivalist:round_bread>, <roots:wildewheet_bread>],
    "foodBread":[<survivalist:round_bread>],
    "foodDough":[<survivalist:dough>],
    "tallow":[<betteranimalsplus:blubber>],
    "cropLychee":[<harvestcraft:lycheeitem>],
    "cropJackfruit":[<harvestcraft:jackfruititem>],
    "listAllyogurt":[<harvestcraft:plainyogurtitem>],
    "plantThorn":[<netherex:thornstalk>],
    "listAllfishcooked":[<betteranimalsplus:eel_meat_cooked>],
    "listAllfishfresh":[<betteranimalsplus:eel_meat_raw>, <harvestcraft:eelrawitem>],
    "listAllfishraw":[<betteranimalsplus:eel_meat_raw>, <harvestcraft:eelrawitem>],
    "vine":[<biomesoplenty:willow_vine>, <biomesoplenty:ivy>],
    "tallgrass":[
        <biomesoplenty:plant_0>, <biomesoplenty:plant_0:1>, <biomesoplenty:plant_0:7>, <biomesoplenty:plant_0:8>, <biomesoplenty:plant_1>, <biomesoplenty:plant_1:7>
    ],

    "doorWood":[
        <biomesoplenty:mangrove_door>, <biomesoplenty:sacred_oak_door>, <biomesoplenty:cherry_door>, <biomesoplenty:umbran_door>,
        <biomesoplenty:fir_door>, <biomesoplenty:ethereal_door>, <biomesoplenty:magic_door>, <biomesoplenty:palm_door>, 
        <traverse:fir_door>, <wizardry:wisdom_wood_door>, <biomesoplenty:pine_door>, <biomesoplenty:willow_door>,
        <biomesoplenty:redwood_door>, <biomesoplenty:eucalyptus_door>, <biomesoplenty:ebony_door>, <biomesoplenty:jacaranda_door>,
        <biomesoplenty:mahogany_door>, <biomesoplenty:hellbark_door>, <integrateddynamics:menril_door>
    ],
    "trapdoorWood":[<roots:wildwood_trapdoor>],
    "fenceGateWood":[<traverse:fir_fence_gate>, <roots:wildwood_fence_gate>], 
    "fenceWood":[<roots:wildwood_fence>, <wizardry:wisdom_wood_fence>, <traverse:fir_fence>],
    "itemWitheringDust":[<quark:black_ash>],
    "mycelium":[<biomesoplenty:grass:8>],
    "grass":[
        <biomesoplenty:grass:1>, <biomesoplenty:grass:2>, <biomesoplenty:grass:3>, <biomesoplenty:grass:4>, <biomesoplenty:grass:5>, <biomesoplenty:grass:6>,
        <biomesoplenty:grass:7>,
    ],
    "dirt":[<biomesoplenty:dirt:1>, <biomesoplenty:dirt:2>],
    "sandstone":[<biomesoplenty:white_sandstone:1>],
    "slabSandstone":[<biomesoplenty:other_slab:1>],
    "blockPackedIce":[<biomesoplenty:hard_ice>],
};

var oreDictRemove as IItemStack[] = [
    <libvulpes:productrod:4>, <immersiveengineering:material:3>, <immersiveengineering:material:2>, <lightningcraft:plate:7>, <lightningcraft:plate:8>, <lightningcraft:plate:9>,
    <libvulpes:productrod:6>, <immersiveengineering:material:1>, <libvulpes:productrod:1>, <lightningcraft:rod:2>, <lightningcraft:rod:3>, <lightningcraft:rod:5>,
    <lightningcraft:rod:6>, <lightningcraft:rod:7>, <lightningcraft:rod:8>, <lightningcraft:rod:9>, <lightningcraft:plate:7>, <lightningcraft:plate:8>, <lightningcraft:plate:9>,
    <advancedrocketry:productdust>, <advancedrocketry:productdust:1>, <advancedrocketry:productingot>, <advancedrocketry:productingot:1>, <lightningcraft:material:2>,
    <advancedrocketry:productplate>, <advancedrocketry:productplate:1>, <advancedrocketry:productrod>, <advancedrocketry:productrod:1>,
    <advancedrocketry:productgear>, <advancedrocketry:productgear:1>, <libvulpes:productdust:7>, <libvulpes:productingot:7>, <libvulpes:productplate:7>, 
    <libvulpes:productrod:7>, <libvulpes:productgear:7>, <libvulpes:productrod:10>, <thermalfoundation:material:802>, <thermalfoundation:material:800>
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
<ore:blockIce>.remove(<netherex:frostburn_ice>);
<ore:dustAluminium>.remove(<nuclearcraft:dust:12>);
<ore:dustEmerald>.remove(<teslacorelib:powder_emerald>);
<ore:gemAmethyst>.remove(<biomesoplenty:gem>);
<ore:oreAmethyst>.remove(<biomesoplenty:gem_ore>);
<ore:dustCoal>.remove(<nuclearcraft:gem_dust:7>);
<ore:dustCoal>.remove(<enderio:item_material:23>);
<ore:oreCertusQuartz>.remove(<appliedenergistics2:charged_quartz_ore>);
<ore:ingotAluminium>.remove(<embers:ingot_aluminum>);
<ore:plateAluminium>.remove(<embers:plate_aluminum>);
<ore:fenceGateWood>.remove(<traverse:fir_fence>);
<ore:dustCopper>.remove(<enderio:item_material:26>);
<ore:dustTin>.remove(<enderio:item_material:27>);
<ore:dustSulfur>.remove(<mekanism:otherdust:3>);
<ore:dustSulfur>.remove(<nuclearcraft:gem_dust:6>);
<ore:itemSilicon>.remove(<libvulpes:productingot:3>);
<ore:blockAmethyst>.remove(<biomesoplenty:gem_block>);
<ore:ingotAluminium>.remove(<nuclearcraft:ingot:12>);
<ore:blockAluminium>.remove(<nuclearcraft:ingot_block:12>);
<ore:nuggetNetherStar>.remove(<extendedcrafting:material:140>);
<ore:blockAluminium>.remove(<embers:block_aluminum>);
<ore:plateElectricium>.remove(<lightningcraft:plate:7>);


var oreNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Germanium"
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

var materialNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Germanium", "Dilithium", "Steel", "Electrum", "Invar", "Bronze", "Constantan", "Signalum", "Lumium", "Enderium",
    "Manganese", "Graphite", "Electricium", "Skyfather", "Mystic", "HOPGraphite", "RoseGold", "HighStrengthAluminumAlloy", "PureIron",
    "IronCompressed", "Soularium", "Beryllium", "Zirconium", "Tough", "Dawnstone", "TitaniumAluminide", "TitaniumIridium",
    
    "Diamond", "Emerald", "Dilithium", "Coal", "Quartz", "CertusQuartz", 
    "ChargedCertusQuartz", "Lapis", "Charcoal", "Fluorite", "BoronNitride", "Rhodochrosite", "Fluix", "Coke",
];

for metalName in materialNames {
    var dust as IOreDictEntry = oreDict.get("dust" ~ metalName);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ metalName);
    var plate as IOreDictEntry = oreDict.get("plate" ~ metalName);
    var gem as IOreDictEntry = oreDict.get("gem" ~ metalName);

    if(!isNull(dust) && !dust.empty) oreDict.get(metalName).addAll(dust);
    if(!isNull(ingot) && !ingot.empty) oreDict.get(metalName).addAll(ingot);
    if(!isNull(plate) && !plate.empty) oreDict.get(metalName).addAll(plate);
    if(!isNull(gem) && !gem.empty) oreDict.get(metalName).addAll(gem);
}