#priority 15
#loader mekatweaker
#modloaded trutils

import mods.mekatweaker.InfuserType;

var typeNames as string[] = ["Signalum", "Draconium", "Crystaltine"];

for typeName in typeNames {
    InfuserType.addType(typeName.toLowerCase());
}
