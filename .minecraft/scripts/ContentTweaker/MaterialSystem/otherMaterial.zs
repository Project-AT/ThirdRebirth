#priority 30
#modloaded trutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

var materials as int[string] = {
    "Tough" : 0x171221,
    "Extreme" : 0x722A3C,
    "Dilithium" : 0xEEE7E5,
};

var otherMaterial as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("otherMaterial");

for material, color in materials {
    otherMaterial.registerMaterial(material, color);
}

otherMaterial.registerMaterialPart("Tough", "gear");
otherMaterial.registerMaterialPart("Tough", "block");
otherMaterial.registerMaterialPart("Extreme", "block");
otherMaterial.registerMaterialPart("Dilithium", "dust");