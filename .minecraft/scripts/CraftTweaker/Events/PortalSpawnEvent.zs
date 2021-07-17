#priority 10
#modloaded atutils

import crafttweaker.player.IPlayer;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PortalSpawnEvent;
import crafttweaker.event.PlayerTickEvent;

import scripts.CraftTweaker.Utils.common;

events.onPortalSpawn(function(event as PortalSpawnEvent) {
    common.runCommand("summon minecraft:tnt " ~ event.x ~ " " ~ event.y ~ " " ~ event.z);
    event.cancel();
});