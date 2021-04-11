#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.atutils.Hydroangeas;

var manaRecipe as ILiquidStack[int] = {
    1700 : <liquid:astralsorcery.liquidstarlight>,
    2800 : <liquid:liquid_sunshine>,
    4000 : <liquid:nutrient_distillation>,
    5500 : <liquid:ender_distillation>
};

Hydroangeas.setFactor(<liquid:mana_fluid>);
Hydroangeas.setBlockBelowFactor(<roots:elemental_soil_water>, 1.15);

for key, value in manaRecipe {
    Hydroangeas.addManaRecipe(value, (key / 40), 1.15);
}