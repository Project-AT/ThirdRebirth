#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.jei.JEI;

for i in 22 to 28{
    JEI.removeAndHide(<thermalfoundation:material>.definition.makeStack(i));
}