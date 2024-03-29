#priority 5
#modloaded trutils
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.naturesaura.Altar;

import scripts.grassUtils.StringHelper.getItemNameWithUnderline;

function AltarTweak(out as IItemStack, input as IIngredient, catalyst as IIngredient, aura as int, time as int) {
    Altar.removeRecipe(out);
    Altar.addRecipe(getItemNameWithUnderline(out), input, out, catalyst, aura, time);
}

AltarTweak(<ore:dustGraphite>.firstItem, <ore:dustCoal>, <naturesaura:conversion_catalyst>, 15000, 150);
AltarTweak(<naturesaura:infused_iron>, <ore:ingotPureIron>, null, 15000, 80);
AltarTweak(<naturesaura:infused_iron_block>, <ore:blockPureIron>, null, 135000, 70);
AltarTweak(<contenttweaker:infused_crude_silicon_dust>, <contenttweaker:crude_silicon_dust>, null, 10000, 80);
AltarTweak(<contenttweaker:research_point_lv1>, <contenttweaker:research_point_lv1_incomplete>, null, 12500, 50);