#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;

recipes.addShapeless(<compactmachines3:wallbreakable> * 4, [<ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>]);

RecipeUtils.recipeTweak(true, <compactmachines3:psd>, [
    [<thermalfoundation:glass:6>, <advancedrocketry:misc>, <thermalfoundation:glass:6>],
    [<appliedenergistics2:material:24>, <contenttweaker:teleport_rune>, <appliedenergistics2:material:23>],
    [<appliedenergistics2:part:280>, <ore:enderpearl>, <appliedenergistics2:part:280>]
]);

RecipeUtils.recipeTweak(true, <compactmachines3:fieldprojector>, [
    [<thermalfoundation:glass_alloy:5>, <contenttweaker:thin_film_transistor>, <thermalfoundation:glass_alloy:5>],
    [<appliedenergistics2:material:24>, <ore:pearlFluix>, <appliedenergistics2:material:22>],
    [<compactmachines3:wallbreakable>, <compactmachines3:wallbreakable>, <compactmachines3:wallbreakable>]
]);