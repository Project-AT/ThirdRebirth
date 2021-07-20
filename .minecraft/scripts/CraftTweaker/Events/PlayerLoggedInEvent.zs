#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;

import crafttweaker.event.PlayerLoggedInEvent;

import scripts.CraftTweaker.Utils.common;


events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    val player as IPlayer = event.player;
    var data as IData = player.data.PlayerPersisted;

    if(isNull(data.loggedIn)) {
        player.update({PlayerPersisted:  {loggedIn : 1}});
    } else {
        player.update({PlayerPersisted:  {loggedIn : data.loggedIn.asInt() + 1}});
    }

    if(data.loggedIn == 1) {
        common.runCommand("gamerule sendCommandFeedback false");
    } else if(data.loggedIn == 943) {
        player.give(<minecraft:skull:3>.withTag({SkullOwner: "tartaric_acid"}));
    }
});