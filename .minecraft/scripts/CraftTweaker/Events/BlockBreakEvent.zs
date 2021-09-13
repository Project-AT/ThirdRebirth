  
#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;

import scripts.CraftTweaker.Utils.common;

import crafttweaker.event.BlockBreakEvent;

events.onBlockBreak(function(event as BlockBreakEvent){
    var pos as IBlockPos = event.position;
    var world as IWorld = event.world;
    var block as IBlock = event.block;

     if(!world.remote) {
        if(common.getBlockID(block) has "contenttweaker:ender_portal") {
            common.breakPortals(pos, world);
        }
    }

});