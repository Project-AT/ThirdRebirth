#priority 30
#modloaded atutils
#loader contenttweaker

import crafttweaker.entity.IEntityEquipmentSlot;
import mods.contenttweaker.enchantments.EnchantmentBuilder;

var critical as EnchantmentBuilder = EnchantmentBuilder.create("critical");
critical.maxLevel = 4;
critical.setTypeWeapon();
critical.applicableSlots = [IEntityEquipmentSlot.mainHand(), IEntityEquipmentSlot.offhand()];
critical.register();