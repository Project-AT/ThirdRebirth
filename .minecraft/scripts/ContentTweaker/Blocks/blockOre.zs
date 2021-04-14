#priority 20
#loader contenttweaker

import mods.contenttweaker.Block;
import scripts.grassUtils.CotUtils;

val Ores as string[] = ["udOreAluminum","udOreNickel","udOreSilver","udOreUranium","netherBlackQuartz"];

for i in Ores{
    CotUtils.addBlock(i, <blockmaterial:rock>, 8.0, 5.0, <soundtype:Stone>, 0, false, "pickaxe", 2, null);
}