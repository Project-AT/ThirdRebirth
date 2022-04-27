#priority 5
#modloaded trutils

import mods.immersiveengineering.CokeOven;

CokeOven.removeRecipe(<minecraft:coal:1>);
CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);

CokeOven.addRecipe(<primal_tech:charcoal_block>, 250, <ore:logWood>, 500);
CokeOven.addRecipe(<immersiveengineering:material:6>, 700, <ore:coal>, 500);
CokeOven.addRecipe(<immersiveengineering:stone_decoration:3>, 6000, <ore:blockCoal>, 5000);