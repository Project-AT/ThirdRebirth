#priority 5
#modloaded atutils

import crafttweaker.oredict.IOreDict;

import mods.mekatweaker.InfuserType;

var types as string[] = ["signalum", "draconium", "crystaltine"];

for type in types {
    InfuserType.addType(type);
    InfuserType.addTypeObject(oreDict.get("ingot" + type), type, 10);
    InfuserType.addTypeObject(itemUtils.getItem("contenttweaker:compressed_" + type), type, 80);
}