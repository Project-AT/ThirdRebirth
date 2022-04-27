#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;

import crafttweaker.event.PlayerLoggedInEvent;
import mods.ctintegration.gamestages.GameStageAddedEvent;
import mods.ctintegration.gamestages.GameStageRemovedEvent;


events.onGameStageAdded(function(event as GameStageAddedEvent) {
    var player as IPlayer = event.player;

    var data as IData = IData.createEmptyMutableDataMap();
    data.memberSet(event.gameStage, true);

    player.update({PlayerPersisted : {hadStages : data}});
});

events.onGameStageRemoved(function(event as GameStageRemovedEvent) {
    var player as IPlayer = event.player;

    var data as IData = IData.createEmptyMutableDataMap();
    data.memberSet(event.gameStage, false);

    player.update({PlayerPersisted : {hadStages : data}});
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;
    var data as IData = player.data.PlayerPersisted;

    if(!isNull(data) && !isNull(data.hadStages)) {
        var map as IData[string] = data.hadStages.asMap();

        for stage, isHad in map {
            if(isHad.asBool() && !player.hasGameStage(stage)) {
                player.addGameStage(stage);
            }
        }
    }
});
