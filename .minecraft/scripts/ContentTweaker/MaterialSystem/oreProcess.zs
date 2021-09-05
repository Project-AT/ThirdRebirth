#priority 30
#modloaded atutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

var materials as int[string] = {
    "Gold" : 0xF8AF2B,
    "Iron" : 0xAF8E77,
    "CrudeSteel" : 0xA49892,
    "Uranium" : 0x3A5339,
    "Tritanium" : 0x283436,
    "Thorium" : 0x303030,
    "Osmium" : 0xA4B5CD,
    "Nickel" : 0xD8D8A9,
    "Platinum" : 0x33B2FF,
    "Titanium" : 0x947252,
    "Mithril" : 0x6CCDFF,
    "Iridium" : 0xBABAD6,
    "Boron" : 0x5F5F5F,
    "Lithium" : 0xEEEEEE,
    "Magnesium" : 0xEFD3ED,
    "Copper" : 0xFF7F15,
    "Tin" : 0xC7ECFF,
    "Silver" : 0xE4FBFE,
    "Lead" : 0x7C8DC5,
    "Aluminum" : 0xCECED3, 
};

var materials_ as int[string] = {
	"Germanium" : 0xD8D1BF,
	"HighStrengthAluminumAlloy" : 0xF2F2F2
};

var oreProcess as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("ore_process");
oreProcess.addParts(["shard", "crushed_ore"] as string[]);
oreProcess.registerNormalPart("enriched_ore", "ore", true);
oreProcess.registerNormalPart("mana_enriched_ore", "ore", true);
oreProcess.registerNormalPart("crushed_enriched_ore", "item", false);

for material, color in materials {
    oreProcess.registerMaterial(material, color);
}

oreProcess.registerAllMaterialParts();

var oreProcess_ as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("ore_process_");
oreProcess_.addParts(["Ingot", "Plate", "Nugget", "Gear", "Dust", "Rod", "Block"] as string[]);

for material, color in materials_ {
    oreProcess_.registerMaterial(material, color);
}
oreProcess_.registerAllMaterialParts();