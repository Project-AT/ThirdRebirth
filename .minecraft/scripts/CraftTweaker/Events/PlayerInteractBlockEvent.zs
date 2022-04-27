#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;

import scripts.grassUtils.EventUtils;
import scripts.CraftTweaker.Utils.common;
import mods.zenutils.DelayManager;
import mods.zenutils.NetworkHandler;

import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    val world as IWorld = event.world;
    val player as IPlayer = event.player;
    val block as IBlock = event.block;
    val currentItem as IItemStack = event.item;
    var pos as IBlockPos = event.position;
    val x as int = event.x;
    val y as int = event.y;
    val z as int = event.z;

    if(!event.world.remote) {
    
        if(!isNull(currentItem) && common.getItemID(currentItem) has "minecraft:ender_eye" && common.getBlockID(block) has "minecraft:end_portal_frame") {
            if (!player.creative) currentItem.mutable().shrink(1);
            
            if(world.dimension == 0) {
                world.setBlockState(<blockstate:minecraft:air>, pos);
                player.sendChat(game.localize("thirdrebirth.title.endportal.description"));
                common.runCommand("summon minecraft:lightning_bolt "+ x + " " + y + " " + z);
                DelayManager.addDelayWork(function() {
                    EventUtils.spawnItem(world, <contenttweaker:end_portal_frame_debris>.withAmount(8 + getRandomNumber(world)), pos.add(getRandomNumber(world), 0, getRandomNumber(world)));
                }, 20);
            } else {
                player.sendChat(game.localize("thirdrebirth.title.endportal.dimerror"));
            }
        }

        if(!isNull(currentItem) && common.getItemID(currentItem) has "contenttweaker:teleport_rune") {
            if (!player.creative) currentItem.mutable().shrink(1);

            if(common.getBlockID(block) has "contenttweaker:ender_portal") {
                if(!(common.checkStructure(pos, world))) {
                    common.runTitle(game.localize("thirdrebirth.title.endportal2.description"), "", true, player);
                } else {
                    NetworkHandler.sendToAllAround("trutils.end_portal.spawn", x, y, z, 8, 0, function(byteBuf) {});
                }
            }
        }
    }
});

function getRandomNumber(world as IWorld) as int {
    return world.getRandom().nextInt(4);
}