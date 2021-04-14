#priority 10
#modloaded atutils

import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;

import crafttweaker.util.Position3f;
import scripts.CraftTweaker.Utils.common;

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockPlaceEvent;

events.onBlockPlace(function(event as BlockPlaceEvent){
    var pos = Position3f.create(event.x, event.y, event.z).asBlockPos();
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var worldData as IData = world.getCustomChunkData(pos);

    var te = world.getBlock(pos);

    if(!world.remote && !isNull(te.data)){

        if(te.data has "subTileName" && !player.creative){
            if(te.data.subTileName.asString() == "endoflame"){
                if(!(worldData has "endoflame")){
                    world.setCustomChunkData({endoflame : 0}, pos);
                    var upDate as IData = {endoflame : 1};
                    world.updateCustomChunkData(upDate, pos);
                }else if(worldData.endoflame.asInt() > 3){
                    common.runTitle(game.localize("autotech.title.endoflame.description"),"",true);
                    event.cancel();
                }else{
                    var upDate as IData = {endoflame : worldData.endoflame.asInt() + 1};
                    world.updateCustomChunkData(upDate, pos);
                }
            }
        }
    }
});
