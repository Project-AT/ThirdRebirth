#priority 5
#modloaded trutils

import mods.nuclearcraft.Infuser;

Infuser.removeRecipeWithOutput(<ore:ingotLumium>);
Infuser.removeRecipeWithOutput(<ore:ingotSignalum>);
Infuser.removeRecipeWithOutput(<ore:ingotEnderium>);
Infuser.removeRecipeWithOutput(<immersiveengineering:treated_wood>);

Infuser.addRecipe(<appliedenergistics2:part:140>, <liquid:sic_vapor> * 4000, <ore:fiberSiliconCarbide>, 1, 5);
Infuser.addRecipe(<ore:itemConfusingDust>, <liquid:resin> * 1000, <nuclearcraft:compound:1>, 1, 8);
Infuser.addRecipe(<ore:plankWood>, <liquid:creosote> * 80, <immersiveengineering:treated_wood>, 0.5, 1);
Infuser.addRecipe(<ore:rodIronCompressed>, <liquid:concrete> * 1000, <advancedrocketry:concrete>, 0.5, 2);

