#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

import mods.artisanworktables.builder.RecipeBuilder;

RecipeUtils.recipeTweak(false, <pneumaticcraft:pressure_chamber_valve>, [[<pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_chamber_wall>]]);

RecipeUtils.recipeTweak(true, <pneumaticcraft:pressure_chamber_glass>, 
    RecipeUtils.createSurround(<ore:ingotIronCompressed>, <pneumaticcraft:pressure_chamber_glass>)
);

artisanUtils.RecipeTweakWithTools("designer", true, <pneumaticcraft:pcb_blueprint>,
    inputPattern([" D ", "LLL", "TTT"])
        .with("D", <immersiveengineering:material:27>)
        .with("L", <ore:plasticGreen>)
        .with("T", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 10, <ore:artisansTSquare> :10});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:transistor>,
    inputPattern([" Q", " W", "E E"])
        .with("Q", <ore:plasticBlack>)
        .with("W", <ore:gemRedstone>)
        .with("E", <ore:nuggetPureIron>).get()
, {<ore:artisansSolderer> : 22});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:capacitor>,
    inputPattern([" Q", " W", "E E"])
        .with("Q", <ore:plasticBlue>)
        .with("W", <ore:dustBedrock>)
        .with("E", <ore:nuggetPureIron>).get()
, {<ore:artisansSolderer> : 22});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:air_compressor>,
    inputPattern(["EEE", "EQW", "ESE"])
        .with("Q", <modularmachinery:blockcasing:2>)
        .with("W", <pneumaticcraft:pressure_tube>)
        .with("S", <teslacorelib:machine_case>)
        .with("E", <ore:ingotSteel>).get()
, {<ore:artisansSpanner> : 29, <ore:artisansDriver> : 26});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:pressure_tube> * 8,
    inputPattern(["QAQ"])
        .with("Q", <ore:ingotSteel>)
        .with("A", <ore:plateSteel>).get()
, {<ore:artisansSpanner> : 22});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:pressure_chamber_wall> * 16,
    inputPattern(["QAQ", "A A", "QAQ"])
        .with("Q", <ore:ingotSteel>)
        .with("A", <ore:blockIronCompressed>).get()
, {<ore:artisansSpanner> : 29, <ore:artisansDriver> : 26});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:vortex_tube>,
    inputPattern(["QAQ", "WAW", "QQQ"])
        .with("Q", <ore:ingotSteel>)
        .with("W", <ore:ingotCopper>)
        .with("A", <pneumaticcraft:pressure_tube>).get()
, {<ore:artisansSpanner> : 22, <ore:artisansDriver> : 28});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:thermopneumatic_processing_plant>,
    inputPattern(["QAQ", "UFO", "QAQ"])
        .with("Q", <ore:ingotSteel>)
        .with("U", <pneumaticcraft:pressure_tube>)
        .with("F", <modularmachinery:blockcasing>)
        .with("O", <ore:blockCopper>)
        .with("A", <ore:fusedQuartz>).get()
, {<ore:artisansSpanner> : 22, <ore:artisansDriver> : 28});

recipes.remove(<pneumaticcraft:plastic_mixer>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:fusedQuartz>, <ore:plateSteel>],
    [<ore:fusedQuartz>, <teslacorelib:machine_case>, <ore:fusedQuartz>],
    [<ore:plateSteel>, <thermalfoundation:material:160>, <ore:plateSteel>]])
  .addOutput(<pneumaticcraft:plastic_mixer>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:assembly_controller>, [
    [<advancedrocketry:misc>, <pneumaticcraft:printed_circuit_board>],
    [null, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:printed_circuit_board>],
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:compressed_iron_block>, <pneumaticcraft:ingot_iron_compressed>]
], {<ore:artisansSpanner> : 100, <ore:artisansDriver> : 100});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:assembly_drill>, [
    [<ore:gemDiamond>, <pneumaticcraft:pneumatic_cylinder>, <pneumaticcraft:pneumatic_cylinder>],
    [<thermalfoundation:material:656>, null, <pneumaticcraft:pneumatic_cylinder>],
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:ingot_iron_compressed>]
], {<ore:artisansSpanner> : 50, <ore:artisansDriver> : 50});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:assembly_laser>, [
    [<refraction:laser>, <pneumaticcraft:pneumatic_cylinder>, <pneumaticcraft:pneumatic_cylinder>],
    [null, null, <pneumaticcraft:pneumatic_cylinder>],
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:ingot_iron_compressed>]
], {<ore:artisansSpanner> : 50, <ore:artisansDriver> : 50});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:assembly_platform>, [
    [<pneumaticcraft:pneumatic_cylinder>, null, <pneumaticcraft:pneumatic_cylinder>],
    [<ore:plasticOrange>, <ore:plasticOrange>, <ore:plasticOrange>],
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:ingot_iron_compressed>]
], {<ore:artisansSpanner> : 20, <ore:artisansDriver> : 20});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:assembly_io_unit>, [
    [<ore:hopper>, <pneumaticcraft:pneumatic_cylinder>, <pneumaticcraft:pneumatic_cylinder>],
    [null, null, <pneumaticcraft:pneumatic_cylinder>],
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:ingot_iron_compressed>]
], {<ore:artisansSpanner> : 33, <ore:artisansDriver> : 33});
