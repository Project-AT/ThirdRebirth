#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <rftools:storage_scanner>, 
    inputPattern(["CYC", "CHC", "DCQ"])
        .with("C", <ore:ingotElectricalSteel> | <enderio:item_alloy_ingot>)
        .with("Y", <advancedrocketry:misc>)
        .with("H", <rftools:machine_frame>)
        .with("D", <ore:circuitBasic>)
        .with("Q", <rftools:sensor_block>).get()
);

RecipeUtils.recipeTweak(true, <rftools:storage_scanner>, 
    inputPattern(["CYC", "THT", "CQC"])
        .with("C", <ore:ingotElectricalSteel> | <enderio:item_alloy_ingot>)
        .with("Y", <advancedrocketry:misc>)
        .with("T", <contenttweaker:germanium_integrated_circuit_board>)
        .with("H", <rftools:machine_frame>)
        .with("Q", <rftools:sensor_block>).get()
);

RecipeUtils.recipeTweak(true, <xnet:controller>,
    inputPattern(["CYC", "THT", "CCC"])
        .with("C", <ore:ingotElectricalSteel> | <enderio:item_alloy_ingot>)
        .with("Y", <advancedrocketry:misc>)
        .with("T", <contenttweaker:germanium_integrated_circuit_board>).get()
);

RecipeUtils.recipeTweak(true, <xnet:controller>,
    inputPattern(["CYC", "CHC", "CDC"])
        .with("C", <ore:ingotElectricalSteel> | <enderio:item_alloy_ingot>)
        .with("Y", <advancedrocketry:misc>)
        .with("D", <ore:circuitBasic>).get()
);

RecipeUtils.recipeTweak(true, <rftools:sensor_block>, 
    inputPattern(["C0C", "1H2", "C3C"])
        .with("C", <ore:ingotElectricalSteel> | <enderio:item_alloy_ingot>)
        .with("0", <psi:exosuit_sensor>)
        .with("1", <psi:exosuit_sensor:1>)
        .with("2", <psi:exosuit_sensor:2>)
        .with("3", <psi:exosuit_sensor:3>)
        .with("H", <appliedenergistics2:view_cell>).get()
);

