#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;

var ingotTwo as IIngredient = <ore:ingotElectricalSteel> | <ore:ingotPureIron>;

RecipeUtils.recipeTweak(true, <appliedenergistics2:view_cell>, 
    RecipeUtils.createCrossWithCore(<ore:dustGlowstone>, ingotTwo, <ore:fusedQuartz>)
);

RecipeUtils.recipeTweak(true, <advancedrocketry:misc>, 
    RecipeUtils.createCrossWithCore(<appliedenergistics2:view_cell>, <ore:plasticBlack>, <ore:fusedQuartz>)
);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:220>, [
    [<appliedenergistics2:interface>, <rftools:sensor_block>]
]);

RecipeUtils.recipeTweak(true, <rf-capability-adapter:aecapabilityadapter>, [
    [ingotTwo, <appliedenergistics2:material:1>, ingotTwo],
    [<appliedenergistics2:material:1>, <appliedenergistics2:interface>, <appliedenergistics2:material:1>],
    [ingotTwo, <appliedenergistics2:material:1>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:221>, [
    [<appliedenergistics2:fluid_interface>, <rftools:sensor_block>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:380>, [
    [null, <appliedenergistics2:material:22>, null],
    [<appliedenergistics2:material:24>, <ore:itemIlluminatedPanel>, <appliedenergistics2:material:23>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:material:28>*3, [
    [<ore:ingotPlatinum>, ingotTwo, null],
    [<ore:dustSignalum>, <appliedenergistics2:material:23>, ingotTwo],
    [<ore:ingotPlatinum>, ingotTwo, null]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:energy_acceptor>, [
    [ingotTwo, <appliedenergistics2:quartz_glass>, ingotTwo],
    [<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:1>, <appliedenergistics2:quartz_glass>],
    [ingotTwo, <appliedenergistics2:quartz_glass>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:360>, [
    [null, <appliedenergistics2:material:22>, null],
    [<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:23>],
    [null, <artisanworktables:worktable:5>, null]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:180>*3, [
    [null, ingotTwo, <ore:blockGlassHardened>],
    [ingotTwo, <advancedrocketry:misc>, <ore:blockGlassHardened>],
    [null, ingotTwo, <ore:blockGlassHardened>]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:security_station>, [
    [ingotTwo, <appliedenergistics2:part:380>, ingotTwo],
    [<appliedenergistics2:material:1>, <mekanism:basicblock:8>, <appliedenergistics2:material:1>],
    [ingotTwo, <appliedenergistics2:material:24>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:crafting_unit>, [
    [ingotTwo, <appliedenergistics2:material:23>, ingotTwo],
    [<ore:dustSignalum>, <appliedenergistics2:material:22>, <ore:dustSignalum>],
    [ingotTwo, <appliedenergistics2:material:23>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:460>, [
    [null, ingotTwo, null],
    [ingotTwo, <appliedenergistics2:material:1>, ingotTwo],
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
    [ingotTwo, <ore:fusedQuartz>, ingotTwo],
    [<appliedenergistics2:material:1>, <packagedauto:package_component>, <appliedenergistics2:material:1>],
    [ingotTwo, <ore:fusedQuartz>, ingotTwo]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:material:25> * 3, [
    [<ore:ingotGold>, ingotTwo, null],
    [<ore:dustSignalum>, <appliedenergistics2:material:23>, ingotTwo],
    [<ore:ingotGold>, ingotTwo, null]
]);

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:36> * 3, [
    [<ore:wool>, <mekanism:polyethene:2>, <ore:wool>],
    [<thermaldynamics:duct_0:2>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_32:2>],
    [<ore:wool>, <mekanism:polyethene:2>, <ore:wool>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:36> * 3, [
    [null, <minecraft:lever>, null],
    [<ore:dustRedstone>, <appliedenergistics2:part:36>, <ore:dustRedstone>],
    [null, <minecraft:lever>, null]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:301>, [
    [<appliedenergistics2:part:300>, <ore:eye>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:302>, [
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
    [<ore:ingotPureIron>, <appliedenergistics2:part:36>, <ore:ingotPureIron>],
    [<ore:ingotPureIron>, <immersiveengineering:metal_device0:5>, <ore:ingotPureIron>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:300>, [
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
    [<ore:ingotPureIron>, <appliedenergistics2:part:36>, <ore:ingotPureIron>],
    [<ore:ingotPureIron>, <embers:breaker>, <ore:ingotPureIron>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:320>, [
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
    [<ore:ingotPureIron>, <appliedenergistics2:part:36>, <ore:ingotPureIron>],
    [<ore:ingotPureIron>, <ore:hopper>, <ore:ingotPureIron>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:part:321>, [
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
    [<ore:ingotPureIron>, <appliedenergistics2:part:36>, <ore:ingotPureIron>],
    [<ore:ingotPureIron>, <flopper:flopper>, <ore:ingotPureIron>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:inscriber>, [
    [<ore:ingotDarkSteel>, <minecraft:sticky_piston>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, null ,null],
    [<ore:ingotDarkSteel>, <minecraft:sticky_piston>, <ore:ingotDarkSteel>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:quartz_growth_accelerator>, [
    [<ore:ingotPureIron>, <appliedenergistics2:material:1>, <ore:ingotPureIron>],
    [<ore:fusedQuartz>, <appliedenergistics2:quartz_block>, <ore:fusedQuartz>],
    [<ore:ingotPureIron>, <appliedenergistics2:material:1>, <ore:ingotPureIron>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:energy_cell>, [
    [<ore:crystalCertusQuartz>, <ore:dustLithium>, <ore:crystalCertusQuartz>],
    [<ore:dustLithium>, <ore:fusedQuartz>, <ore:dustLithium>],
    [<ore:crystalCertusQuartz>, <ore:dustLithium>, <ore:crystalCertusQuartz>]
]); 

RecipeUtils.recipeTweak(true, <appliedenergistics2:charger>, [
    [<ore:ingotIronCompressed>, <ore:ingotRedstoneAlloy>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, null ,null],
    [<ore:ingotIronCompressed>, <ore:ingotRedstoneAlloy>, <ore:ingotIronCompressed>]
]); 