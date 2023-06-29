#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;


artisanUtils.RecipeTweakWithTools("engineer", true, <integrateddynamics:squeezer>,
    inputPatternGet(["DBD", "D D", "ECE"], {
        "B" : <ore:blockIron>,
        "C" : <ore:ingotIron>,
        "D" : <immersiveengineering:material>,
        "E" : <embers:sealed_planks>
}), {<ore:artisansSpanner> : 7} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <integrateddynamics:mechanical_squeezer>,
    inputPatternGet(["EBE", "CDC", "EBE"], {
        "B" : <ore:blockSteel>,
        "C" : <integrateddynamics:energy_battery> | <immersiveengineering:metal_device0:1>,
        "D" : <integrateddynamics:squeezer>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansSpanner> : 14} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <integrateddynamics:mechanical_drying_basin>,
    inputPatternGet(["EBE", "CDC", "EBE"], {
        "B" : <ore:ingotSteel>,
        "C" : <integrateddynamics:energy_battery> | <immersiveengineering:metal_device0:1>,
        "D" : <integrateddynamics:drying_basin>,
        "E" : <embers:wrapped_sealed_planks>
}), {<ore:artisansSpanner> : 12} as int[IIngredient]);

recipes.remove(<integrateddynamics:energy_battery>.withTag({energy: 0}));

RecipeBuilder.get("engineer")
  .setShaped([
    [<embers:sealed_planks>, <embers:sealed_planks>, <embers:sealed_planks>],
    [<ore:blockRedstone>, <fluiddrawers:tank>, <ore:blockRedstone>],
    [<embers:sealed_planks>, <embers:sealed_planks>, <embers:sealed_planks>]])
  .setFluid(<liquid:menrilresin> * 4000)
  .addTool(<ore:artisansDriver>, 12)
  .addTool(<ore:artisansSpanner>, 10)
  .setMinimumTier(0)
  .setMaximumTier(1)
  .addOutput(<integrateddynamics:energy_battery>.withTag({energy: 0}))
  .create();
