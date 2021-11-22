#priority 5
#modloaded atutils

import mods.nuclearcraft.Infuser;

Infuser.removeRecipeWithOutput(<ore:ingotLumium>);
Infuser.removeRecipeWithOutput(<ore:ingotSignalum>);

Infuser.addRecipe(<appliedenergistics2:part:140>, <liquid:sic_vapor> * 4000, <ore:fiberSiliconCarbide>, 120, 5);
//Infuser.addRecipe(<contenttweaker:glazed_refractory_brick>, <liquid:minecraft:fire_resistance> * 4000, <enderio:item_material:72>);
