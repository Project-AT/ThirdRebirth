#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;

import scripts.CraftTweaker.Utils.common;

import crafttweaker.event.PlayerInteractEntityEvent;

events.onPlayerInteractEntity(function(event as PlayerInteractEntityEvent){
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var target as IEntity = event.target;
    var hand as string = event.hand;

    var villagers as string[] = ["matteroverdrive:mad_scientist", "minecraft:villager"];

    if (villagers has target.definition.id  && !player.hasGameStage("villager")) {
        if (world.remote && hand == "MAIN_HAND") {
            common.runTitle(game.localize("thirdrebirth.title.villager.interact"), "", false, player);
        }
        
        event.cancel();
    }

});