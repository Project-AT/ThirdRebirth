#priority 5
#modloaded trutils

import mods.botania.ManaInfusion;
ManaInfusion.addAlchemy(<contenttweaker:mana_crystal>, <ore:manaDiamond>, 50000);
ManaInfusion.addConjuration(<contenttweaker:research_point_lv1> * 2, <contenttweaker:research_point_lv1_incomplete>, 10000);
ManaInfusion.addInfusion(<contenttweaker:research_point_lv1>, <contenttweaker:research_point_lv1_incomplete>, 2500);

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <roots:runic_dust>, 555);
ManaInfusion.addInfusion(<botania:manaresource:23>, <ore:dustBedrock>, 555);
ManaInfusion.addInfusion(<botania:manaresource:23> * 2, <naturesaura:gold_powder>, 1111);
ManaInfusion.addInfusion(<botania:manaresource:0>, <ore:ingotRustyIron>, 4000);
ManaInfusion.addInfusion(<botania:storage:0>, <ore:blockRustyIron>, 36000);
ManaInfusion.addInfusion(<contenttweaker:mana_petals>, <roots:petals>, 500);
ManaInfusion.addInfusion(<botania:manaresource:16>, <contenttweaker:straw_rope>, 3000);
ManaInfusion.addInfusion(<botania:manaresource:16>, <ore:string>, 6000);
ManaInfusion.addInfusion(<botania:manaresource:0>, <ore:ingotPureIron>, 1500);
ManaInfusion.addInfusion(<botania:storage:0>, <ore:blockPureIron>, 13500);
ManaInfusion.addAlchemy(<thermalfoundation:material:865>, <ore:itemSlag>, 5000);