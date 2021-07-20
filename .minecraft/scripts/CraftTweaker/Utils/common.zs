#priority 20
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockPattern;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.world.IFacing;

import crafttweaker.util.Position3f;
import crafttweaker.command.ICommandManager;


function getItemID(item as IItemStack) as string {
    return item.definition.id;
}

function getBlockID(block as IBlock) as string {
    return block.definition.id;
}

function runCommand(command as string) {
    val s = server.commandManager;
    s.executeCommand(server,command);
}

function runTitle(title as string ,color as string , bold as bool){
    val s = server.commandManager;
    if(!bold){
        s.executeCommand(server,"title @a actionbar {\"text\":\""+title+"\",\"bold\":"+"false"+",\"color\":\""+color+"\"}");
    }else{
        s.executeCommand(server,"title @a actionbar {\"text\":\""+title+"\",\"bold\":"+"true"+",\"color\":\""+color+"\"}");
    }
}


function creatPortals(pos as IBlockPos, world as IWorld) {
    for i in 1 to 4 {
        for j in 1 to 4 {
            world.setBlockState(<blockstate:minecraft:end_portal>, pos.getOffset(IFacing.east(), i).getOffset(IFacing.north(), j));
        }
    }
}

function checkStructure(pos as IBlockPos, world as IWorld) as bool {
    val checkBlock = "contenttweaker:ender_portal" as string;

    if (!(getBlockID(world.getBlock(pos)) has checkBlock)) {
        return false;
    }

    val posList1 as IBlockPos[] = [
        pos.getOffset(IFacing.south(), 4),
        pos.getOffset(IFacing.west(), 4),
        pos.getOffset(IFacing.north(), 4),
        pos.getOffset(IFacing.east(), 4)
    ];
    var posBottomLeft as IBlockPos = pos;
    var result = false as bool;

    for i in 0 to 4 {
        var p as IBlockPos = posList1[i];
        if (getBlockID(world.getBlock(p)) has checkBlock) {
            if (i % 2 == 0) {
                p = p.getOffset(IFacing.west(), 1);
                while (getBlockID(world.getBlock(p)) has checkBlock) {
                    p = p.getOffset(IFacing.west(), 1);
                }
                p = p.getOffset(IFacing.south(), 4 * (i / 2));
            } else {
                p = p.getOffset(IFacing.south(), 1);
                while (getBlockID(world.getBlock(p)) has checkBlock) {
                    p = p.getOffset(IFacing.south(), 1);
                }
                p = p.getOffset(IFacing.west(), 4 * (i / 2));
            }
            posBottomLeft = p;
            result = true;
        }
    }

    if (!result) {
        return false;
    }

    var posCheck as IBlockPos = posBottomLeft;

    for i in 1 to 4 {
        if (!(getBlockID(world.getBlock(posCheck.getOffset(IFacing.east(), i))) has checkBlock)) {
            result = false;
        }
    }
    posCheck = posCheck.getOffset(IFacing.east(), 4);
    for i in 1 to 4 {
        if (!(getBlockID(world.getBlock(posCheck.getOffset(IFacing.north(), i))) has checkBlock)) {
            result = false;
        }
    }
    posCheck = posCheck.getOffset(IFacing.north(), 4);
    for i in 1 to 4 {
        if (!(getBlockID(world.getBlock(posCheck.getOffset(IFacing.west(), i))) has checkBlock)) {
            result = false;
        }
    }
    posCheck = posCheck.getOffset(IFacing.west(), 4);
    for i in 1 to 4 {
        if (!(getBlockID(world.getBlock(posCheck.getOffset(IFacing.south(), i))) has checkBlock)) {
            result = false;
        }
    }
    posCheck = posCheck.getOffset(IFacing.south(), 4);

    if (result) {
        creatPortals(posBottomLeft, world);
    }

    return result;
}

function breakPortals(pos as IBlockPos, world as IWorld) {

    var posCheckList as IBlockPos[] = [
        pos.getOffset(IFacing.east(), 1),
        pos.getOffset(IFacing.west(), 1),
        pos.getOffset(IFacing.north(), 1),
        pos.getOffset(IFacing.south(), 1)
    ];

    val blockID as string = "minecraft:end_portal";
    val frameID as string = "contenttweaker:ender_portal";
    var checkBlock as string = getBlockID(world.getBlock(pos));

    if (!isNull(checkBlock)) {
        if(checkBlock == frameID || checkBlock == blockID) {
            if(checkBlock == blockID) {
                world.setBlockState(<blockstate:minecraft:air>, pos);
            }
            for posCheck in posCheckList {
                if(getBlockID(world.getBlock(posCheck)) == blockID) {
                    breakPortals(posCheck, world);
                }
            }
        }
    }
}