#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;

import scripts.CraftTweaker.Utils.common;

import crafttweaker.event.BlockBreakEvent;


events.onBlockBreak(function(event as BlockBreakEvent){
    var pos as IBlockPos = event.position;
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var chunkData as IData = world.getCustomChunkData(pos);
    var block as IBlock = world.getBlock(pos);

     if(!world.remote) {
        if(!isNull(block.data) && block.data has "subTileName" && !player.creative) {
            if(block.data.subTileName.asString() == "endoflame") {
                var upDate as IData = {endoflame : chunkData.endoflame.asInt() - 1};
                world.updateCustomChunkData(upDate, pos);
            }
        }
        
        if(common.getBlockID(block) has "contenttweaker:ender_portal") {
            common.breakPortals(pos, world);
        }
    }
});