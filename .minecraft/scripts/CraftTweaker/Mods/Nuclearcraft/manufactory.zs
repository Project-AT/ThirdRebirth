#priority 5
#modloaded trutils

import mods.nuclearcraft.Manufactory;

Manufactory.removeRecipeWithOutput(<ore:dustHOPGraphite>);
Manufactory.removeRecipeWithOutput(<ore:itemSilicon>);
Manufactory.addRecipe(<ore:dustCoke>, <ore:dustHOPGraphite>);