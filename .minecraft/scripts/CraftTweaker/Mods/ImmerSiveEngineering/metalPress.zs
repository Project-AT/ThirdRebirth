#priority 5
#modloaded atutils

import crafttweaker.oredict.IOreDictEntry;

import mods.immersiveengineering.MetalPress;

var plateMetals as string[] = [
    "Iron", "Gold", "Copper", "Silver", "Lead", "Aluminum", "Nickel", "Steel", "Electrum", "Constantan", 
];

var rodMetals as string[] = [
    "Copper", "Aluminum", "Iron", "Steel"
];

for i in 30 to 41 {
    MetalPress.removeRecipe(<immersiveengineering:metal>.definition.makeStack(i));
}

MetalPress.removeRecipe(<libvulpes:productrod:4>);
MetalPress.removeRecipe(<immersiveengineering:material:1>);
MetalPress.removeRecipe(<immersiveengineering:material:2>);
MetalPress.removeRecipe(<immersiveengineering:material:3>);

for metal in plateMetals {
    var orePlate as IOreDictEntry = oreDict.get("plate" + metal);
    var oreIngot as IOreDictEntry = oreDict.get("ingot" + metal);

    MetalPress.addRecipe(orePlate.firstItem, oreIngot, <immersiveengineering:mold>, 2400);
}

for metal in rodMetals {
    var oreRod as IOreDictEntry = oreDict.get("rod" + metal);
    var oreIngot as IOreDictEntry = oreDict.get("ingot" + metal);

    MetalPress.addRecipe(oreRod.firstItem * 2, oreIngot, <immersiveengineering:mold:2>, 1800);
}