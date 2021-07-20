#priority 26
#modloaded atutils
#loader contenttweaker

import crafttweaker.player.IPlayer;

import mods.contenttweaker.VanillaFactory;


var flcn = VanillaFactory.createBaubleItem("four_leaf_clover_necklace");
flcn.rarity = "rare";
flcn.onWornTick = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.addPotionEffect(<potion:minecraft:luck>.makePotionEffect(20, 1, true, false));
    }
};
flcn.baubleType = "AMULET";
flcn.register();
