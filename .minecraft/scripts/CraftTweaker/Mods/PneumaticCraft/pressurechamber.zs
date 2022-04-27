#priority 5
#modloaded trutils

import mods.pneumaticcraft.pressurechamber;

pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);
pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);
pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);
pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);

pressurechamber.addRecipe([<ore:dustCoke>], 3.0, [<immersiveengineering:material:18>]);