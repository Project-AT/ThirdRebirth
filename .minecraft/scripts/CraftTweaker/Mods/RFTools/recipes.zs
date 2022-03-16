#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <rftools:storage_scanner>, 
    inputPattern(["CYC", "CHC", "DCQ"])
        .with("C", <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
        .with("Y", <advancedrocketry:misc>)
        .with("H", <rftools:machine_frame>)
        .with("D", <contenttweaker:germanium_integrated_circuit_board>)
        .with("Q", <rftools:sensor_block>).get()
);

RecipeUtils.recipeTweak(true, <rftools:storage_scanner>, 
    inputPattern(["CYC", "THT", "CQC"])
        .with("C", <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
        .with("Y", <advancedrocketry:misc>)
        .with("T", <pneumaticcraft:printed_circuit_board>)
        .with("H", <rftools:machine_frame>)
        .with("Q", <rftools:sensor_block>).get()
);

RecipeUtils.recipeTweak(true, <rftools:sensor_block>, 
    inputPattern(["C0C", "1H2", "C3C"])
        .with("C", <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
        .with("0", <psi:exosuit_sensor>)
        .with("1", <psi:exosuit_sensor:1>)
        .with("2", <psi:exosuit_sensor:2>)
        .with("3", <psi:exosuit_sensor:3>)
        .with("H", <appliedenergistics2:view_cell>).get()
);

RecipeUtils.recipeTweak(true, <rftools:sensor_block>, [
    [<ore:ingotElectricalSteel> | <ore:ingotPureIron>, <contenttweaker:sensitive_element>, <ore:ingotElectricalSteel> | <ore:ingotPureIron>],
    [<contenttweaker:sensitive_element>, <appliedenergistics2:view_cell>, <contenttweaker:sensitive_element>],
    [<ore:ingotElectricalSteel> | <ore:ingotPureIron>, <contenttweaker:sensitive_element>, <ore:ingotElectricalSteel> | <ore:ingotPureIron>]
]);

artisanUtils.RecipeTweakWithTools("engineer", true, <rftools:machine_frame>, 
    RecipeUtils.createCrossWithCore(<ore:dustRedstone>, <ore:ingotSteel>, <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
, {<ore:artisansHammer> : 10, <ore:artisansSpanner> : 10});