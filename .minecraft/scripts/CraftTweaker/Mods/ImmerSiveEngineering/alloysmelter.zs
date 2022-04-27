#priority 5
#modloaded atutils

import mods.immersiveengineering.AlloySmelter;

AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.addRecipe(<thermalfoundation:material:161>,<ore:ingotSilver>,<ore:ingotGold>,200);
AlloySmelter.addRecipe(<thermalfoundation:material:161>,<ore:dustSilver>,<ore:dustGold>,200);
AlloySmelter.addRecipe(<thermalfoundation:material:161>,<ore:ingotSilver>,<ore:dustGold>,200);
AlloySmelter.addRecipe(<thermalfoundation:material:161>,<ore:dustSilver>,<ore:ingotGold>,200);