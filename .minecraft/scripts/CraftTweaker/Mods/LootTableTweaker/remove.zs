#priority 5
#modloaded atutils

import mods.ltt.LootTable;


for mod in loadedMods {
    var modId as string = mod.id;
    
    if(modId != "minecraft") {
        LootTable.removeModItem(modId);
    }
}