#priority 5
#modloaded atutils

import mods.immersiveengineering.AlloySmelter;

AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, <ore:ingotAluminum>, 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, <ore:dustAluminum>, 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, <ore:ingotAluminum> , 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, <ore:dustAluminum>, 200);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, 200);