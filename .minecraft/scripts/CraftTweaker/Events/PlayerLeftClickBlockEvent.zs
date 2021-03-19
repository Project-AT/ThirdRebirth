#priority 10

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLeftClickBlockEvent;

import scripts.CraftTweaker.Utils.common;

import mods.ctutils.utils.Math;


events.onPlayerLeftClickBlock(function(event as PlayerLeftClickBlockEvent){
    val block as IBlock = event.block;
    val player as IPlayer = event.player;
    val currentItem as IItemStack = player.currentItem;
    
    if(!event.world.remote){
        if(!isNull(currentItem) && (currentItem.toolClasses has "shovel") && !(player.creative)){
            if(!(player.creative) && block.definition.harvestTool == "pickaxe"){
                var newItem as IItemStack = currentItem.withDamage(currentItem.damage + 1);
                player.setItemToSlot(player.activeHand,newItem);

                if(Math.random() <= 0.18) player.give(<survivalist:rock>);
            }
        }
        if(isNull(currentItem) || !(currentItem.toolClasses has "axe")){
            for item in <ore:logWood>.items{
                if(item.asBlock() has block && !(player.creative)){
                    common.runTitle("请使用任意斧头进行伐木！","",true);
                    player.attackEntityFrom(<damageSource:IN_WALL>, 1.0f);
                }
            }
        }
        if(!isNull(currentItem) && (currentItem.toolClasses has "pickaxe") && !(player.creative)){
            if(currentItem.getHarvestLevel("pickaxe") >= 3 && block has <minecraft:end_portal_frame>){
                var newItem as IItemStack = currentItem.withDamage(currentItem.damage + 1);
                player.setItemToSlot(player.activeHand, newItem);
                if(Math.random() <= 0.10) player.give(<contenttweaker:end_portal_frame_debris>);
            }
        }
    }
});