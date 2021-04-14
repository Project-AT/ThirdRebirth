#priority 21
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import mods.contenttweaker.AxisAlignedBB;

//name meterial hardness resistance sound light gravity toolClass toolLevel AABB

CotUtils.addBlock("ironcoal_ore", <blockmaterial:rock>, 5.0, 5.0, <soundtype:Stone>, 0, false, "pickaxe", 1, null);
CotUtils.addBlock("aura_coal_block", <blockmaterial:rock>, 6.0, 5.0, <soundtype:Stone>, 0, false, "pickaxe", 2, null);
CotUtils.addBlock("aqua_ore_gravel", <blockmaterial:sand>, 2.0, 5.0, <soundtype:sand>, 0, true, "shovel", 1, null);
CotUtils.addBlock("overworld_anchor_point", <blockmaterial:rock>, 15.0, 50.0, <soundtype:Stone>, 1, false, "pickaxe", 2, null);
CotUtils.addBlock("twilight_anchor_point", <blockmaterial:rock>, 15.0, 50.0, <soundtype:Stone>, 1, false, "pickaxe", 2, null);
CotUtils.addBlock("evil_stone", <blockmaterial:rock>, 15.0, 50.0, <soundtype:Stone>, 1, false, "pickaxe", 1, null);
CotUtils.addBlock("ender_portal_core", <blockmaterial:rock>, 15.0, 50.0, <soundtype:Stone>, 1, false, "pickaxe", 3, null);
CotUtils.addBlock("no_energy_table", <blockmaterial:rock>, 10.0, 50.0, <soundtype:Stone>, 0, false, "pickaxe", 2, AxisAlignedBB.create(0.1D, 0.0D, 0.1D, 0.9D, 0.9D, 0.9D));
CotUtils.addBlock("ender_portal", <blockmaterial:rock>, 18.0, 50.0, <soundtype:Stone>, 0, false, "pickaxe", 3, AxisAlignedBB.create(0.0D, 0.0D, 0.0D, 1.0D, 0.75D, 1.0D));