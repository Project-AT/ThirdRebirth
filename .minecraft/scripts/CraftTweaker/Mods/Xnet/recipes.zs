#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <xnet:controller>,
    inputPattern(["CYC", "THT", "CCC"])
        .with("C", <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
        .with("Y", <advancedrocketry:misc>)
        .with("H", <rftools:machine_frame>)
        .with("T", <contenttweaker:germanium_integrated_circuit_board> | <pneumaticcraft:printed_circuit_board>).get()
);

RecipeUtils.recipeTweak(true, <xnet:controller>,
    inputPattern(["CYC", "CHC", "CDC"])
        .with("C", <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
        .with("Y", <advancedrocketry:misc>)
        .with("H", <rftools:machine_frame>)
        .with("D", <contenttweaker:germanium_integrated_circuit_board>).get()
);