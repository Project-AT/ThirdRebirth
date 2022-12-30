#priority 5
#modloaded trutils

import mods.immersiveengineering.AlloySmelter;

AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <ore:ingotSilver>, <ore:ingotGold>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <ore:dustSilver>, <ore:dustGold>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <ore:ingotSilver>, <ore:dustGold>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <ore:dustSilver>, <ore:ingotGold>, 200);

AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, <ore:ingotAluminum>, 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, <ore:dustAluminum>, 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:dustSteel> * 2, <ore:ingotAluminum> , 200);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 3, <ore:ingotSteel> * 2, <ore:dustAluminum>, 200);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, 200);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, 200);

AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:ingotNickel>, <ore:ingotCopper>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:dustNickel>, <ore:dustCopper>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:ingotNickel>, <ore:dustCopper>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:dustNickel>, <ore:ingotCopper>, 200);

AlloySmelter.addRecipe(<ore:ingotRoseGold>.firstItem * 2, <ore:ingotGold>, <ore:ingotCopper>, 200);