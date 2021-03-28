#priority 10

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

import scripts.CraftTweaker.Utils.common;

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;

function getBlockID(block as IBlock) as string {
    return block.definition.id;
}

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var block as IBlock = event.block;
    if(!event.isPlayer || event.silkTouch || event.drops.length == 0) return;

    if(!world.remote){
        if(common.getBlockID(block) == "minecraft:tallgrass" && !player.creative){
            if(player.isPotionActive(<potion:minecraft:luck>)){
                event.drops += <contenttweaker:four_leaf_clover> % 50;
            }else{
                event.drops += <contenttweaker:four_leaf_clover> % 10;
            }
        }
        if (<ore:logWood>.matches(event.drops[0].stack)) {
            if (isNull(player.currentItem) || !(player.currentItem.toolClasses has "axe")) {
                event.drops = [];
            }
        }
    }
});