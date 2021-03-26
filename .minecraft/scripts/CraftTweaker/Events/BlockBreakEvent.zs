#priority 10

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

import mods.ctutils.utils.Math;
import crafttweaker.util.Position3f;
import scripts.CraftTweaker.Utils.common;

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockBreakEvent;

events.onBlockBreak(function(event as BlockBreakEvent){
    var pos = Position3f.create(event.x, event.y, event.z).asBlockPos();
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var worldData as IData = world.getCustomChunkData(pos);
    var block = world.getBlock(pos);

     if(!world.remote){
        if(!isNull(block.data) && block.data has "subTileName" && !player.creative){
            if(block.data.subTileName.asString() == "endoflame"){
                var upDate as IData = {endoflame : worldData.endoflame.asInt() - 1};
                world.updateCustomChunkData(upDate, pos);
            }
        }
        if(common.getBlockID(block) has "contenttweaker:ender_portal"){
            common.breakPortals(pos, world);
        }
    }
});