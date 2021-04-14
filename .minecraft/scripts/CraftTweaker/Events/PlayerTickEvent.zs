#priority 10
#modloaded atutils

import crafttweaker.player.IPlayer;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;

events.onPlayerTick(function(event as PlayerTickEvent){
    var player as IPlayer = event.player;

    if(player.isPotionActive(<potion:atutils:drowsy>) && player.getDimension() == 7)
        player.clearActivePotions();

});