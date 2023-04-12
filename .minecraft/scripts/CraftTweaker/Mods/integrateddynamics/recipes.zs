#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

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
