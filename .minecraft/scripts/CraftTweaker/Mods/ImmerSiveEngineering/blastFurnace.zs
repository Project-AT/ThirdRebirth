#priority 5
#modloaded trutils

import mods.immersiveengineering.BlastFurnace;

BlastFurnace.removeFuel(<minecraft:coal:1>);
BlastFurnace.removeFuel(<thermalfoundation:storage_resource>);
BlastFurnace.removeFuel(<thermalfoundation:material:802>);
BlastFurnace.removeFuel(<thermalfoundation:storage_resource:1>);

BlastFurnace.addFuel(<thermalfoundation:material:802>, 300);
BlastFurnace.addFuel(<immersiveengineering:material:6>, 300);
BlastFurnace.addFuel(<contenttweaker:blast_furnace_fuel>, 1200);

BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);
BlastFurnace.addRecipe(<thermalfoundation:material:160>, <ore:ingotCrudeSteel>, 300, <immersiveengineering:material:7>);
BlastFurnace.addRecipe(<thermalfoundation:material:160>, <ore:ingotPureIron>, 600, <immersiveengineering:material:7>);
BlastFurnace.addRecipe(<thermalfoundation:storage_alloy>, <ore:blockCrudeSteel>, 2400, <immersiveengineering:material:7> * 9);
BlastFurnace.addRecipe(<thermalfoundation:storage_alloy>, <ore:blockPureIron>, 4800, <immersiveengineering:material:7> * 9);
BlastFurnace.addRecipe(<enderio:item_material:5>, <nuclearcraft:gem_dust:2>, 2000, <immersiveengineering:material:7>);
