#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;
import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;
import scripts.grassUtils.RecipeUtils;

recipes.addShapeless(<ore:itemConfusingDust>.firstItem, [
    <wizardry:devil_dust>, 
    <quark:black_ash>, 
    <ore:dustObsidian>, 
    <contenttweaker:mystery_dust>,
    <ore:foodCurrypowder>, 
    <ore:dustBedrock>
]);

var dusts as IItemStack[] = [
    <enderio:item_material:24>,
    <enderio:item_material:25>,
];

for i in dusts {
    furnace.remove(<*>, i);
}

RecipeUtils.recipeTweak(true, <enderio:item_material:9>, [
    [null, <ore:stickWood>],
    [<ore:stickWood>, null, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

RecipeUtils.recipeTweak(true, <enderio:item_material:9>, [
    [<ore:stickWood>, null, <ore:stickWood>],
    [null],
    [<ore:stickWood>, null, <ore:stickWood>]
]);

RecipeUtils.recipeTweak(true, <enderio:item_material:10>, [
    [<ore:stickWood>, <ore:cobblestone>, <ore:stickWood>],
    [<ore:cobblestone>, null, <ore:cobblestone>],
    [<ore:stickWood>, <ore:cobblestone>, <ore:stickWood>]
]);

RecipeUtils.recipeTweak(true, <enderio:item_material:10>, [
    [null, <ore:cobblestone>, null],
    [<ore:cobblestone>, <ore:gearWood>, <ore:cobblestone>],
    [null, <ore:cobblestone>, null]
]);

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
        .with("S", <ore:ingotInvar>)
        .with("B", <ore:plateInvar>)
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
    [<ore:ingotSmithingIron>, <minecraft:furnace>, <ore:ingotSmithingIron>]
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

electronicAssembly.addRecipe("engineer", true, <enderio:item_basic_capacitor:1>, [
    [null, <ore:ingotVibrantAlloy>],
    [<enderio:item_basic_capacitor>, <ore:dustLapis>, <enderio:item_basic_capacitor>],
    [null, <ore:ingotVibrantAlloy>]
], {<ore:artisansSolderer> : 8, <ore:artisansDriver> : 12} as int[IIngredient]);

electronicAssembly.addRecipe("engineer", true, <enderio:item_basic_capacitor:2>, [
    [null, <ore:ingot_dark_soularium>],
    [<enderio:item_basic_capacitor:1>, <ore:dustLumium>, <enderio:item_basic_capacitor:1>],
    [null, <ore:ingot_dark_soularium>]
], {<ore:artisansSolderer> : 12, <ore:artisansDriver> : 16} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <enderio:item_material:52>, [
    [<ore:dustSoularium>, <ore:dustFluix>, <enderio:item_material:49>],
    [<ore:dustFluix>, <enderio:item_material:50>, <ore:dustFluix>],
    [<enderio:item_material:49>, <ore:dustFluix>, <ore:dustSoularium>]
]);

furnace.remove(<enderio:item_material:4>);
recipes.remove(<enderio:item_material:22>);
recipes.remove(<enderio:item_material:15>);