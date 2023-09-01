#priority 5
#modloaded trutils

import mods.jei.JEI;
import moretweaker.jei.MoreJei;
import crafttweaker.item.IItemStack;

var toRemoveDescriptors as IItemStack[] = [
    <lightningcraft:ingot>,
    <lightningcraft:material:11>,
    <extrautils2:ingredients:11>,
    
];

for toRemove in toRemoveDescriptors {
    MoreJei.removeDescription(toRemove);
}
//碎石块
MoreJei.addDescription(<survivalist:rock>, [game.localize("thirdrebirth.description.survivalist.rock")]);
//词典之纸
MoreJei.addDescription(<contenttweaker:dictionary_paper>, [game.localize("thirdrebirth.description.contenttweaker.dictionary_paper")]);
//虫瘿苹果
MoreJei.addDescription(<mysticalworld:gall_apple>, [game.localize("thirdrebirth.description.mysticalworld.gall_apple")]);
//邪恶之石
MoreJei.addDescription(<trutils:evil_stone>, [game.localize("thirdrebirth.description.trutils.evil_stone")]);
//燃料等价物
MoreJei.addDescription(<trutils:equivalent_fuel>, [game.localize("thirdrebirth.description.trutils:equivalent_fuel")]);
//水果采集组件
MoreJei.addDescription(<teslathingies:fruit_picker_addon>, [game.localize("thirdrebirth.description.trutils:fruit_picker_addon")]);