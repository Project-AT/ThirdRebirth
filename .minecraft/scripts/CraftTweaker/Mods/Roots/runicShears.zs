#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityDefinition;

import mods.roots.RunicShears;

import scripts.grassUtils.StringHelper;

function runicshearsUtils(output as IItemStack, entity as IEntityDefinition, cooldown as int) {
    RunicShears.addEntityRecipe(StringHelper.getItemNameWithUnderline(output), output, entity, cooldown * 20);
}

runicshearsUtils(<wizardry:fairy_dust>, <entity:minecraft:creeper>, 30);
runicshearsUtils(<wizardry:blackened_spirit>, <entity:minecraft:enderman>, 30);
runicshearsUtils(<wizardry:unicorn_horn>, <entity:betteranimalsplus:goat>, 30);
runicshearsUtils(<wizardry:fairy_wings>, <entity:familiarfauna:familiarfauna.butterfly>, 30);