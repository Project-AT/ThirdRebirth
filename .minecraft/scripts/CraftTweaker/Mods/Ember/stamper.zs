#priority 4
#modloaded trutils

import mods.embers.Stamper;

Stamper.add(<pneumaticcraft:empty_pcb:100>, <liquid:copper> * 144, <pneumaticcraft:pcb_blueprint>, <pneumaticcraft:plastic:2>);
Stamper.add(<contenttweaker:rune> * 2, null, <embers:stamp_plate>, <botania:livingrock>);

Stamper.add(<mekanism:polyethene>, <liquid:hdpe> * 100, <contenttweaker:stamp_nugget>);
Stamper.add(<ore:ingotManganeseDioxide>.firstItem, <liquid:manganese_dioxide> * 144, <embers:stamp_bar>);

mods.embers.Stamper.remove(<thermalfoundation:material:16>);
mods.embers.Stamper.remove(<thermalfoundation:material:17>);
Stamper.add(<thermalfoundation:material:16>, <liquid:diamond> * 76, <contenttweaker:stamp_nugget>);
Stamper.add(<thermalfoundation:material:17>, <liquid:emerald> * 76, <contenttweaker:stamp_nugget>);