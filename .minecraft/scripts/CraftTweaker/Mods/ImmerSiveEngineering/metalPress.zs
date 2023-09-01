#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.immersiveengineering.MetalPress;

//mods.immersiveengineering.MetalPress.removeRecipe(IItemstack output);
//mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);

var plateMetals as string[] = [
    "Iron", "Gold", "Copper", "Silver", "Lead", "Aluminum", "Nickel", "Steel", "Electrum", "Constantan", "TitaniumIridium", "TitaniumAluminide", "Titanium"
];

var rodMetals as string[] = [
    "Copper", "Aluminum", "Iron", "Steel", "TitaniumIridium", "TitaniumAluminide", "Titanium"
];

var gearMetals as string[] = [
    "TitaniumIridium", "TitaniumAluminide", "Titanium"
];

var removeProduct as IItemStack[] = [
    <libvulpes:productrod:4>, <embers:plate_aluminum>, <advancedrocketry:productrod:1>, <advancedrocketry:productrod>, <libvulpes:productrod:7>, <libvulpes:productrod:10>,
    <advancedrocketry:productgear:1>, <advancedrocketry:productgear>, <libvulpes:productgear:7>, <advancedrocketry:productplate:1>, <advancedrocketry:productplate>,
    <libvulpes:productplate:7>
];

for i in removeProduct {
    MetalPress.removeRecipe(i);
}

for i in 30 to 41 {
    MetalPress.removeRecipe(<immersiveengineering:metal>.definition.makeStack(i));
}

for i in 1 to 4 {
    MetalPress.removeRecipe(<immersiveengineering:material>.definition.makeStack(i));
}

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

for metal in gearMetals {
    var oreGear as IOreDictEntry = oreDict.get("gear" + metal);
    var oreIngot as IOreDictEntry = oreDict.get("ingot" + metal);

    MetalPress.addRecipe(oreGear.firstItem * 4, oreIngot, <immersiveengineering:mold:1>, 2400);
}

MetalPress.addRecipe(<ore:plateTough>.firstItem, <ore:ingotTough>, <immersiveengineering:mold>, 2400);
MetalPress.addRecipe(<contenttweaker:insulating_substrate> * 9, <immersiveengineering:stone_decoration:8>, <immersiveengineering:mold>, 2400);
MetalPress.addRecipe(<contenttweaker:rune> * 2, <botania:livingrock>, <immersiveengineering:mold>, 2400);
MetalPress.addRecipe(<pneumaticcraft:empty_pcb:100>, <contenttweaker:pcb_substrate>, <pneumaticcraft:pcb_blueprint>, 2400);
MetalPress.addRecipe(<ore:xuUpgradeBlank>.firstItem, <ore:ingotRedstoneAlloy>   , <immersiveengineering:mold>, 2400);