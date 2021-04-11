#priority 10

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockPattern;
import crafttweaker.damage.IDamageSource;

import crafttweaker.util.Position3f;
import scripts.CraftTweaker.Utils.common;
import mods.zenutils.DelayManager;
import mods.atutils.TwilightTeleporter;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    val world as IWorld = event.world;
    val player as IPlayer = event.player;
    val block as IBlock = event.block;
    val currentItem as IItemStack = player.currentItem;
    val x = event.x;
    val y = event.y;
    val z = event.z;
    var pos = Position3f.create(x, y, z).asBlockPos();

    
    if(!event.world.remote){
        if(!isNull(currentItem) && currentItem.hasTag && common.getItemID(currentItem) has "minecraft:flint_and_steel" && !player.creative){
            if(!isNull(currentItem.tag.display.Name)){
                var newItem as IItemStack = currentItem.withDamage(currentItem.damage + 4);
                player.setItemToSlot(player.activeHand, newItem);
            }
        }
        if(!isNull(currentItem) && common.getItemID(currentItem) has "minecraft:ender_eye" && !player.creative){
            if(common.getBlockID(block) has "minecraft:end_portal_frame"){
                world.setBlockState(<blockstate:minecraft:air>, pos);
                player.sendChat(game.localize("autotech.title.endportal.description"));
                common.runCommand("summon minecraft:lightning_bolt "+ event.x + " " + event.y + " " + event.z);
                common.runCommand("clear " + player.name + " minecraft:ender_eye 0 1");
            }
        }
        if(!isNull(currentItem) && common.getItemID(currentItem) has "minecraft:ender_eye"){
            if(common.getBlockID(block) has "contenttweaker:ender_portal"){
                if(!(common.checkStructure(pos, world))){
                    common.runTitle(game.localize("autotech.title.endportal2.description"), "", true);
                }
            }
        }
        if(common.getBlockID(block) has "minecraft:bed" && player.isPotionActive(<potion:atutils:drowsy>) && !world.isDayTime()){
            DelayManager.addDelayWork(function(){
                TwilightTeleporter.teleportPlayer(player);
            }, 3 * 20);
        }
    }
});