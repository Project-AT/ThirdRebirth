#priority 30
#modloaded trutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

var materials as int[string] = {
    "Tough" : 0x171221,
    "Extreme" : 0x722A3C,
    "Dilithium" : 0x8FD6D6,
    "IronCompressed" : 0x636363,
};

var lightningMaterials_ as int[string] = {
    "Electricium" : 0xADFFFF,
    "Skyfather" : 0x2B2B2B,
    "Mystic" : 0xCB2323,
};

var rodMaterials_ as int[string] = {
    "Iron" : 0xD8D8D8,
    "Gold" : 0xFFFF0B,
    "Copper" : 0xFFD071,
    "Tin" : 0xCAE3E3,
    "Steel" : 0xB3B3B3,
    "Aluminum" : 0xEBEBF4,
};

var otherMaterial as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("otherMaterial");

for material, color in materials {
    otherMaterial.registerMaterial(material, color);
}

otherMaterial.registerMaterialPart("Tough", "gear");
otherMaterial.registerMaterialPart("Tough", "block");
otherMaterial.registerMaterialPart("Extreme", "block");
otherMaterial.registerMaterialPart("Dilithium", "dust");
otherMaterial.registerMaterialPart("IronCompressed", "plate");

var lightningOreProcess_ as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("ore_process_");
lightningOreProcess_.addParts(["plate", "rod"] as string[]);

for material, color in lightningMaterials_ {
    lightningOreProcess_.registerMaterial(material, color);
}
lightningOreProcess_.registerAllMaterialParts();

var rodOreProcess_ as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("ore_process_");
rodOreProcess_.addParts(["rod"] as string[]);

for material, color in rodMaterials_ {
    rodOreProcess_.registerMaterial(material, color);
}
rodOreProcess_.registerAllMaterialParts();