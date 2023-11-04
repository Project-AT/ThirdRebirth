#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;


RecipeUtils.recipeTweak(true, <deepmoblearning:polymer_clay> * 16, 
    inputPatternGet(["ABA", "BCB", "ABA"], {
        "A" : <enderio:item_material:75>,
        "B" : <ore:clayBall>,
        "C" : <rftools:dimensional_shard>,
}));
//曜黑板材机械外壳
RecipeUtils.recipeTweak(true, <deepmoblearning:machine_casing>, [
    [<ore:dustSignalum>, <deepmoblearning:soot_covered_plate>, <ore:dustSignalum>],
    [<deepmoblearning:soot_covered_plate>, <ore:itemSoulMachineChassi>, <deepmoblearning:soot_covered_plate>],
    [<ore:dustSignalum>, <deepmoblearning:soot_covered_plate>, <ore:dustSignalum>]
]);
//深度学习器
RecipeUtils.recipeTweak(true, <deepmoblearning:deep_learner>, [
    [<deepmoblearning:soot_covered_plate>, <matteroverdrive:holo_sign>, <deepmoblearning:soot_covered_plate>],
    [<advancedrocketry:dataunit>, <ore:circuitAdvanced>, <advancedrocketry:dataunit>],
    [<deepmoblearning:soot_covered_plate>, <ore:blockGlassHardened>, <deepmoblearning:soot_covered_plate>]
]);
//空白数据模型
RecipeUtils.recipeTweak(true, <deepmoblearning:data_model_blank>, [
    [<ore:alloyElite>, <ore:dyeSoulMachine>, <ore:alloyElite>],
    [<deepmoblearning:soot_covered_plate>, <ore:circuitAdvanced>, <deepmoblearning:soot_covered_plate>],
    [<ore:alloyElite>, <advancedrocketry:dataunit>, <ore:alloyElite>]
]);

var removeitem as IItemStack[] = [
    <deepmoblearning:data_model_zombie>,
    <deepmoblearning:soot_covered_plate>,
    <deepmoblearning:data_model_skeleton>,
    <deepmoblearning:data_model_creeper>,
    <deepmoblearning:data_model_spider>,
    <deepmoblearning:data_model_slime>,
    <deepmoblearning:data_model_witch>,
    <deepmoblearning:data_model_blaze>,
    <deepmoblearning:data_model_ghast>,
    <deepmoblearning:data_model_wither_skeleton>,
    <deepmoblearning:data_model_wither>,
    <deepmoblearning:data_model_enderman>,
    <deepmoblearning:data_model_shulker>,
    <deepmoblearning:data_model_guardian>,
    <deepmoblearning:data_model_thermal_elemental>,
    <deepmoblearning:data_model_mo_android>,
];

for item in removeitem {
    recipes.remove(item);
}
