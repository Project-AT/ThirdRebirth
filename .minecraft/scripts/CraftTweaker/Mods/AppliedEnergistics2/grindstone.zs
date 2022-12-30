#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;

import mods.appliedenergistics2.Grinder;

//Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);
//output 输出
//input 输入
//turns 曲柄旋转次数
//secondary1Output 副产物1(可选)
//secondary1Chance 副产物1概率(可选)
//secondary2Output 副产物2(可选)
//secondary2Chance 副产物2(可选)

//Grinder.removeRecipe(IItemStack input);
//input 输入

Grinder.removeRecipe(<ore:ingotAluminium>);
Grinder.addRecipe(<thermalfoundation:material:68>, <ore:ingotAluminum>, 4);