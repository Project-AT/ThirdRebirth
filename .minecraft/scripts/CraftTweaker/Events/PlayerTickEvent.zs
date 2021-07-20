#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.player.IPlayer;

import crafttweaker.event.PlayerTickEvent;

events.onPlayerTick(function(event as PlayerTickEvent) {
    var player as IPlayer = event.player;

    if(player.isPotionActive(<potion:atutils:drowsy>) && player.getDimension() == 7)
        player.clearActivePotions();
});