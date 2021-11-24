#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.WeightedItemStack;

import mods.ctutils.utils.Math;
import scripts.CraftTweaker.Utils.common;

import crafttweaker.event.BlockHarvestDropsEvent;

function removeDrops(items as IItemStack[], drops as [WeightedItemStack]) as [WeightedItemStack] {
    var newList as [WeightedItemStack] = [];

    for drop in drops {
        if(items has drop.stack) continue;
        newList += drop;
    }

    return newList;
}

var removeSeeds as IItemStack[] = [
    <extrautils2:redorchid>,
    <extrautils2:enderlilly>,
    <teslathingies:tesla_plant_seeds>
];

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
                event.drops += <contenttweaker:four_leaf_clover> % (2 * random * fortune);
            } else if(fortune != 0) {
                event.drops += <contenttweaker:four_leaf_clover> % (5 * fortune);
            } else if(player.isPotionActive(<potion:minecraft:luck>)) {
                event.drops += <contenttweaker:four_leaf_clover> % (5 * random);
            } else {
                event.drops += <contenttweaker:four_leaf_clover> % 5;
            } 
        }

        if(<ore:logWood>.matches(event.drops[0].stack)) {
            if(isNull(player.currentItem) || !(player.currentItem.toolClasses has "axe")) {
                if (<ore:knife>.matches(player.currentItem)) return;
                event.drops = [];
            }
        }
    }
});


events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    val world as IWorld = event.world;
    val block as IBlock = event.block;
    val player as IPlayer = event.player;
    val itemBlock as IItemStack = block.getItem(world, event.position, event.blockState);

    if (world.remote || event.silkTouch) return;
    if (<ore:bookshelf>.matches(itemBlock)) {
        if (<ore:knife>.matches(player.currentItem) && world.random.nextInt(10) <= 3) {
            event.drops = [<contenttweaker:dictionary_paper>];
        } else if (world.random.nextInt(10) == 0){
            event.drops = [<contenttweaker:dictionary_paper>];
        }
    }

    if(<ore:tallgrass>.matches(itemBlock)) {
        event.drops = removeDrops(removeSeeds, event.drops);
    }

    if (<ore:treeLeaves>.matches(itemBlock)) {
        event.drops += <minecraft:stick> % 30;
    }
});
