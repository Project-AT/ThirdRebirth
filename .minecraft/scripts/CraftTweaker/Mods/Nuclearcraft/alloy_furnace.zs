#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;

import mods.nuclearcraft.AlloyFurnace;

//mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(IIngredient itemInput1, IIngredient itemInput2);
//mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(IIngredient itemOutput);

var alloyOne as IItemStack[] = [
    <enderio:item_alloy_endergy_ingot:6>, <enderio:item_alloy_endergy_ingot:1>, <enderio:item_alloy_endergy_ingot:2>, <enderio:item_alloy_ingot:6>, 
    <enderio:item_alloy_ingot:7>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot:1>, <enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:3>, 
    <enderio:item_alloy_ingot:4>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot:5>, <nuclearcraft:alloy:10>,
    <enderio:item_material:15>, <enderio:item_material:14>, <thermalfoundation:storage_alloy>, <thermalfoundation:material:160>,
];

var alloyTwo as IItemStack[] = [
    <nuclearcraft:alloy:2>, <thermalfoundation:storage_alloy:1>, <nuclearcraft:alloy:13>, <nuclearcraft:alloy:6>, <nuclearcraft:alloy:4>, <nuclearcraft:alloy:1>, 
    <thermalfoundation:material:225>, <thermalfoundation:material:161>, <enderio:item_alloy_endergy_ingot:3>, <advancedrocketry:metal0:1>, 
    <advancedrocketry:productnugget:1>, <thermalfoundation:material:164>, <advancedrocketry:productingot:1>, <thermalfoundation:storage_alloy:4>, 
    <thermalfoundation:material:228>, <nuclearcraft:alloy:11>
];

var alloyThree as IItemStack[] = [
    <advancedrocketry:metal0>, <advancedrocketry:productingot>, <thermalfoundation:storage_alloy:2>, <thermalfoundation:material:226>, <thermalfoundation:material:162>,
    <enderio:item_alloy_ingot:9>, <nuclearcraft:alloy:3>, <advancedrocketry:productnugget>
];

var alloyFour as IItemStack[] = [
    <nuclearcraft:alloy:9>, <thermalfoundation:storage_alloy:3>, <thermalfoundation:material:227>, <thermalfoundation:material:163>, <nuclearcraft:alloy:8>, <nuclearcraft:alloy:7>
];


for items in alloyOne {
    AlloyFurnace.removeRecipeWithOutput(items * 1);
}
for items in alloyTwo {
    AlloyFurnace.removeRecipeWithOutput(items * 2);
}
for items in alloyThree {
    AlloyFurnace.removeRecipeWithOutput(items * 3);
}
for items in alloyFour {
    AlloyFurnace.removeRecipeWithOutput(items * 4);
}
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:12> * 8);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:15> * 16);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<nuclearcraft:alloy:16> * 16);

