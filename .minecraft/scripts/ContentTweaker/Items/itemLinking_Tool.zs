#priority 20
#modloaded atutils
#loader contenttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.data.IData;
import crafttweaker.world.IFacing;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.ActionResult;

import crafttweaker.util.Position3f;
import mods.ctutils.utils.Math;

import mods.zenutils.DelayManager;

var linking_tool as Item = VanillaFactory.createItem("linking_tool");
linking_tool.maxStackSize = 1;
linking_tool.onItemUse = function(player, world, pos, hand, facing, blockHit){
    val block as IBlock = world.getBlock(pos);
    val item as IItemStack = player.getHeldItem(hand);

    if(!world.remote){
        // print(getBlockID(block));
        if(getBlockID(block) == "contenttweaker:twilight_anchor_point"){
            if(world.getDimension() != 7){
                player.sendChat(game.localize("autotech.content.one"));
                return ActionResult.fail();
            }
            var tagData_Twilight as IData = {PlayerPersisted : {DimTwilight : {x : pos.getX(), y : pos.getY() + 2, z : pos.getZ()}}};
            if(checkStructureLink(world, pos, 7)){
                if(player.isSneaking){//潜行右键
                    tagData_Twilight = tagData_Twilight + player.data;
                    player.update(tagData_Twilight);
                    player.sendChat(game.localize("autotech.content.two"));

                    return ActionResult.success();
                }else{
                    if(checkGoldPowder(world, pos, false)){//仪式正确，摆放正确
                        if(!(player.data.PlayerPersisted has "DimTwilight") || !(player.data.PlayerPersisted has "DimOverWorld")){
                            player.sendChat(game.localize("autotech.content.three"));
                            return ActionResult.fail();
                        }
                        var owX as int = player.data.PlayerPersisted.DimOverWorld.x.asInt();
                        var owY as int = player.data.PlayerPersisted.DimOverWorld.y.asInt();
                        var owZ as int = player.data.PlayerPersisted.DimOverWorld.z.asInt();
                        var owPos as IBlockPos = Position3f.create(owX, owY, owZ).asBlockPos();

                        checkGoldPowder(world, pos, true);

                        for entityItem in world.getEntityItems(){
                            var eiPos as IBlockPos = entityItem.position;
                            if(world.getCustomChunkData(eiPos) has "True"){
                                    entityItem.dimension = 0;
                                entityItem.setPosition(owPos);
                            }
                        }
                        return ActionResult.success();
                    }else{
                        player.sendChat(game.localize("autotech.content.four"));
                        return ActionResult.fail();
                    }
                }
            }else{
                player.sendChat(game.localize("autotech.content.five"));
                return ActionResult.fail();
            }
        }else if(getBlockID(block) == "contenttweaker:overworld_anchor_point"){
            if(world.getDimension() != 0){
                player.sendChat(game.localize("autotech.content.six"));
                return ActionResult.fail();
            }
            var tagData_OwerWorld as IData = {PlayerPersisted : {DimOverWorld : {x : pos.getX(), y : pos.getY() + 2, z : pos.getZ()}}};
            if(checkStructureLink(world, pos, 0)){
                if(player.isSneaking){//潜行右键
                    tagData_OwerWorld = tagData_OwerWorld + player.data;
                    player.update(tagData_OwerWorld);
                    player.sendChat(game.localize("autotech.content.seven"));
                    return ActionResult.success();
                }else{
                    if(checkGoldPowder(world, pos, false)){//仪式正确，摆放正确
                        if(!(player.data.PlayerPersisted has "DimTwilight") || !(player.data.PlayerPersisted has "DimOverWorld")){
                            player.sendChat("autotech.content.three");
                            return ActionResult.fail();
                        }
                        var twX as int = player.data.PlayerPersisted.DimTwilight.x.asInt();
                        var twY as int = player.data.PlayerPersisted.DimTwilight.y.asInt();
                        var twZ as int = player.data.PlayerPersisted.DimTwilight.z.asInt();
                        var twPos as IBlockPos = Position3f.create(twX, twY, twZ).asBlockPos();

                        checkGoldPowder(world, pos, true);

                        for entityItem in world.getEntityItems(){
                            var eiPos as IBlockPos = entityItem.position;
                            if(world.getCustomChunkData(eiPos) has "True"){
                                entityItem.dimension = 7;
                                entityItem.setPosition(twPos);
                            }
                        }
                        return ActionResult.success();
                    }else{
                        player.sendChat(game.localize("autotech.content.four"));
                        return ActionResult.fail();
                    }
                }
            }else{
                player.sendChat(game.localize("autotech.content.five"));
                return ActionResult.fail();
            }
        }
    }
    return ActionResult.success();
};
linking_tool.register();

