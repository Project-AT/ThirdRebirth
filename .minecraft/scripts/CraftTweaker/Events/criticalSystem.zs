#priority 10
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;

import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.EntityLivingHurtEvent;

import mods.ctutils.utils.Math;
import mods.ctintegration.baubles.IBaubleInventory;

events.onPlayerTick(function(event as PlayerTickEvent) {
    var player as IPlayer = event.player;
    var cd as IData = player.data.cd;

    if(player.world.remote) return;

    if(isNull(cd)) {
        player.update({cd : 0 as int});
    }

    if(!isNull(cd) && cd.asInt() > 0) {
        player.update({cd : cd.asInt() - 1});
    }
});

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var entity as IEntityLivingBase = event.entityLivingBase;
    var attack as IEntity = event.damageSource.trueSource;
    var world as IWorld = entity.world; // 别改成 attack.world, 会报 NPE
    var critical as double = 0.1;

    if(world.remote) return;

    if(attack instanceof IEntityLivingBase) {
        var flag as bool = true; //判定是否进行了主手逻辑部分
        var entityBase as IEntityLivingBase = attack;
        var mainItem as IItemStack = entityBase.mainHandHeldItem;
        var offItem as IItemStack = entityBase.offHandHeldItem;

        if(entityBase.isPotionActive(<potion:minecraft:luck>)) {
            var luckLevel as int = entityBase.getActivePotionEffect(<potion:minecraft:luck>).amplifier + 1;
            critical += (0.05 * luckLevel);
        }

        if(add(mainItem) != -1.0) {
            critical += add(mainItem);
            flag = false;
        }

        if(flag && add(offItem) != -1.0) {
            critical += add(offItem);
        }

        if(entityBase instanceof IPlayer) {
            var player as IPlayer = entityBase;
            var calmRing as IItemStack = getRing(player, "calmSlot");
            var furyRing as IItemStack = getRing(player, "furySlot");

            if(!isNull(calmRing) && calmRing.hasTag && !isNull(calmRing.tag.critical)) {
                critical += calmRing.tag.critical.asDouble();
            }

            if(!isNull(furyRing) && furyRing.hasTag && !isNull(furyRing.tag.critical)) {
                critical += furyRing.tag.critical.asDouble();
                furyRing.mutable().removeTag("critical");
            }
        }

        print(critical);
    }

/** 
* 冷静指环增加暴击率部分
*/
    if(attack instanceof IPlayer) {
        var player as IPlayer = attack;
        var cd as IData = player.data.cd;
        var calmRing as IItemStack = getRing(player, "calmSlot");

        if(!isNull(calmRing)) {
            if(!isNull(cd) && cd.asInt() == 0) {
                if(!isNull(getRing(player, "furySlot"))) {
                    addCritical(calmRing, 0.01);
                } else {
                    addCritical(calmRing, 0.02);
                }
                player.update({cd : 20}); //冷却 CD (单位 Tick)
            }
        }
    }

/** 
* 愤怒指环增加暴击率和冷静指环重置暴击率部分
*/
    if(entity instanceof IPlayer) {
        var player as IPlayer = entity;
        var calmRing as IItemStack = getRing(player, "calmSlot");
        var furyRing as IItemStack = getRing(player, "furySlot");

        if(!isNull(furyRing)) { //愤怒指环添加暴击率部分
            if(!isNull(calmRing)) {
                furyRing.mutable().updateTag({critical : 0.1 as double});
            } else {
                furyRing.mutable().updateTag({critical : 0.2 as double});
            }
        }

        if(!isNull(calmRing) && calmRing.hasTag && !isNull(calmRing.tag.critical)) {
            calmRing.mutable().removeTag("critical"); //重置冷静指环暴击率
        }

    }

/** 
* 判定是否暴击
*/
    if(critical > Math.random()) {
        event.amount *= 2;
    }
});

/**
* stack 一个物品
* amount 每次叠加多少暴击率
*/

function addCritical(stack as IItemStack, amount as double) as void {
    if(!stack.hasTag || isNull(stack.tag.critical)) {
        stack.mutable().updateTag({critical : amount as double});
    } else {
        stack.mutable().updateTag({critical : stack.tag.critical.asDouble() + amount as double});
    }
}

/**
* player 拿饰品的玩家
* key 存有饰品槽数据的 Key
* return 返回找到的饰品, 否则返回 null
*/

function getRing(player as IPlayer, key as string) as IItemStack {
    var slot as IData = player.data.memberGet(key);
    var inventory as IBaubleInventory = player.baublesInventory;

    return !isNull(slot) && slot.asInt() != -1 ? inventory.getStackInSlot(slot.asInt()) : null;
}

/**
* stack 一个物品
* return 如果物品有会心一击附魔, 则返回 0.05 * 附魔等级, 否则返回 -1.0
*/

function add(stack as IItemStack) as double {
    if(!isNull(stack) && !isNull(stack.enchantments)) {
        for enchantment in stack.enchantments {
            if(!isNull(enchantment) && enchantment.definition.id == 11) {
                var level as int = enchantment.level;
                return (0.05 * level);
            }
        }
    }
    return -1.0;
}
