#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var recipeNames as string[] = [
    "xnet:connector_0"
];

for recipeName in recipeNames {
    recipes.removeByRecipeName(recipeName);
}

RecipeUtils.recipeTweak(true, <xnet:controller>,
    inputPattern(["CYC", "THT", "CCC"])
        .with("C", <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
        .with("Y", <advancedrocketry:misc>)
        .with("H", <rftools:machine_frame>)
        .with("T", <pneumaticcraft:printed_circuit_board>).get()
);

RecipeUtils.recipeTweak(true, <xnet:controller>,
    inputPattern(["CYC", "CHC", "CDC"])
        .with("C", <ore:ingotElectricalSteel> | <ore:ingotPureIron>)
        .with("Y", <advancedrocketry:misc>)
        .with("H", <rftools:machine_frame>)
        .with("D", <contenttweaker:germanium_integrated_circuit_board>).get()
);

RecipeUtils.recipeTweak(true, <xnet:netcable:1> * 6, [
    [<ore:plasticRed>, <ore:plasticRed>, <ore:plasticRed>],
    [<thermaldynamics:duct_16:2> | <thermaldynamics:duct_16:3>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32> | <thermaldynamics:duct_32:1>],
    [<ore:plasticRed>, <ore:plasticRed>, <ore:plasticRed>]
]);

RecipeUtils.recipeTweak(true, <xnet:netcable:2> * 6, [
    [<ore:plasticYellow>, <ore:plasticYellow>, <ore:plasticYellow>],
    [<thermaldynamics:duct_16:2> | <thermaldynamics:duct_16:3>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32> | <thermaldynamics:duct_32:1>],
    [<ore:plasticYellow>, <ore:plasticYellow>, <ore:plasticYellow>]
]);

RecipeUtils.recipeTweak(true, <xnet:netcable:0> * 6, [
    [<ore:plasticBlue>, <ore:plasticBlue>, <ore:plasticBlue>],
    [<thermaldynamics:duct_16:2> | <thermaldynamics:duct_16:3>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32> | <thermaldynamics:duct_32:1>],
    [<ore:plasticBlue>, <ore:plasticBlue>, <ore:plasticBlue>]
]);

RecipeUtils.recipeTweak(true, <xnet:netcable:3> * 6, [
    [<ore:plasticGreen>, <ore:plasticGreen>, <ore:plasticGreen>],
    [<thermaldynamics:duct_16:2> | <thermaldynamics:duct_16:3>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32> | <thermaldynamics:duct_32:1>],
    [<ore:plasticGreen>, <ore:plasticGreen>, <ore:plasticGreen>]
]);

RecipeUtils.recipeTweak(true, <xnet:netcable:3> * 24, [
    [<ore:plasticLightBlue>, <ore:plasticWhite>, <ore:plasticLightBlue>],
    [<thermaldynamics:duct_16:2> | <thermaldynamics:duct_16:3>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_32> | <thermaldynamics:duct_32:1>],
    [<ore:plasticLightBlue>, <ore:plasticWhite>, <ore:plasticLightBlue>]
]);

for i in 0 .. 4 {
    recipes.addShaped(<xnet:connector>.definition.makeStack(i),
        inputPattern([" Q", "QWQ", " Q"])
            .with("Q", <xnet:netcable>.definition.makeStack(i))
            .with("W", <rftools:sensor_block>).get()
    );
}
