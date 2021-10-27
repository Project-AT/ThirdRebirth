#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import mods.jei.JEI;
import mods.randomtweaker.jei.IJeiUtils;
import mods.randomtweaker.jei.IJeiPanel;

var oresTransform as IIngredient[IIngredient] = {
    <ore:oreIron> : <ore:nuggetIron>,
    <ore:oreNickel> : <ore:nuggetNickel>,
    <ore:blockRustyIron> : <ore:ingotIron>,
    <ore:oreCrudeSteel> : <ore:nuggetCrudeSteel>
};

function addJeiRecipe(input as IIngredient, output as IIngredient) {
    JEI.createJeiRecipe("MagneticAttraction").addInput(input).addInput(<atutils:magnetic_attraction>).addOutput(output).build();
}

JEI.createJei("MagneticAttraction", game.localize("jei.magnetic_attraction.title"))
    .setModid("atutils")
    .setIcon(<atutils:magnetic_attraction>)
    .addRecipeCatalyst(<atutils:magnetic_attraction>)
    .setBackground(IJeiUtils.createBackground(120, 50))
    .addSlot(IJeiUtils.createItemSlot(11, 16, true))
    .addSlot(IJeiUtils.createItemSlot(34, 16, true, false))
    .addSlot(IJeiUtils.createItemSlot(87, 16, false))
    .addElement(IJeiUtils.createArrowElement(56, 16, 0))
.register();

for k, v in oresTransform {
    addJeiRecipe(k, v);
}