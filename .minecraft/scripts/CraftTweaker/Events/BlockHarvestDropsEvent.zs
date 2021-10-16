#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

import scripts.CraftTweaker.Utils.common;
import mods.ctutils.utils.Math;

import crafttweaker.event.BlockHarvestDropsEvent;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var block as IBlock = event.block;
    val fortune as int = event.fortuneLevel;
    val random = Math.ceil(Math.random() * 10) as int;
    
    if(!event.isPlayer || event.silkTouch || event.drops.length == 0) return;

    if(!world.remote) {
        if(common.getBlockID(block) == "minecraft:tallgrass" && !player.creative) {
            if(player.isPotionActive(<potion:minecraft:luck>) && fortune != 0) {
                event.drops += <contenttweaker:four_leaf_clover> % (10 * random * fortune);
            } else if(fortune != 0) {
                event.drops += <contenttweaker:four_leaf_clover> % (10 * fortune);
            } else if(player.isPotionActive(<potion:minecraft:luck>)) {
                event.drops += <contenttweaker:four_leaf_clover> % (10 * random);
            } else {
                event.drops += <contenttweaker:four_leaf_clover> % 10;
            } 
        }

        if(<ore:logWood>.matches(event.drops[0].stack)) {
            if(isNull(player.currentItem) || !(player.currentItem.toolClasses has "axe")) {
                event.drops = [];
            }
        }
    }
});

/* 
    挖掘书架{@oreDict <ore:bookshelf>}有30%概率掉落词典之纸{@item <contenttweaker:dictionary_paper>}
    不允许精准采集附魔{@ench <enchantment:minecraft:silk_touch>}的工具
*/
events.onBlockHarvestDrops(
    function(event as BlockHarvestDropsEvent) {

        val world as IWorld = event.world;
        val block as IBlock = event.block;
        val itemBlock as IItemStack = block.getItem(world, event.position, event.blockState);

        if (world.remote || event.silkTouch) return;

        if (<ore:bookshelf>.matches(itemBlock)) {
            event.addItem(<contenttweaker:dictionary_paper> % 30);
        }

    }
);
