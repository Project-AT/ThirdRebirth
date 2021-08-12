#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;

import crafttweaker.event.PlayerLeftClickBlockEvent;

import scripts.CraftTweaker.Utils.common;

import mods.ctutils.utils.Math;

events.onPlayerLeftClickBlock(function(event as PlayerLeftClickBlockEvent){
    val block as IBlock = event.block;
    val player as IPlayer = event.player;
    val currentItem as IItemStack = player.currentItem;
    
    if(!event.world.remote) {
        if(!isNull(currentItem) && (currentItem.toolClasses has "shovel") && !(player.creative)) {
            if(!(player.creative) && block.definition.harvestTool == "pickaxe") {
                currentItem.mutable().withDamage(currentItem.damage + 1);

                if(Math.random() <= 0.18) 
                    player.give(<survivalist:rock>);
            }
        }

        if(isNull(currentItem) || !(currentItem.toolClasses has "axe")) {
            for logwood in <ore:logWood>.items {
                if(logwood.asBlock() has block && !(player.creative)) {
                    common.runTitle(game.localize("autotech.title.notree.description"), "", true);
                    player.attackEntityFrom(<damageSource:IN_WALL>, 1.0f);
                }
            }
        }

        if(!isNull(currentItem) && (currentItem.toolClasses has "pickaxe") && !(player.creative)) {
            if(currentItem.getHarvestLevel("pickaxe") >= 3 && block has <minecraft:end_portal_frame>) {
                currentItem.mutable().withDamage(currentItem.damage + 1);

                if(Math.random() <= 0.10) 
                    player.give(<contenttweaker:end_portal_frame_debris>);
            }
        }
    }
});