#priority 10
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;

import scripts.CraftTweaker.Utils.common;


events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    val player as IPlayer = event.player;
    var iData = {PlayerPersisted:{loggedIn : 0}} as IData;
    iData = iData + player.data;

    if(iData.PlayerPersisted.loggedIn == 0){
        common.runCommand("gamerule sendCommandFeedback false");
    }else if(iData.PlayerPersisted.loggedIn == 943){
        common.runCommand("give "+ player.name +" skull 1 3 {SkullOwner:\"tartaric_acid\"}");
    }

    val upDate = {PlayerPersisted:{loggedIn : iData.PlayerPersisted.loggedIn.asInt() + 1}} as IData;
    player.update(upDate);
});