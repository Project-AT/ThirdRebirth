#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.roots.Mortar;

import scripts.grassUtils.StringHelper;

static tweakedRecipesAmount as int = 0;
var nacrePearl as IIngredient = <wizardry:nacre_pearl>.withTag({purity: 600 as long}) | <wizardry:nacre_pearl>.withTag({purity: 599 as long}) | <wizardry:nacre_pearl>.withTag({purity: 601 as long});

function mortarUtils(output as IItemStack, input as IIngredient[]) {
    Mortar.addRecipe(StringHelper.getItemNameWithUnderline(output) + tweakedRecipesAmount,  output,  input);
    tweakedRecipesAmount += 1;
}

mortarUtils(<thermalfoundation:material:771>, [
    <quark:biome_cobblestone>
]);

mortarUtils(<roots:runic_dust> * 5, [
    <thermalfoundation:material:769>, <minecraft:stone>, <minecraft:dye:15>, <ore:dustWheat>, <roots:moonglow_leaf>
]);

Mortar.changeSpell("spell_chrysopoeia", [
    nacrePearl, <ore:gunpowder>, <wizardry:blackened_spirit>, <wizardry:fairy_dust>, <wizardry:devil_dust>
]);

for i in 0 to 16 {
    var doubleflower as IItemStack = <botania:doubleflower1>.definition.makeStack(i);

    if (i > 7) doubleflower = <botania:doubleflower2>.definition.makeStack(i - 8);
    
    mortarUtils(<botania:petal>.definition.makeStack(i) * 6, [doubleflower]);
    mortarUtils(<botania:petal>.definition.makeStack(i) * 3, [<botania:flower>.definition.makeStack(i)]);
}