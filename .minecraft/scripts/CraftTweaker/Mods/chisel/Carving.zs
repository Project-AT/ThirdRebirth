#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
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

mods.chisel.Carving.addGroup("mold");

var mold as IItemStack[] = [
    <immersiveengineering:mold>,
    <immersiveengineering:mold:1>,
    <immersiveengineering:mold:2>,
    <immersiveengineering:mold:3>,
    <immersiveengineering:mold:4>,
    <immersiveengineering:mold:5>,
    <immersiveengineering:mold:6>,
    <immersiveengineering:mold:7>
];

for item in mold {
    Carving.addVariation("mold", item);
}
