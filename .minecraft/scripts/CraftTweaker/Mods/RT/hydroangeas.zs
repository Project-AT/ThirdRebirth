#priority 5
#modloaded atutils

import crafttweaker.liquid.ILiquidStack;

import mods.randomtweaker.botania.Hydroangeas;


var manaRecipe as ILiquidStack[int] = {
    2800 : <liquid:liquid_sunshine>,
    4000 : <liquid:nutrient_distillation>,
    5500 : <liquid:ender_distillation>
};

Hydroangeas.setFactor(<liquid:mana_fluid>);
Hydroangeas.setBlockBelowFactor(<roots:elemental_soil_water>, 1.15);

for key, value in manaRecipe {
    Hydroangeas.addManaRecipe(value, (key / 40), 1.15);
}