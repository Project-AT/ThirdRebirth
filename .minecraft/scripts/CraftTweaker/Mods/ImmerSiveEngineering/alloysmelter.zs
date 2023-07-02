#priority 5
#modloaded trutils

import mods.immersiveengineering.AlloySmelter;

AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.addRecipe(<thermalfoundation:material:161> * 2, <ore:Gold>, <ore:Silver>, 200);

AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, <ore:ingotEnergeticAlloy>, <ore:nuggetTerrasteel>, 200);

AlloySmelter.addRecipe(<thermalfoundation:material:164> * 2, <ore:Nickel>, <ore:Copper>, 200);

AlloySmelter.addRecipe(<ore:ingotRoseGold>.firstItem * 2, <ore:Gold>, <ore:Copper>, 200);

AlloySmelter.addRecipe(<embers:archaic_brick> * 2, <ore:soulSand>, <ore:netherrack>, 200);