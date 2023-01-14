#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

//封魔之布耐久
var tools as int[IItemStack] = {
    <botania:spellcloth:3> : 64,
};

for tool, damage in tools {
    tool.maxDamage = damage;
}