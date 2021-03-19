#priority 5

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


val banItem as IItemStack[] = [
    <primal_tech:flint_edged_disc>,
    <primal_tech:bone_knife>,
    <primal_tech:wood_club>,
    <primal_tech:bone_club>,
    <primal_tech:stone_club>,
    <primal_tech:fluid_bladder>
];

for i in banItem{
    i.addTooltip("§4" ~ game.localize("autotech.tooltip.item.ban"));
    recipes.remove(i);
}
