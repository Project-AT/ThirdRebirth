#priority 5
#modloaded atutils
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.naturesaura.TreeRitual;

import scripts.grassUtils.StringHelper.getItemNameWithUnderline;

function TreeRitualTweak(output as IItemStack, saplingType as IIngredient, input as IIngredient[], time as int) {
    TreeRitual.removeRecipe(output);
    TreeRitual.addRecipe(getItemNameWithUnderline(output), saplingType, output, time, input);
}

static sapling as IIngredient = <minecraft:sapling>;

TreeRitual.removeRecipe(<naturesaura:effect_powder>.withTag({effect: "naturesaura:ore_spawn"}));

TreeRitualTweak(<naturesaura:ancient_sapling>, sapling, [<naturesaura:gold_leaf>, <roots:pereskia>, <wizardry:wisdom_sapling>, <naturesaura:token_joy>, <roots:wildwood_sapling>], 500);
TreeRitualTweak(<naturesaura:nature_altar>, sapling, [<ore:stone>, <ore:ingotSilver>, <naturesaura:token_joy>, <roots:terra_spores>, <roots:spell_dust>.withTag({spell_storage: {s: "roots:spell_growth_infusion"}}), <botania:petalblock:13>, <ore:stone>, <ore:ingotGold>], 600);