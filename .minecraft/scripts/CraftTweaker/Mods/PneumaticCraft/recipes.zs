#priority 5
#modloaded atutils

import scripts.CraftTweaker.Utils.artisanUtils;
import mods.pneumaticcraft.explosioncrafting;
import mods.pneumaticcraft.pressurechamber;

artisanUtils.RecipeTweakWithTools("designer", true, <pneumaticcraft:pcb_blueprint>,
    inputPattern([" D ", "LLL", "TTT"])
        .with("D", <immersiveengineering:material:27>)
        .with("L", <ore:plasticGreen>)
        .with("T", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 10, <ore:artisansTSquare> :10});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:thermopneumatic_processing_plant>,
    inputPattern(["YBY", "GCK", "YBY"])
        .with("Y", <ore:ingotIronCompressed>)
        .with("B", <ore:blockGlass>)
        .with("G", <pneumaticcraft:pressure_tube>)
        .with("C", <ore:itemSimpleMachineChassi>)
        .with("K", <ore:blockCopper>).get()
, {<ore:artisansHammer> : 15, <ore:artisansSpanner> : 7});

explosioncrafting.removeRecipe(<pneumaticcraft:ingot_iron_compressed>);

pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
