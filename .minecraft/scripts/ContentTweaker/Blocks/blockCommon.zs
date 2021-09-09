#priority 21
#modloaded atutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import mods.contenttweaker.AxisAlignedBB;

//name meterial hardness resistance sound light gravity toolClass toolLevel AABB

CotUtils.addBlock("ironcoal_ore", <blockmaterial:rock>, 5.0, 5.0, <soundtype:Stone>, 0, false, "pickaxe", 1, null);
CotUtils.addBlock("aura_coal_block", <blockmaterial:rock>, 6.0, 5.0, <soundtype:Stone>, 0, false, "pickaxe", 2, null);
CotUtils.addBlock("ender_portal", <blockmaterial:rock>, 18.0, 50.0, <soundtype:Stone>, 0, false, "pickaxe", 3, AxisAlignedBB.create(0.0D, 0.0D, 0.0D, 1.0D, 0.75D, 1.0D));