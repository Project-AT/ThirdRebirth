#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

//钢工具和装备耐久
var tools as int[IItemStack] = {
    <thermalfoundation:tool.sword_steel> : 500,
    <thermalfoundation:tool.hoe_steel> : 500,
    <thermalfoundation:tool.axe_steel> : 500,
    <thermalfoundation:tool.pickaxe_steel> : 500,
    <thermalfoundation:tool.shovel_steel> : 500,
    <thermalfoundation:tool.shield_steel> : 825,
    <thermalfoundation:tool.shears_steel> : 450,
    <thermalfoundation:tool.sickle_steel> : 2000,
    <thermalfoundation:tool.excavator_steel>: 1000,
    <thermalfoundation:tool.hammer_steel> : 1000,
    <thermalfoundation:tool.bow_steel> : 900,
    <thermalfoundation:tool.fishing_rod_steel> : 510,
};

for tool, damage in tools {
    tool.maxDamage = damage;
}