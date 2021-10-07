#priority 26
#modloaded atutils
#loader contenttweaker

import crafttweaker.player.IPlayer;

import mods.contenttweaker.VanillaFactory;

var flcn = VanillaFactory.createBaubleItem("four_leaf_clover_necklace");
flcn.rarity = "rare";
flcn.onWornTick = function(bauble, wearer) {
    var player as IPlayer = wearer;
    player.addPotionEffect(<potion:minecraft:luck>.makePotionEffect(20, 1, true, false));
};
flcn.baubleType = "AMULET";
flcn.register();

var calm = VanillaFactory.createBaubleItem("calm");
calm.baubleType = "RING";
calm.onWornTick = function(bauble, wearer) {
    var player as IPlayer = wearer;
    player.update({calmSlot : player.isBaubleEquipped(<item:contenttweaker:calm>)});

};
calm.onUnequipped = function(bauble, wearer) {
    var player as IPlayer = wearer;

    player.update({furySlot : -1 as int});

    if(bauble.hasTag && !isNull(bauble.tag.critical)) {
        bauble.mutable().removeTag("critical");
    }
};
calm.register();

var fury = VanillaFactory.createBaubleItem("fury");
fury.baubleType = "RING";
fury.onWornTick = function(bauble, wearer) {
    var player as IPlayer = wearer;
    player.update({furySlot : player.isBaubleEquipped(<item:contenttweaker:fury>)});
};
fury.onUnequipped = function(bauble, wearer) {
    var player as IPlayer = wearer;

    player.update({furySlot : -1 as int});

    if(bauble.hasTag && !isNull(bauble.tag.critical)) {
        bauble.mutable().removeTag("critical");
    }
};
fury.register();