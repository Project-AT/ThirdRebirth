#priority 10
#modloaded atutils

import crafttweaker.player.IPlayer;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PortalSpawnEvent;
import crafttweaker.event.PlayerTickEvent;

import scripts.CraftTweaker.Utils.common;

events.onPortalSpawn(function(event as PortalSpawnEvent) {
    val x as int = event.x;
    val y as int = event.y;
    val z as int = event.z;

    common.runCommand("summon minecraft:tnt " ~ x ~ " " ~ y ~ " " ~ z);
    event.cancel();
});