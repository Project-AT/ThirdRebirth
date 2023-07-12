#priority 5
#modloaded trutils

import mods.immersiveengineering.AlloySmelter;

AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.removeRecipe(<thermalfoundation:material:162>);
AlloySmelter.removeRecipe(<thermalfoundation:material:163>);

AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <ore:Gold>, <ore:Silver>, 200);
AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:Nickel>, <ore:Copper>, 200);
AlloySmelter.addRecipe(<ore:ingotRoseGold>.firstItem * 2, <ore:Gold>, <ore:Copper>, 200);
AlloySmelter.addRecipe(<embers:archaic_brick> * 2, <ore:soulSand>, <ore:netherrack>, 200);
AlloySmelter.addRecipe(<ore:ingotBronze>.firstItem * 4, <ore:Tin>, <ore:Copper> * 3, 200);
AlloySmelter.addRecipe(<ore:ingotInvar>.firstItem * 3, <ore:Nickel>, <ore:Iron> * 2, 200);