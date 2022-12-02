#priority 5
#modloaded trutils

import mods.nuclearcraft.Infuser;

Infuser.removeRecipeWithOutput(<ore:ingotLumium>);
Infuser.removeRecipeWithOutput(<ore:ingotSignalum>);

Infuser.addRecipe(<appliedenergistics2:part:140>, <liquid:sic_vapor> * 4000, <ore:fiberSiliconCarbide>, 6, 5);
Infuser.addRecipe(<contenttweaker:glazed_refractory_brick>, <liquid:potion>.withTag({Potion : "minecraft:fire_resistance"}) * 250, <enderio:item_material:72>);
Infuser.addRecipe(<ore:itemConfusingDust>, <liquid:resin> * 1000, <nuclearcraft:compound:1>);

