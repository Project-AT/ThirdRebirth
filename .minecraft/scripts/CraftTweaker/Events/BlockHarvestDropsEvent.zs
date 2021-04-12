#priority 10

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

import scripts.CraftTweaker.Utils.common;
import mods.ctutils.utils.Math;

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;

function getBlockID(block as IBlock) as string {
    return block.definition.id;
}

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var block as IBlock = event.block;
    val fortune as int = event.fortuneLevel;
    val random = Math.ceil(Math.random() * 10) as int;
    
    if(!event.isPlayer || event.silkTouch || event.drops.length == 0) return;

    if(!world.remote){
        if(common.getBlockID(block) == "minecraft:tallgrass" && !player.creative){
            if(player.isPotionActive(<potion:minecraft:luck>) && fortune != 0)
                event.drops += <contenttweaker:four_leaf_clover> % (10 * random * fortune);
            else if(fortune != 0)
                event.drops += <contenttweaker:four_leaf_clover> % (10 * fortune);
            else if(player.isPotionActive(<potion:minecraft:luck>))
                event.drops += <contenttweaker:four_leaf_clover> % (10 * random);
            else
                event.drops += <contenttweaker:four_leaf_clover> % 10;
        }
        if(common.getBlockID(block) == "contenttweaker:aqua_ore_gravel" && !player.creative){

            if(fortune == 0){
                event.drops = [<astralsorcery:itemcraftingcomponent> * random % 100];
            }else{
                event.drops = [<astralsorcery:itemcraftingcomponent> * (random * fortune) % 100];
            }
        }
        if (<ore:logWood>.matches(event.drops[0].stack)) {
            if (isNull(player.currentItem) || !(player.currentItem.toolClasses has "axe")) {
                event.drops = [];
            }
        }
    }
});