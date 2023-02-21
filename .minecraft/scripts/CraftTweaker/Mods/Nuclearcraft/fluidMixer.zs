#priority 5
#modloaded trutils

import mods.nuclearcraft.SaltMixer;

mods.nuclearcraft.SaltMixer.removeRecipeWithOutput(<liquid:tough> * 144);
mods.nuclearcraft.SaltMixer.addRecipe(<liquid:poison> * 1000, <liquid:sulfuric_acid> * 1000, <liquid:etchacid> * 1000);
