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

RecipeUtils.recipeTweak(true, <xnet:netcable:1>*6, [
    [<ore:plasticRed>, <ore:plasticRed>,<ore:plasticRed>],
    [<thermaldynamics:duct_16:2>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32>],
    [<ore:plasticRed>,<ore:plasticRed>,<ore:plasticRed>]
]);
RecipeUtils.recipeTweak(true, <xnet:netcable:2>*6, [
    [<ore:plasticYellow>, <ore:plasticYellow>,<ore:plasticYellow>],
    [<thermaldynamics:duct_16:2>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32>],
    [<ore:plasticYellow>,<ore:plasticYellow>,<ore:plasticYellow>]
]);
RecipeUtils.recipeTweak(true, <xnet:netcable:0>*6, [
    [<ore:plasticBlue>, <ore:plasticBlue>,<ore:plasticBlue>],
    [<thermaldynamics:duct_16:2>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32>],
    [<ore:plasticBlue>,<ore:plasticBlue>,<ore:plasticBlue>]
]);
RecipeUtils.recipeTweak(true, <xnet:netcable:3>*6, [
    [<ore:plasticGreen>, <ore:plasticGreen>,<ore:plasticGreen>],
    [<thermaldynamics:duct_16:2>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32>],
    [<ore:plasticGreen>,<ore:plasticGreen>,<ore:plasticGreen>]
]);
