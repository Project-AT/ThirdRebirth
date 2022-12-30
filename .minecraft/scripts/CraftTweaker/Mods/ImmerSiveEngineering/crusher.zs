#priority 5
#modloaded trutils

import mods.immersiveengineering.Crusher;

Crusher.removeRecipe(<immersiveengineering:metal:19>);
Crusher.addRecipe(<thermalfoundation:material:1>, <ore:ingotGold>, 1);

Crusher.removeRecipe(<nuclearcraft:dust:12>);
Crusher.removeRecipe(<immersiveengineering:metal:10>);
Crusher.addRecipe(<thermalfoundation:material:68>, <ore:ingotAluminum>, 1);
