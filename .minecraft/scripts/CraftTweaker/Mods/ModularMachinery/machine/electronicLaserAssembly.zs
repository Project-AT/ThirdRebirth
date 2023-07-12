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

var assembly as IItemStack[IIngredient[]] = {
    [<contenttweaker:ge_transistor>, <contenttweaker:ge_wafer>, <enderio:item_basic_capacitor>, <mekanism:polyethene>] : <contenttweaker:germanium_integrated_circuit_board>,
};

for inputs, outout in assembly{
    ElectronicLaserAssembly(outout, inputs, 1000, 20);
}