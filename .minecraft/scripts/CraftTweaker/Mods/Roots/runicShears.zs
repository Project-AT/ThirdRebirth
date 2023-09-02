#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityDefinition;
import mods.roots.predicates.StatePredicate;

import mods.roots.RunicShears;

import scripts.grassUtils.StringHelper;

function runicshearsUtils(output as IItemStack, entity as IEntityDefinition, cooldown as int) {
    RunicShears.addEntityRecipe(StringHelper.getItemNameWithUnderline(output), output, entity, cooldown * 20);
}

RunicShears.addRecipe(
    "dustBedrock", <enderio:item_material:20> * 4,
    StatePredicate.create(<blockstate:minecraft:bedrock>), <blockstate:minecraft:bedrock>, <minecraft:bedrock>
);

RunicShears.removeEntityRecipe(<entity:minecraft:silverfish>);

runicshearsUtils(<wizardry:fairy_dust>, <entity:minecraft:creeper>, 30);
runicshearsUtils(<wizardry:blackened_spirit>, <entity:minecraft:enderman>, 30);
runicshearsUtils(<wizardry:unicorn_horn>, <entity:betteranimalsplus:goat>, 30);
runicshearsUtils(<wizardry:fairy_wings>, <entity:familiarfauna:familiarfauna.butterfly>, 30);
runicshearsUtils(<minecraft:ghast_tear>, <entity:minecraft:ghast>, 180);