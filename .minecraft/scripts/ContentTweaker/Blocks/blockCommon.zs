#priority 21
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;

var evil_stone as Block = VanillaFactory.createBlock("evil_stone", <blockmaterial:rock>);
evil_stone.blockHardness = 20.0;
evil_stone.blockResistance = 50.0;
evil_stone.toolClass = "pickaxe";
evil_stone.toolLevel = 3;
evil_stone.lightValue = 2;
evil_stone.register();

var ender_portal_core as Block = VanillaFactory.createBlock("ender_portal_core", <blockmaterial:rock>);
ender_portal_core.blockHardness = 18.0;
ender_portal_core.blockResistance = 50.0;
ender_portal_core.toolClass = "pickaxe";
ender_portal_core.toolLevel = 3;
evil_stone.lightValue = 3;
ender_portal_core.register();

var no_energy_table as Block = VanillaFactory.createBlock("no_energy_table", <blockmaterial:rock>);
no_energy_table.axisAlignedBB = AxisAlignedBB.create(0.1D, 0.0D, 0.1D, 0.9D, 0.9D, 0.9D);
no_energy_table.blockHardness = 10.0;
no_energy_table.blockResistance = 50.0;
no_energy_table.toolClass = "pickaxe";
no_energy_table.toolLevel = 2;
no_energy_table.fullBlock = false;
no_energy_table.blockLayer = "TRANSLUCENT";
no_energy_table.translucent = true;
no_energy_table.register();

var ender_portal as Block = VanillaFactory.createBlock("ender_portal", <blockmaterial:rock>);
ender_portal.axisAlignedBB = AxisAlignedBB.create(0.0D, 0.0D, 0.0D, 1.0D, 0.75D, 1.0D);
ender_portal.blockHardness = 18.0;
ender_portal.blockResistance = 50.0;
ender_portal.toolClass = "pickaxe";
ender_portal.toolLevel = 3;
ender_portal.fullBlock = false;
ender_portal.blockLayer = "TRANSLUCENT";
ender_portal.translucent = true;
ender_portal.register();
