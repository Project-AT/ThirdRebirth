#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.player.IPlayer;

import crafttweaker.event.PortalSpawnEvent;

import scripts.CraftTweaker.Utils.common;

events.onPortalSpawn(function(event as PortalSpawnEvent) {
    common.runCommand("summon minecraft:tnt " ~ event.x ~ " " ~ event.y ~ " " ~ event.z);
    event.cancel();
});