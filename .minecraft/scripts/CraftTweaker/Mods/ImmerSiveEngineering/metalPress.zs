#priority 5
#modloaded atutils

import crafttweaker.oredict.IOreDictEntry;

import mods.immersiveengineering.MetalPress;

var materials as string[] = [
    "Iron", "Gold", "Copper", "Silver", "Lead", "Aluminum", "Nickel", "Steel", "Electrum", "Constantan", 
];

for i in 31 to 41 {
    MetalPress.removeRecipe(<immersiveengineering:metal>.definition.makeStack(i));
}

for material in materials {
    var itemPlate as IOreDictEntry = oreDict.get("plate" + material);
    var itemIngot as IOreDictEntry = oreDict.get("ingot" + material);

    MetalPress.addRecipe(itemPlate.firstItem, itemIngot, <immersiveengineering:mold>, 2400);
}