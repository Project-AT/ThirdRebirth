#priority 20
#modloaded atutils
#loader contenttweaker

import mods.contenttweaker.Block;
import scripts.grassUtils.CotUtils;

val ores as string[] = ["udOreAluminum", "udOreNickel", "udOreUranium"];

for ore in ores {
    CotUtils.addBlock(ore, <blockmaterial:rock>, 8.0, 5.0, <soundtype:Stone>, 0, false, "pickaxe", 2, null);
}