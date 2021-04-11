#priority 21
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;

var ironcoal_ore as Block = VanillaFactory.createBlock("ironcoal_ore", <blockmaterial:rock>);
ironcoal_ore.blockHardness = 5.0;
ironcoal_ore.toolClass = "pickaxe";
ironcoal_ore.toolLevel = 1;
ironcoal_ore.register();

var Aura_coal_block as Block = VanillaFactory.createBlock("aura_coal_block", <blockmaterial:rock>);
Aura_coal_block.blockHardness = 6.0;
Aura_coal_block.toolClass = "pickaxe";
Aura_coal_block.toolLevel = 2;
Aura_coal_block.register();

var aqua_ore_gravel as Block = VanillaFactory.createBlock("aqua_ore_gravel", <blockmaterial:sand>);
aqua_ore_gravel.blockHardness = 4.0;
aqua_ore_gravel.toolClass = "shovel";
Aura_coal_block.toolLevel = 0;
aqua_ore_gravel.register();

var overworld_anchor_point as Block = VanillaFactory.createBlock("overworld_anchor_point", <blockmaterial:rock>);
overworld_anchor_point.blockHardness = 10.0;
overworld_anchor_point.blockResistance = 50.0;
overworld_anchor_point.toolClass = "shovel";
overworld_anchor_point.toolLevel = 1;
overworld_anchor_point.lightValue = 1;
overworld_anchor_point.register();

var twilight_anchor_point as Block = VanillaFactory.createBlock("twilight_anchor_point", <blockmaterial:rock>);
twilight_anchor_point.blockHardness = 10.0;
twilight_anchor_point.blockResistance = 50.0;
twilight_anchor_point.toolClass = "pickaxe";
twilight_anchor_point.toolLevel = 1;
twilight_anchor_point.lightValue = 1;
twilight_anchor_point.register();

var evil_stone as Block = VanillaFactory.createBlock("evil_stone", <blockmaterial:rock>);
evil_stone.blockHardness = 20.0;
evil_stone.blockResistance = 50.0;
evil_stone.toolClass = "pickaxe";
evil_stone.toolLevel = 1;
evil_stone.lightValue = 1;
evil_stone.register();

var ender_portal_core as Block = VanillaFactory.createBlock("ender_portal_core", <blockmaterial:rock>);
ender_portal_core.blockHardness = 18.0;
ender_portal_core.blockResistance = 50.0;
ender_portal_core.toolClass = "pickaxe";
ender_portal_core.toolLevel = 3;
ender_portal_core.lightValue = 1;
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