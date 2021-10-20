#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <appliedenergistics2:view_cell>, 
    RecipeUtils.createCrossWithCore(<ore:dustGlowstone>, <ore:ingotElectricalSteel> | <ore:ingotPureIron>, <ore:fusedQuartz>)
);

RecipeUtils.recipeTweak(true, <advancedrocketry:misc>, 
    RecipeUtils.createCrossWithCore(<appliedenergistics2:view_cell>, <ore:plasticBlack>, <ore:fusedQuartz>)
);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:220>, [
    [<appliedenergistics2:interface>, <rftools:sensor_block>]
]);

RecipeUtils.recipeTweak(true, <rf-capability-adapter:aecapabilityadapter>, [
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:1>, <ore:ingotElectricalSteel>],
    [<appliedenergistics2:material:1>, <appliedenergistics2:interface>, <appliedenergistics2:material:1>],
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:1>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:221>, [
    [<appliedenergistics2:fluid_interface>, <rftools:sensor_block>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:380>, [
    [null, <appliedenergistics2:material:22>, null],
    [<appliedenergistics2:material:24>, <ore:itemIlluminatedPanel>, <appliedenergistics2:material:23>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:material:28>*3, [
    [<ore:ingotPlatinum>, <ore:ingotElectricalSteel>, null],
    [<ore:dustSignalum>, <appliedenergistics2:material:23>, <ore:ingotElectricalSteel>],
    [<ore:ingotPlatinum>, <ore:ingotElectricalSteel>, null]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:energy_acceptor>, [
    [<ore:ingotElectricalSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotElectricalSteel>],
    [<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:1>, <appliedenergistics2:quartz_glass>],
    [<ore:ingotElectricalSteel>, <appliedenergistics2:quartz_glass>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:360>, [
    [null, <appliedenergistics2:material:22>, null],
    [<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:23>],
    [null, <artisanworktables:worktable:5>, null]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:180>*3, [
    [null, <ore:ingotElectricalSteel>, <ore:blockGlassHardened>],
    [<ore:ingotElectricalSteel>, <advancedrocketry:misc>, <ore:blockGlassHardened>],
    [null, <ore:ingotElectricalSteel>, <ore:blockGlassHardened>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:security_station>, [
    [<ore:ingotElectricalSteel>, <appliedenergistics2:part:380>, <ore:ingotElectricalSteel>],
    [<appliedenergistics2:material:1>, <mekanism:basicblock:8>, <appliedenergistics2:material:1>],
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:24>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:crafting_unit>, [
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:23>, <ore:ingotElectricalSteel>],
    [<ore:dustSignalum>, <appliedenergistics2:material:22>, <ore:dustSignalum>],
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:23>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:460>, [
    [null, <ore:ingotElectricalSteel>, null],
    [<ore:ingotElectricalSteel>, <appliedenergistics2:material:1>, <ore:ingotElectricalSteel>],
    [<appliedenergistics2:material:1>, <appliedenergistics2:material:24>, <appliedenergistics2:material:1>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:fluid_interface>, [
    [<ore:ingotIronCompressed>, <mekanism:plasticblock:4>, <ore:ingotIronCompressed>],
    [<thermaldynamics:servo:3>, null, <thermaldynamics:retriever:3>],
    [<ore:ingotIronCompressed>, <mekanism:plasticblock:4>, <ore:ingotIronCompressed>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:261>, [
    [null, <mekanism:plasticblock:4>, null],
    [<ore:ingotIronCompressed>, <thermaldynamics:retriever:3>, <ore:ingotIronCompressed>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:260>, [
    [null, <ore:fusedQuartz>, null],
    [<ore:ingotIronCompressed>, <thermaldynamics:retriever:3>, <ore:ingotIronCompressed>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:241>, [
    [null, <mekanism:plasticblock:4>, null],
    [<ore:ingotIronCompressed>, <thermaldynamics:servo:3>, <ore:ingotIronCompressed>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:241>, [
    [null, <mekanism:plasticblock:4>, null],
    [<ore:ingotIronCompressed>, <thermaldynamics:retriever:3>, <ore:ingotIronCompressed>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:240>, [
    [null, <ore:fusedQuartz>, null],
    [<ore:ingotIronCompressed>, <thermaldynamics:retriever:3>, <ore:ingotIronCompressed>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:interface>, [
    [<ore:ingotIronCompressed>, <ore:fusedQuartz>, <ore:ingotIronCompressed>],
    [<thermaldynamics:servo:3>, null, <thermaldynamics:retriever:3>],
    [<ore:ingotIronCompressed>, <ore:fusedQuartz>, <ore:ingotIronCompressed>]
]);

RecipeUtils.recipeTweak(true, <packagedauto:me_package_component>, [
    [<ore:ingotElectricalSteel>, <ore:fusedQuartz>, <ore:ingotElectricalSteel>],
    [<appliedenergistics2:material:1>, <packagedauto:package_component>, <appliedenergistics2:material:1>],
    [<ore:ingotElectricalSteel>, <ore:fusedQuartz>, <ore:ingotElectricalSteel>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:material:25> * 3, [
    [<ore:ingotGold>, <ore:ingotElectricalSteel>, null],
    [<ore:dustSignalum>, <appliedenergistics2:material:23>, <ore:ingotElectricalSteel>],
    [<ore:ingotGold>, <ore:ingotElectricalSteel>, null]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:36> * 3, [
    [<ore:wool>, <mekanism:polyethene:2>, <ore:wool>],
    [<thermaldynamics:duct_0:2>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_32:2>],
    [<ore:wool>, <mekanism:polyethene:2>, <ore:wool>]
]); 