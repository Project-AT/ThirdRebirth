#priority 5
#modloaded atutils
import mods.nuclearcraft.Infuser;

Infuser.removeRecipeWithOutput(<ore:ingotLumium>);
Infuser.removeRecipeWithOutput(<ore:ingotSignalum>);

Infuser.addRecipe(<appliedenergistics2:part:140>, <liquid:sic_vapor> * 4000, <ore:fiberSiliconCarbide>, 120, 5);
