#priority 20
#loader contenttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val Ores as string[] = ["udOreAluminum","udOreNickel","udOreSilver","udOreUranium","netherBlackQuartz"];

for i in Ores{
    CotUtils.addBlock(i, <blockmaterial:rock>, 8.0, 5.0, <soundtype:Stone>, 0, false, "pickaxe", 2, null);
}