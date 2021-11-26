#priority 5
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.block.IBlock;
import crafttweaker.world.IWorld;
import crafttweaker.world.IFacing;
import crafttweaker.world.IBlockPos;

import mods.modularcontroller.IOType;
import mods.modularmachinery.RecipeBuilder;
import mods.modularcontroller.RecipeModifierOperation;
import mods.modularcontroller.MachineRecipeStartEvent;

import scripts.grassUtils.GrassUtils.i18n;

var recipes as int[][int] = {
    1 : [8 , 8, 4800],
    2 : [16, 7, 9600],
    3 : [24, 6, 14400],
    4 : [32, 5, 19200],
    5 : [40, 5, 24000]
};

for key, value in recipes {
    RecipeBuilder.newBuilder("fmph_mk" ~ key ~ "_recipe_" ~ value[0], "fmph_mk" ~ key, value[1] * 20)
        .addItemInput(<botania:fertilizer>.withAmount(value[0]))
        .addManaOutput(value[2])
    .build();
}

events.onMachineRecipeStart(function(event as MachineRecipeStartEvent) {
    var machineName as string = event.machineID;

    if(machineName has "fmph_mk") {
        var machineLevel as int = machineName.split(":")[1].substring(7) as int;
        var elementium as int = getElementiumBlockAmount(event, machineLevel) * 200;
        var elvenQuartz as int = getElvenQuartzBlockAmount(event, machineLevel) * 50;
        var sparkManaHatch as IBlock = getSparkManaHatch(machineLevel, event);

        if(elementium + elvenQuartz + recipes[machineLevel][2] > (1000000 - sparkManaHatch.data.mana.asInt())) {
            event.setFailed(i18n("autotech.machine.failed"));
        } else {
            event.addModifier("gugu-utils:mana", IOType.output(), elementium + elvenQuartz, RecipeModifierOperation.addition());
        }
    }
});

function getSparkManaHatch(level as int, event as MachineRecipeStartEvent) as IBlock {
    var newPos as IBlockPos = event.pos.getOffset(event.facing.opposite, 1).up(level);
    return event.world.getBlock(newPos);
}

function getElementiumBlockAmount(event as MachineRecipeStartEvent, level as int) as int {
    var amount as int = 0;
    var world as IWorld = event.world;

    if(isBlockElementium(world, event.getOffsetByFacing(0, 0, 1))) amount += 1;
    if(isBlockElementium(world, event.getOffsetByFacing(1, 0, 1))) amount += 1;
    if(isBlockElementium(world, event.getOffsetByFacing(-1, 0, 1))) amount += 1;

    for offset in 0 to level {
        var yOffset as int = offset + 1;

        if(isBlockElementium(world, event.getOffsetByFacing(0, yOffset, 0))) amount += 1;
        if(isBlockElementium(world, event.getOffsetByFacing(-1, yOffset, 1))) amount += 1;
        if(isBlockElementium(world, event.getOffsetByFacing(1, yOffset, 1))) amount += 1;
        if(isBlockElementium(world, event.getOffsetByFacing(0, yOffset, 2))) amount += 1;
    }

    return amount;
}

function getElvenQuartzBlockAmount(event as MachineRecipeStartEvent, level as int) as int {
    var amount as int = 0;
    var world as IWorld = event.world;

    for offset in 0 to level {
        if(isBlockElvenQuartz(world, event.getOffsetByFacing(1, offset, 0))) amount += 1;
        if(isBlockElvenQuartz(world, event.getOffsetByFacing(-1, offset, 0))) amount += 1;
        if(isBlockElvenQuartz(world, event.getOffsetByFacing(1, offset, 2))) amount += 1;
        if(isBlockElvenQuartz(world, event.getOffsetByFacing(-1, offset, 2))) amount += 1;
    }

    return amount;
}

function isBlockElvenQuartz(world as IWorld, pos as IBlockPos) as bool {
    var block as IBlock = world.getBlock(pos);
    return block.definition.id == "botania:quartztypeelf" && block.meta == 1 ? true : false;
}

function isBlockElementium(world as IWorld, pos as IBlockPos) as bool {
    var block as IBlock = world.getBlock(pos);
    return block.definition.id == "botania:storage" && block.meta == 2 ? true : false;
}