#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

//玄钢工具耐久
var tools as int[IItemStack] = {
    <enderio:item_dark_steel_axe> : 1000,
    <enderio:item_dark_steel_pickaxe> : 1000,
    <enderio:item_dark_steel_sword> : 1000,
    <enderio:item_dark_steel_shears> : 1000,
    <enderio:item_dark_steel_crook> : 1000,
};

for tool, damage in tools {
    tool.maxDamage = damage;
}