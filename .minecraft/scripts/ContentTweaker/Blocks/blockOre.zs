#priority 20
#loader contenttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

val Ores as string[] = ["udOreAluminum","udOreNickel","udOreSilver","udOreUranium","netherBlackQuartz"];

function udOreRegistry(name as string){
    var Ore as Block = VanillaFactory.createBlock(name, <blockmaterial:rock>);
    Ore.blockHardness = 8.0;
    Ore.toolClass = "pickaxe";
    Ore.toolLevel = 2;
    Ore.register();
}

for i in Ores{
    udOreRegistry(i);
}