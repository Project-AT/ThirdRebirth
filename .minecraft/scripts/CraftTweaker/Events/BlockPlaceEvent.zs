#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;
import crafttweaker.world.IBlockPos;

import crafttweaker.util.Position3f;
import scripts.CraftTweaker.Utils.common;

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockPlaceEvent;


events.onBlockPlace(function(event as BlockPlaceEvent){
    var pos as IBlockPos = event.position;
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var chunkData as IData = world.getCustomChunkData(pos);

    var te as IData = world.getBlock(pos).data;

    if(!world.remote && !isNull(te)) {
        if(te has "subTileName" && !player.creative) {
            if(te.subTileName.asString() == "endoflame") {
                if(!(chunkData has "endoflame")) {
                    world.setCustomChunkData({endoflame : 1}, pos);
                } else if(chunkData.endoflame.asInt() > 3) {
                    common.runTitle(game.localize("autotech.title.endoflame.description"), "", true);
                    event.cancel();
                } else {
                    var upDate as IData = {endoflame : chunkData.endoflame.asInt() + 1};
                    world.updateCustomChunkData(upDate, pos);
                }
            }
        }
    }
});
