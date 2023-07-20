#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

import mods.artisanworktables.builder.RecipeBuilder;
import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;

//压力室气阀合成
RecipeUtils.recipeTweak(false, <pneumaticcraft:pressure_chamber_valve>, [[<pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_chamber_wall>]]);

//压力室玻璃合成
RecipeUtils.recipeTweak(false, <pneumaticcraft:pressure_chamber_glass>, [[<ore:blockGlass>, <pneumaticcraft:pressure_chamber_wall>]]);

recipes.remove(<pneumaticcraft:advanced_pcb>);
recipes.remove(<pneumaticcraft:speed_upgrade>);

artisanUtils.RecipeTweakWithTools("designer", true, <pneumaticcraft:pcb_blueprint>,
    inputPattern([" D ", "LLL", "TTT"])
        .with("D", <immersiveengineering:material:27>)
        .with("L", <ore:plasticGreen>)
        .with("T", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 10, <ore:artisansTSquare> :10});

electronicAssembly.addRecipe("engineer", true, <pneumaticcraft:transistor>,
    inputPattern([" Q", " W", "E E"])
        .with("Q", <ore:plasticBlack>)
        .with("W", <ore:gemRedstone>)
        .with("E", <ore:nuggetPureIron>).get()
, {<ore:artisansSolderer> : 22});

electronicAssembly.addRecipe("engineer", true, <pneumaticcraft:capacitor>,
    inputPattern([" Q", " W", "E E"])
        .with("Q", <ore:plasticBlue>)
        .with("W", <ore:dustBedrock>)
        .with("E", <ore:nuggetPureIron>).get()
, {<ore:artisansSolderer> : 22});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:air_compressor>,
    inputPattern(["EEE", "EQW", "ESE"])
        .with("Q", <minecraft:furnace>)
        .with("W", <pneumaticcraft:pressure_tube>)
        .with("S", <teslacorelib:machine_case>)
        .with("E", <ore:ingotIronCompressed>).get()
, {<ore:artisansSpanner> : 29, <ore:artisansDriver> : 26});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:pressure_tube> * 8,
    inputPattern(["QAQ"])
        .with("Q", <ore:ingotIronCompressed>)
        .with("A", <ore:plateIronCompressed>).get()
, {<ore:artisansSpanner> : 22});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:pressure_chamber_wall> * 16,
    inputPattern(["QAQ", "A A", "QAQ"])
        .with("Q", <ore:ingotIronCompressed>)
        .with("A", <ore:blockIronCompressed>).get()
, {<ore:artisansSpanner> : 29, <ore:artisansDriver> : 26});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:vortex_tube>,
    inputPattern(["QAQ", "WAW", "QQQ"])
        .with("Q", <ore:ingotIronCompressed>)
        .with("W", <ore:ingotCopper>)
        .with("A", <pneumaticcraft:pressure_tube>).get()
, {<ore:artisansSpanner> : 22, <ore:artisansDriver> : 28});

artisanUtils.RecipeTweakWithTools("engineer", true, <pneumaticcraft:thermopneumatic_processing_plant>,
    inputPattern(["QAQ", "UFO", "QAQ"])
        .with("Q", <ore:ingotIronCompressed>)
        .with("U", <pneumaticcraft:pressure_tube>)
        .with("F", <teslacorelib:machine_case>)
        .with("O", <ore:blockCopper>)
        .with("A", <ore:fusedQuartz>).get()
, {<ore:artisansSpanner> : 22, <ore:artisansDriver> : 28});

recipes.remove(<pneumaticcraft:plastic_mixer>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateIronCompressed>, <ore:fusedQuartz>, <ore:plateIronCompressed>],
    [<ore:fusedQuartz>, <teslacorelib:machine_case>, <ore:fusedQuartz>],
    [<ore:plateIronCompressed>, <thermalfoundation:material:160>, <ore:plateIronCompressed>]])
  .addTool(<ore:artisansDriver>, 25)
  .addTool(<ore:artisansSpanner>, 22)
  .addOutput(<pneumaticcraft:plastic_mixer>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:gemLapis>, <ore:listAllsugar>, <ore:gemLapis>],
    [<ore:listAllsugar>, <contenttweaker:research_point_lv1>, <ore:listAllsugar>],
    [<ore:gemLapis>, <ore:listAllsugar>, <ore:gemLapis>]])
  .setFluid(<liquid:lubricant> * 250)
  .addTool(<ore:artisansDriver>, 10)
  .addTool(<ore:artisansSolderer>, 10)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<pneumaticcraft:speed_upgrade>)
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
