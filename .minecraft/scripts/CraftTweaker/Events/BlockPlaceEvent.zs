#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;
import crafttweaker.world.IBlockPos;

import crafttweaker.util.Position3f;
import scripts.CraftTweaker.Utils.common;

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockPlaceEvent;

var dx as int[] = [0, 0, 1, -1];
var dz as int[] = [1, -1, 0, 0];

events.onBlockPlace(function(event as BlockPlaceEvent) {
    var x = event.x;
    var y = event.y;
    var z = event.z;
    var pos = Position3f.create(x, y, z).asBlockPos();
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var block as IBlock = event.block;

    if(!world.remote && y > 10) {
        if (common.getBlockID(block) == "botania:felpumpkin") {
            var pos1 = Position3f.create(x, y - 1, z);
            var pos2 = Position3f.create(x, y - 2, z);
            var block1 as IBlock = world.getBlock(pos1);
            var block2 as IBlock = world.getBlock(pos2);
            if (common.getBlockID(block1) == "biomesoplenty:flesh" &&
                common.getBlockID(block2) == "biomesoplenty:flesh") {
                world.setBlockState(<blockstate:minecraft:air>, pos);
                world.setBlockState(<blockstate:minecraft:air>, pos1);
                world.setBlockState(<blockstate:minecraft:air>, pos2);
                common.runCommand("summon minecraft:zombie " ~ x ~ " " ~ y ~ " " ~ z);
                event.cancel();
            }
            else if (common.getBlockID(block1) == "minecraft:bone_block" &&
                common.getBlockID(block2) == "minecraft:bone_block") {
                world.setBlockState(<blockstate:minecraft:air>, pos);
                world.setBlockState(<blockstate:minecraft:air>, pos1);
                world.setBlockState(<blockstate:minecraft:air>, pos2);
                common.runCommand("summon minecraft:skeleton " ~ x ~ " " ~ y ~ " " ~ z);
                event.cancel();
            }
            else if (common.getBlockID(block1) == "minecraft:tnt" &&
                common.getBlockID(block2) == "minecraft:tnt") {
                world.setBlockState(<blockstate:minecraft:air>, pos);
                world.setBlockState(<blockstate:minecraft:air>, pos1);
                world.setBlockState(<blockstate:minecraft:air>, pos2);
                common.runCommand("summon minecraft:creeper " ~ x ~ " " ~ y ~ " " ~ z);
                event.cancel();
            }
            else {
                for i in 0 .. 4 {
                    var pos3 = Position3f.create(x + dx[i], y, z + dz[i]);
                    var pos4 = Position3f.create(x + dx[i] + dx[i], y, z + dz[i] + dz[i]);
                    var blcok3 as IBlock = world.getBlock(pos3);
                    var blcok4 as IBlock = world.getBlock(pos4);
                    if (common.getBlockID(blcok3) == "minecraft:sea_lantern" /*&&
                        common.getBlockID(blcok4) == "minecraft:sea_lantern"*/) {
                        world.setBlockState(<blockstate:minecraft:air>, pos);
                        world.setBlockState(<blockstate:minecraft:air>, pos3);
                        world.setBlockState(<blockstate:minecraft:air>, pos4);
                        common.runCommand("summon minecraft:guardian " ~ x ~ " " ~ y ~ " " ~ z);
                        event.cancel();
                    }
                    else if (common.getBlockID(blcok3) == "minecraft:wool" &&
                        common.getBlockID(blcok4) == "minecraft:wool") {
                        world.setBlockState(<blockstate:minecraft:air>, pos);
                        world.setBlockState(<blockstate:minecraft:air>, pos3);
                        world.setBlockState(<blockstate:minecraft:air>, pos4);
                        common.runCommand("summon minecraft:spider " ~ x ~ " " ~ y ~ " " ~ z);
                        event.cancel();
                    }
                }
            }
        }
/*
        else if (common.getBlockID(block) == "biomesoplenty:fleshchunk") {
            for i in 0 .. 2 {
                var pos1 = Position3f.create(x, y + 1 + i, z);
                var pos2 = Position3f.create(x, y - 1 + i + i, z);
                var blcok1 as IBlock = world.getBlock(pos1);
                var blcok2 as IBlock = world.getBlock(pos2);
                if (common.getBlockID(blcok1) == "botania:felpumpkin" &&
                    common.getBlockID(blcok2) == "biomesoplenty:fleshchunk") {
                    world.setBlockState(<blockstate:minecraft:air>, pos);
                    world.setBlockState(<blockstate:minecraft:air>, pos1);
                    world.setBlockState(<blockstate:minecraft:air>, pos2);
                    common.runCommand("summon minecraft:zombie " ~ x ~ " " ~ y ~ " " ~ z);
                    event.cancel();
                }
            }
        }
        else if (common.getBlockID(block) == "minecraft:bone_block") {
            for i in 0 .. 2 {
                var pos1 = Position3f.create(x, y + 1 + i, z);
                var pos2 = Position3f.create(x, y - 1 + i + i, z);
                var blcok1 as IBlock = world.getBlock(pos1);
                var blcok2 as IBlock = world.getBlock(pos2);
                if (common.getBlockID(blcok1) == "botania:felpumpkin" &&
                    common.getBlockID(blcok2) == "minecraft:bone_block") {
                    world.setBlockState(<blockstate:minecraft:air>, pos);
                    world.setBlockState(<blockstate:minecraft:air>, pos1);
                    world.setBlockState(<blockstate:minecraft:air>, pos2);
                    common.runCommand("summon minecraft:skeleton " ~ x ~ " " ~ y ~ " " ~ z);
                    event.cancel();
                }
            }
        }
        else if (common.getBlockID(block) == "minecraft:tnt") {
            for i in 0 .. 2 {
                var pos1 = Position3f.create(x, y + 1 + i, z);
                var pos2 = Position3f.create(x, y - 1 + i + i, z);
                var blcok1 as IBlock = world.getBlock(pos1);
                var blcok2 as IBlock = world.getBlock(pos2);
                if (common.getBlockID(blcok1) == "botania:felpumpkin" &&
                    common.getBlockID(blcok2) == "minecraft:tnt") {
                    world.setBlockState(<blockstate:minecraft:air>, pos);
                    world.setBlockState(<blockstate:minecraft:air>, pos1);
                    world.setBlockState(<blockstate:minecraft:air>, pos2);
                    common.runCommand("summon minecraft:creeper " ~ x ~ " " ~ y ~ " " ~ z);
                    event.cancel();
                }
            }
        }
        else if (common.getBlockID(block) == "minecraft:sea_lantern") {
            for j in 0 .. 2 {
                for i in 0 .. 4 {
                    var pos1 = Position3f.create(x + dx[i], y, z + dz[i]);
                    var pos2 = Position3f.create(x + (3 * j - 1) * dx[i], y, z + (3 * j - 1) * dz[i]);
                    var blcok1 as IBlock = world.getBlock(pos1);
                    var blcok2 as IBlock = world.getBlock(pos2);
                    if (common.getBlockID(blcok2) == "botania:felpumpkin" &&
                        common.getBlockID(blcok1) == "minecraft:sea_lantern") {
                        world.setBlockState(<blockstate:minecraft:air>, pos);
                        world.setBlockState(<blockstate:minecraft:air>, pos1);
                        world.setBlockState(<blockstate:minecraft:air>, pos2);
                        common.runCommand("summon minecraft:guardian " ~ x ~ " " ~ y ~ " " ~ z);
                        event.cancel();
                    }
                }
            }
        }
        else if (common.getBlockID(block) == "minecraft:wool") {
            for j in 0 .. 2 {
                for i in 0 .. 4 {
                    var pos1 = Position3f.create(x + dx[i], y, z + dz[i]);
                    var pos2 = Position3f.create(x + (3 * j - 1) * dx[i], y, z + (3 * j - 1) * dz[i]);
                    var blcok1 as IBlock = world.getBlock(pos1);
                    var blcok2 as IBlock = world.getBlock(pos2);
                    if (common.getBlockID(blcok2) == "botania:felpumpkin" &&
                        common.getBlockID(blcok1) == "minecraft:wool") {
                        world.setBlockState(<blockstate:minecraft:air>, pos);
                        world.setBlockState(<blockstate:minecraft:air>, pos1);
                        world.setBlockState(<blockstate:minecraft:air>, pos2);
                        common.runCommand("summon minecraft:guardian " ~ x ~ " " ~ y ~ " " ~ z);
                        event.cancel();
                    }
                }
            }
        }
*/
    }
});