#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.Apothecary;

function apothecaryUtil(output as IItemStack, input as IIngredient[]) {
    Apothecary.removeRecipe(output);
    Apothecary.addRecipe(output, input);
}

apothecaryUtil(<botania:specialflower>.withTag({type: "hydroangeas"}), [<contenttweaker:mana_petals>, <botania:petal:14>, <botania:petal:8>, <botania:petal:12>, <botania:petal:12>]);
apothecaryUtil(<botania:specialflower>.withTag({type: "endoflame"}), [<contenttweaker:mana_petals>, <botania:petal:11>, <botania:petal:11>, <botania:petal:13>, <botania:petal:13>]);