function getBlockID (block as IBlock) as string {
    return block.definition.id;
}

function checkGoldPowder(world as IWorld, pos as IBlockPos, boolean as bool) as bool {
    var posNow as IBlockPos = pos.getOffset(IFacing.up(), 1);
    var posList as IBlockPos[] = [
        posNow.getOffset(IFacing.east(), 1),
        posNow.getOffset(IFacing.south(), 1),
        posNow.getOffset(IFacing.west(), 1),
        posNow.getOffset(IFacing.north(), 1)
    ];
    var posList2 as IBlockPos[] = [
        posList[0].getOffset(IFacing.north(), 1),
        posList[0].getOffset(IFacing.south(), 1),
        posList[2].getOffset(IFacing.north(), 1),
        posList[2].getOffset(IFacing.south(), 1)
    ];
    if(boolean){
        for i in posList {world.setBlockState(<blockstate:minecraft:air>, i);}
        for i in posList2 {world.setBlockState(<blockstate:minecraft:air>, i);}
    }else{
        for i in posList {if (getBlockID(world.getBlock(i)) != "naturesaura:gold_powder") return false;}
        for i in posList2 {if (getBlockID(world.getBlock(i)) != "naturesaura:gold_powder") return false;}
    }

    return true;
}

function checkStructureLink(world as IWorld, pos as IBlockPos, id as int) as bool {
    var x = pos.getX();
    var y = pos.getY();
    var z = pos.getZ();
    var posList as IBlockPos[] = [];
    var posList2 as IBlockPos[] = [];
    var posList3 as IBlockPos[] = [];
    var frame as string = "minecraft:mossy_cobblestone";
    var frame_ as string = "quark:biome_cobblestone";
    var column as string = "twilightforest:nagastone_pillar_mossy";
    var column_ as string = "roots:runestone";
    var column1 as string = "twilightforest:etched_nagastone_mossy";
    var column1_ as string = "roots:chiseled_runestone";

    world.setCustomChunkData({True : "True"}, pos);

    for i in 1 to 3{
        posList += Position3f.create(x + i, y, z).asBlockPos();
        posList += Position3f.create(x - i, y, z).asBlockPos();
        posList += Position3f.create(x, y, z - i).asBlockPos();
        posList += Position3f.create(x, y, z + i).asBlockPos();
        if(i == 1){
            posList += Position3f.create(x + i, y, z + i).asBlockPos();
            posList += Position3f.create(x + i, y, z - i).asBlockPos();
            posList += Position3f.create(x - i, y, z + i).asBlockPos();
            posList += Position3f.create(x - i, y, z - i).asBlockPos();
        }
    }
    for i in 1 to 3{
        if(i != 3){
            posList2 += Position3f.create(x + 2, y + i, z + 2).asBlockPos();
            posList2 += Position3f.create(x + 2, y + i, z - 2).asBlockPos();
            posList2 += Position3f.create(x - 2, y + i, z + 2).asBlockPos();
            posList2 += Position3f.create(x - 2, y + i, z - 2).asBlockPos();
        }else{
            posList3 += Position3f.create(x + 2, y + i, z + 2).asBlockPos();
            posList3 += Position3f.create(x + 2, y + i, z - 2).asBlockPos();
            posList3 += Position3f.create(x - 2, y + i, z + 2).asBlockPos();
            posList3 += Position3f.create(x - 2, y + i, z - 2).asBlockPos();
        }
    }
    if(id == 7){
        for i in posList{
            if(getBlockID(world.getBlock(i)) != frame || !(world.getCustomChunkData(i) has "True")){
                world.setCustomChunkData({}, pos);
                return false;
            }
        }
        for i in posList2{
            if(getBlockID(world.getBlock(i)) != column || !(world.getCustomChunkData(i) has "True")){
                world.setCustomChunkData({}, pos);
                return false;
            }
        }
        for i in posList3{
            if(getBlockID(world.getBlock(i)) != column1 || !(world.getCustomChunkData(i) has "True")){
                world.setCustomChunkData({}, pos);
                return false;
            }
        }
    }else if(id == 0){
        for i in posList{
            if(getBlockID(world.getBlock(i)) != frame_ || !(world.getCustomChunkData(i) has "True")){
                world.setCustomChunkData({}, pos);
                return false;
            }
        }
        for i in posList2{
            if(getBlockID(world.getBlock(i)) != column_ || !(world.getCustomChunkData(i) has "True")){
                world.setCustomChunkData({}, pos);
                return false;
            }
        }
        for i in posList3{
            if(getBlockID(world.getBlock(i)) != column1_ || !(world.getCustomChunkData(i) has "True")){
                world.setCustomChunkData({}, pos);
                return false;
            }
        }
    }
    return true;
}