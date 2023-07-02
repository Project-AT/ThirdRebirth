#priority 5
#modloaded trutils

import mods.pneumaticcraft.pressurechamber;

pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);
pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);
pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);
pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);
pressurechamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);

pressurechamber.addRecipe([<ore:dustCoke>], 3.0, [<immersiveengineering:material:18>]);
pressurechamber.addRecipe([<embers:intelligent_apparatus>, <pneumaticcraft:printed_circuit_board>], 3.5, [<pneumaticcraft:advanced_pcb> * 4]);