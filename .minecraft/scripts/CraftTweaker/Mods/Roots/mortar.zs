#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.roots.Mortar;

import scripts.grassUtils.StringHelper;

static tweakedRecipesAmount as int = 0;

function mortarUtils(output as IItemStack, input as IIngredient[]) {
    Mortar.addRecipe(StringHelper.getItemNameWithUnderline(output) + tweakedRecipesAmount,  output,  input);
    tweakedRecipesAmount += 1;
}

mortarUtils(<thermalfoundation:material:771>, [
    <quark:biome_cobblestone>
]);

mortarUtils(<roots:runic_dust>, [
    <thermalfoundation:material:769>, <minecraft:stone>, <minecraft:dye:15>, <ore:dustWheat>, <roots:moonglow_leaf>
]);

for i in 0 to 16 {
    var doubleflower as IItemStack = <botania:doubleflower1>.definition.makeStack(i);

    if (i > 7) doubleflower = <botania:doubleflower2>.definition.makeStack(i - 8);
    
    mortarUtils(<botania:petal>.definition.makeStack(i) * 6, [doubleflower.definition.makeStack(i)]);
    mortarUtils(<botania:petal>.definition.makeStack(i) * 3, [<botania:flower>.definition.makeStack(i)]);
}