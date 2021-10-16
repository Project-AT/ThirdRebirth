#priority 5
#modloaded atutils
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.naturesaura.Altar;

import scripts.grassUtils.StringHelper.getItemNameWithUnderline;

function AltarTweak(out as IItemStack, input as IIngredient, catalyst as IIngredient, aura as int, time as int) {
    Altar.removeRecipe(out);
    Altar.addRecipe(getItemNameWithUnderline(out), input, out, catalyst, aura, time);
}

AltarTweak(<ore:dustGraphite>.firstItem, <ore:dustCoal>, <naturesaura:conversion_catalyst>, 15000, 150);
AltarTweak(<naturesaura:infused_iron>, <ore:ingotManasteel>, null, 15000, 80);
AltarTweak(<naturesaura:infused_iron_block>, <botania:storage>, null, 135000, 70);