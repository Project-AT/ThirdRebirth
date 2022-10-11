#priority 5
#modloaded trutils
import crafttweaker.oredict.IOreDictEntry;

import mods.chisel.Carving;


function addChiselByOre(ore as IOreDictEntry) as void
{
    var name = "ThirdRebirth" ~ ore.name;
    //print(name);
    mods.chisel.Carving.addGroup(name);
    for item in ore.items {
        //recipes.remove(item);
        Carving.addVariation(name, item);
    }
    return;
}

addChiselByOre(<ore:mold>);