#priority 30
#modloaded atutils
#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

import scripts.grassUtils.CotUtils;

var vld as Item = VanillaFactory.createItem("villager_language_dictionary");
vld.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote) {
        player.addGameStage("villager");
        stack.shrink(1);
    }
    return "Pass";
};