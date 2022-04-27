#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.botania.Apothecary;

function apothecaryUtil(output as string, input as IIngredient[]) {
    Apothecary.removeRecipe(<botania:specialflower>.withTag({type: output}));
    Apothecary.addRecipe(<botania:specialflower>.withTag({type: output}), input);
}

apothecaryUtil("hydroangeas", [<contenttweaker:mana_petals>, <ore:petalBlue>, <ore:petalBlue>, <ore:petalGreen>, <ore:petalGreen>]);
apothecaryUtil("endoflame", [<contenttweaker:mana_petals>, <ore:petalRed>, <ore:petalLightGray>, <ore:petalBrown>, <ore:petalBrown>]);

Apothecary.addRecipe(<botania:specialflower>.withTag({type: "mana_flower"}),
    [<botania:rune>, <ore:petalBlue>, <ore:petalYellow>, <ore:petalLime>, <ore:petalLime>]);
Apothecary.addRecipe(<botania:specialflower>.withTag({type: "aura_flower"}),
    [<botania:rune:3>, <ore:petalCyan>, <ore:petalCyan>, <ore:petalCyan>, <ore:petalLightBlue>, <ore:petalLightBlue>]);
