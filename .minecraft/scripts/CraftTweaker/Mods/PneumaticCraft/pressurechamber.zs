#priority 5
#modloaded atutils

import mods.pneumaticcraft.pressurechamber;

pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);

pressurechamber.addRecipe([<ore:dustCoke>], 3.0, [<immersiveengineering:material:18>]);