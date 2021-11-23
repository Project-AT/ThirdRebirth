#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.botania.PureDaisy;

function pureDaisyTweak(input as IIngredient, output as IItemStack) as void {
    PureDaisy.removeRecipe(output);
    PureDaisy.addRecipe(input, output);
}

pureDaisyTweak(<naturesaura:infused_stone>, <botania:livingrock>);
pureDaisyTweak(<naturesaura:ancient_bark>, <botania:livingwood>);

PureDaisy.addRecipe(<naturesaura:ancient_log>, <botania:livingwood>);