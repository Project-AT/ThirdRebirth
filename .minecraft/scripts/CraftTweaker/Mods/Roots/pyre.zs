#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.roots.Pyre;
import mods.botania.Apothecary;

import scripts.grassUtils.StringHelper;

function pyreUtils(output as IItemStack, input as IIngredient[], isRemove as bool) {
    if (isRemove) Pyre.removeRecipe(output.withAmount(1));

    Pyre.addRecipe(StringHelper.getItemNameWithUnderline(output), output, input);
}

recipes.remove(<naturesaura:gold_fiber>);
pyreUtils(<naturesaura:gold_fiber>, [
    <ore:dustGold>, <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}), 
    <minecraft:glowstone_dust>, <survivalist:plant_fibres>, <survivalist:plant_fibres>
], false);

Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));
pyreUtils(<botania:specialflower>.withTag({type: "puredaisy"}), [
    <contenttweaker:mana_petals>, <botania:petal>, <botania:petal>, <botania:petal>, <botania:petal>
], false);

pyreUtils(<roots:dewgonia> * 3, [
    <ore:tallgrass>, <botania:petal:11>, <botania:petal:9>, <roots:terra_moss>, <contenttweaker:mana_petals>
], true);

pyreUtils(<roots:moonglow_leaf> * 3, [
    <ore:treeLeaves>, <ore:blockGlass>, <roots:bark_birch>, <contenttweaker:mana_petals>, <botania:petal>
], true);

pyreUtils(<roots:stalicripe> * 3, [
    <roots:runestone>, <roots:wildroot>, <minecraft:flint>, <botania:manaresource:6>, <botania:mushroom:4>
], true);

pyreUtils(<roots:pereskia> * 3, [
    <botania:petal:6>, <contenttweaker:mana_petals>, <minecraft:reeds>, <minecraft:beetroot>, <roots:wildroot>
], true);

pyreUtils(<roots:infernal_bulb> * 3, [
    <botania:mushroom:14>, <wizardry:devil_dust>, <ore:gunpowder>, <ore:dustGold>, <roots:wildroot>
], true);

pyreUtils(<roots:baffle_cap_mushroom> * 3, [
    <minecraft:rotten_flesh>, <roots:terra_moss>, <minecraft:deadbush>, <botania:mushroom:10>, <tombstone:crafting_ingredient:3>
], true);

pyreUtils(<roots:cloud_berry> * 3, [
    <ore:treeLeaves>, <contenttweaker:mana_petals>, <botania:petal:5>, <roots:terra_moss>, <wizardry:sky_dust>
], true);