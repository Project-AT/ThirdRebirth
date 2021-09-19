#priority 10
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;

import crafttweaker.event.EntityLivingHurtEvent;

import mods.ctutils.utils.Math;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var critical as double = 0.1;
    var attack as IEntity = event.damageSource.trueSource;
    var entity as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = entity.world;

    if(!world.remote && attack instanceof IEntityLivingBase) {
        var flag as bool = true;
        var entityBase as IEntityLivingBase = attack;
        var mainItem as IItemStack = entityBase.mainHandHeldItem;
        var offItem as IItemStack = entityBase.offHandHeldItem;

        if(entityBase.isPotionActive(<potion:minecraft:luck>)) {
            var luckLevel as int = entityBase.getActivePotionEffect(<potion:minecraft:luck>).amplifier + 1;
            critical += (0.05 * luckLevel);
        }

        if(!isNull(mainItem) && !isNull(mainItem.enchantments)) {
            for enchantment in mainItem.enchantments {
                if(enchantment.definition.id == 11) {
                    var enchantmentLevel as int = enchantment.level;
                    critical += (0.05 * enchantmentLevel);
                    flag = false;
                }
            }
        }

        if(flag && !isNull(offItem) && !isNull(offItem.enchantments)) {
            for enchantment in mainItem.enchantments {
                if(enchantment.definition.id == 11) {
                    var enchantmentLevel as int = enchantment.level;
                    critical += (0.05 * enchantmentLevel);
                }
            }
        }
    }

    if(!world.remote && Math.random() < critical) {
        event.amount *= 2;
    }
});