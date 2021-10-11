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

for i in 1 to 4 {
    MetalPress.removeRecipe(<immersiveengineering:material>.definition.makeStack(i));
}

MetalPress.addRecipe(<ore:plateTough>.firstItem, <ore:ingotTough>, <immersiveengineering:mold>, 2400);
MetalPress.addRecipe(<contenttweaker:insulating_substrate> * 9, <immersiveengineering:stone_decoration:8>, <immersiveengineering:mold>, 2400);

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