#priority 30
#modloaded trutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

var materials as int[string] = {
    "Gold" : 0xFFFF0B,
    "Iron" : 0x9A8374,
    "CrudeSteel" : 0xA49892,
    "Uranium" : 0x3A5339,
    "Tritanium" : 0x283436,
    "Thorium" : 0x303030,
    "Osmium" : 0xA4B5CD,
    "Nickel" : 0xD8D8A9,
    "Platinum" : 0x33B2FF,
    "Titanium" : 0xC9C5F6,
    "Mithril" : 0x6CCDFF,
    "Iridium" : 0xEFECF3,
    "Boron" : 0x5F5F5F,
    "Lithium" : 0xEEEEEE,
    "Magnesium" : 0xEFD3ED,
    "Copper" : 0xFF7F15,
    "Tin" : 0xC7ECFF,
    "Silver" : 0xE4FBFE,
    "Lead" : 0x7C8DC5,
    "Aluminum" : 0xCECED3, 
    "Germanium" : 0xD8D1BF,
};

var materials_ as int[string] = {
    "Germanium" : 0xD8D1BF,
    "HighStrengthAluminumAlloy" : 0xF2F2F2,
    "PureIron" : 0xF5F5F2,
    "RoseGold" : 0xF2CAC7,
    "Titanium" : 0xC9C5F6,
    "TitaniumAluminide" : 0xABBFDA,
    "TitaniumIridium" : 0xD4DBE0,
};

var oreProcess as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("ore_process");
oreProcess.addParts(["shard", "clump", "crystal"]);
oreProcess.registerNormalPart("ore_enriched", "ore", true);
oreProcess.registerNormalPart("ore_aura_infusion", "ore", true);
oreProcess.registerNormalPart("ore_crushed_infused", "item", true);
oreProcess.registerNormalPart("ore_crushed_enriched", "item", false);
oreProcess.registerNormalPart("ore_clean_crushed_infused", "item", false);

for material, color in materials {
    oreProcess.registerMaterial(material, color);
}

oreProcess.registerAllMaterialParts();

var oreProcess_ as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("ore_process_");
oreProcess_.addParts(["ingot", "plate", "nugget", "gear", "dust", "rod", "block"] as string[]);

for material, color in materials_ {
    oreProcess_.registerMaterial(material, color);
}
oreProcess_.registerAllMaterialParts();

