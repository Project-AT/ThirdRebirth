#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;

import mods.appliedenergistics2.Inscriber;


//布尔值为 真 时，将不会消耗底部和顶部物品。
//Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput);
//output 输出
//input 输入
//inscribe 压印
//topInbut 顶部输入（可选）
//bottomInput 底部输入（可选）

val Items as IItemStack[] = [
    <appliedenergistics2:material:20>,
    <appliedenergistics2:material:17>,
    <appliedenergistics2:material:16>,
    <appliedenergistics2:material:18>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:24>,
];

for I in Items {
    Inscriber.removeRecipe(I);
}

Inscriber.addRecipe(<appliedenergistics2:material:20>, <appliedenergistics2:material:5>, true, <appliedenergistics2:material:19>);
Inscriber.addRecipe(<pneumaticcraft:empty_pcb:100>, <contenttweaker:pcb_substrate>, true, <pneumaticcraft:pcb_blueprint>);

Inscriber.addRecipe(<appliedenergistics2:material:17>, <ore:ingotCrystallineAlloy>.firstItem, true, <appliedenergistics2:material:14>);
Inscriber.addRecipe(<appliedenergistics2:material:16>, <ore:crystalPureCertusQuartz>.firstItem, true, <appliedenergistics2:material:13>);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <ore:ingotRefinedGlowstone>.firstItem, true, <appliedenergistics2:material:15>);