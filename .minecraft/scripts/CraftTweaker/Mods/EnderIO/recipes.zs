#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;
import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;

electronicAssembly.addRecipe("engineer", true, <enderio:item_material:69> * 2, [
    [<ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>],
    [null, <ore:ingotIron>],
    [<ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>]
], {<ore:artisansHammer> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material>, [
    [<enderio:item_material:69>, <enderio:item_material:69>, <enderio:item_material:69>],
    [<enderio:item_material:69>, <embers:mech_core>, <enderio:item_material:69>],
    [<enderio:item_material:69>, <enderio:item_material:69>, <enderio:item_material:69>]
], {<ore:artisansHammer> : 4, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:item_material:1>, [
    [<enderio:item_material:2>, <enderio:item_material:2>, <enderio:item_material:2>],
    [<enderio:item_material:2>, <embers:mech_core>, <enderio:item_material:2>],
    [<enderio:item_material:2>, <enderio:item_material:2>, <enderio:item_material:2>]
], {<ore:artisansDriver> : 10, <ore:artisansHammer> : 8} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:block_simple_alloy_smelter>, 
    inputPattern(["SBS", "GCG", "SQS"])
        .with("S", <ore:ingotSteel>)
        .with("B", <ore:plateSteel>)
        .with("G", <ore:gearSteel>)
        .with("C", <ore:itemSimpleMachineChassi>)
        .with("Q", <immersiveengineering:metal_device1:1>).get()
, {<ore:artisansHammer> : 20, <ore:artisansSpanner> : 10});

electronicAssembly.addRecipe("engineer", true, <enderio:item_material:2> * 4, 
    inputPattern("LXL", " T ", "LXL")
        .with("L", <ore:itemSimpleChassiParts>)
        .with("X", <ore:ingotDarkSteel>)
        .with("T", <ore:dyeMachine>).get()
, {<ore:artisansHammer> : 10});

electronicAssembly.addRecipe("engineer", true, <enderio:item_basic_capacitor>, [
    [null, <ore:nuggetSmithingIron>, <ore:pyrolyticCarbon>],   
    [<ore:nuggetSmithingIron>, <mekanism:polyethene:2>, <ore:nuggetSmithingIron>],
    [<ore:pyrolyticCarbon>, <ore:nuggetSmithingIron>]
], {<ore:artisansDriver> : 3, <ore:artisansSolderer> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:block_vat>, [
    [<ore:ingotSmithingIron>, <ore:servo>, <ore:ingotSmithingIron>],
    [<enderio:block_tank>, <ore:itemMachineChassi>, <enderio:block_tank>],
    [<ore:ingotSmithingIron>, <modularmachinery:blockcasing:2>, <ore:ingotSmithingIron>]
], {<ore:artisansDriver> : 30, <ore:artisansSpanner> : 35} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:block_alloy_smelter>, [
    [<ore:ingotDarkSteel>, <enderio:block_simple_alloy_smelter>, <ore:ingotDarkSteel>],
    [null, <ore:itemMachineChassi>],
    [<ore:gearDark>, null, <ore:gearDark>]
], {<ore:artisansDriver> : 21, <ore:artisansSpanner> : 31} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <enderio:block_alloy_smelter>, [
    [<ore:ingotDarkSteel>, <ore:plateSteel>, <ore:ingotDarkSteel>],
    [<ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>],
    [<ore:gearSteel>, <immersiveengineering:metal_device1:1>, <ore:gearSteel>]
], {<ore:artisansDriver> : 45, <ore:artisansSpanner> : 40} as int[IIngredient]);