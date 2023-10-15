#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeModifierBuilder;

import scripts.grassUtils.StringHelper;

function ElectronicLaserAssembly(itemOutput as IItemStack, itemInputs as IIngredient[], perEnergy as int, time as int){
    var machineName = "electronic_assembly_machine_mk1";    
    var name = StringHelper.getItemNameWithUnderline(itemOutput);
    RecipeBuilder.newBuilder(machineName ~ name, machineName, time)
    .addEnergyPerTickInput(perEnergy)
    .addItemInputs(itemInputs)
    .addItemOutput(itemOutput)
    .build();
}

ElectronicLaserAssembly(<ore:circuitBasic>.firstItem, [<contenttweaker:si_transistor> * 2, <ore:waferSilicon>, <enderio:item_basic_capacitor:1> * 2, <extendedcrafting:material:7> * 4], 1500, 300);

var assembly as IItemStack[IIngredient[]] = {
    [<contenttweaker:ge_transistor> * 2, <contenttweaker:ge_wafer>, <enderio:item_basic_capacitor>, <mekanism:polyethene:2>] : <contenttweaker:germanium_integrated_circuit_board>,
    [<ore:itemMachineChassi>, <ore:ingotReflectiveAlloy> * 6, <embers:focal_lens>, <ore:opticFiber> * 4, <ore:ingotSignalum> * 2, <ore:lensGlass> * 3, <ore:ingotPlatinum>] : <refraction:electric_laser>,
    [<ore:lensGlass> * 6, <ore:ingotReflectiveAlloy> * 6, <ore:opticFiber> * 4, <refraction:splitter>] : <refraction:electron_exciter>,
    [<ore:itemSimpleMachineChassi>, <refraction:reflective_alloy> * 6, <embers:focal_lens>, <refraction:lens> * 3, <ore:gemRedstone> * 2, <ore:blockGlowstone>] : <refraction:laser>,
    [<ore:dyeWhite> * 256, <botania:lens:14>.withTag({color: 0}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter>,
    [<ore:dyeRed> * 256, <botania:lens:14>.withTag({color: 14}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:1>,
    [<ore:dyeGreen> * 256, <botania:lens:14>.withTag({color: 13}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:2>,
    [<ore:dyeBlue> * 256, <botania:lens:14>.withTag({color: 11}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:3>,
    [<ore:dyeCyan> * 256, <botania:lens:14>.withTag({color: 9}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:4>,
    [<ore:dyeYellow> * 256, <botania:lens:14>.withTag({color: 4}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:5>,
    [<ore:dyeMagenta> * 256, <botania:lens:14>.withTag({color: 2}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:6>,
    [<ore:dyePink> * 256, <botania:lens:14>.withTag({color: 6}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:7>,
    [<ore:dyeOrange> * 256, <botania:lens:14>.withTag({color: 1}), <botania:elfglass> * 4, <ore:lensGlass> * 6] : <refraction:filter:8>,
    [<ore:itemSilicon>] : <ore:waferSilicon>.firstItem,
    [<ore:circuitBasic>, <appliedenergistics2:material:18> * 4] : <appliedenergistics2:material:22> * 4,
    [<ore:circuitBasic>, <appliedenergistics2:material:17> * 4] : <appliedenergistics2:material:24> * 4,
    [<ore:circuitBasic>, <appliedenergistics2:material:16> * 4] : <appliedenergistics2:material:23> * 4,
};

for inputs, outout in assembly{
    ElectronicLaserAssembly(outout, inputs, 1000, 50);
}

var normalAssembly as IItemStack[IIngredient[]] = {
    [<ore:lensGlass> * 6] : <refraction:prism>,
    [<ore:lensGlass> * 6, <ore:ingotReflectiveAlloy> * 5, <ore:ingotIron> * 3] : <refraction:reflection_chamber>,
    [<ore:lensGlass> * 3, <ore:ingotReflectiveAlloy> * 3] : <refraction:splitter>,
    [<ore:lensGlass> * 6, <ore:dustRedstone> * 3, <ore:gemDiamond> * 2] : <refraction:sensor>,
    [<appliedenergistics2:part:140> * 4, <ore:lensGlass> * 4, <ore:ingotReflectiveAlloy> * 4, <ore:gemRedstone> * 2] : <refraction:optic_fiber> * 4,
    [<ore:ingotReflectiveAlloy> * 3, <ore:gemDiamond> * 4] : <refraction:disco_ball>,
    [<ore:opticFiber> * 4, <ore:ingotIron>, <ore:enderpearl>] : <refraction:translocator>,
    [<ore:laserTranslocator> * 6, <minecraft:piston> * 2, <minecraft:chorus_flower>] : <refraction:axyz>,
    [<thermalfoundation:glass_alloy:6>, <mekanism:polyethene:2>] : <contenttweaker:thin_film_transistor>,
};

for inputs, outout in normalAssembly{
    ElectronicLaserAssembly(outout, inputs, 250, 20);
}