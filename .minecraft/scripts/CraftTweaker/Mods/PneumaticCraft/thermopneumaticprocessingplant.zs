#priority 5
#modloaded atutils

import mods.pneumaticcraft.thermopneumaticprocessingplant;

thermopneumaticprocessingplant.removeRecipe(<liquid:plastic>);
thermopneumaticprocessingplant.addRecipe(<liquid:ethene> * 250, <minecraft:slime_ball>, 1.0, 373, <liquid:plastic> * 250);
thermopneumaticprocessingplant.addRecipe(<liquid:ethene> * 250, <psi:material:6>, 3.0, 573, <liquid:hdpe> * 250);