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
Carving.removeVariation("ice", <netherex:frostburn_ice>);
Carving.removeVariation("netherrack", <netherex:fiery_netherrack>);
Carving.removeVariation("netherrack", <netherex:icy_netherrack>);
Carving.removeVariation("netherrack", <netherex:gloomy_netherrack>);