#priority 5
#modloaded trutils

import mods.immersiveengineering.AlloySmelter;

AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.addRecipe(<thermalfoundation:material:161>, <ore:ingotSilver>, <ore:ingotGold>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:161>, <ore:dustSilver>, <ore:dustGold>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:161>, <ore:ingotSilver>, <ore:dustGold>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:161>, <ore:dustSilver>, <ore:ingotGold>, 200);

AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, <ore:ingotAluminum>, 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, <ore:dustAluminum>, 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, <ore:ingotAluminum> , 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, <ore:dustAluminum>, 200);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, 200);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, 200);
AlloySmelter.addRecipe(<enderio:item_material:75>, <ore:substanceEbony>, <ore:dustBedrock> * 2, 200);
AlloySmelter.addRecipe(<ore:ingotRoseGold>.firstItem * 2, <ore:ingotGold>, <ore:ingotCopper>, 200);