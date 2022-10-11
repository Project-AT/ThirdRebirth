#priority 5
#modloaded trutils

import mods.botania.ManaInfusion;
ManaInfusion.addAlchemy(<contenttweaker:mana_crystal>, <ore:manaDiamond>, 50000);

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <roots:runic_dust>, 555);
ManaInfusion.addInfusion(<botania:manaresource:23>, <ore:dustBedrock>, 555);
ManaInfusion.addInfusion(<botania:manaresource:23> * 2, <naturesaura:gold_powder>, 1111);