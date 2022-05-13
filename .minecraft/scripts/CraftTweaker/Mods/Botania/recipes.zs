#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var manaTransform as IItemStack[IIngredient] = {
    <ore:ingotManasteel> : <ore:ingotPureIron>.firstItem,
    <botania:storage> : <ore:blockPureIron>.firstItem,
    <ore:manaDiamond> : <ore:gemDiamond>.firstItem,
    <botania:storage:3> : <ore:blockDiamond>.firstItem,
    <ore:quartzMana> : <ore:gemQuartz>.firstItem,
    <botania:quartztypemana> : <minecraft:quartz_block>,
    <botania:quartztypemana:1> : <minecraft:quartz_block:1>,
    <botania:quartztypemana:2> : <minecraft:quartz_block:2>
};

RecipeUtils.recipeTweak(true, <botania:altar>, [
    [<ore:slabCobblestone>, NACRE_PEARL, <ore:slabCobblestone>],
    [null, <minecraft:cobblestone>, null],
    [<minecraft:cobblestone>, <ore:livingrock>, <minecraft:cobblestone>]
]);

RecipeUtils.recipeTweak(false, <botania:manaresource:6>, [
    [<quark:root>, <ore:dustRedstone>]
]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:pool>,[
    [<roots:dewgonia>,<ore:manaPearl>, <roots:dewgonia>],
    [<ore:gemDiamond>,<botania:pool:2>,<ore:gemDiamond>],
    [<roots:dewgonia>,<ore:manaPearl>, <roots:dewgonia>]
], {<ore:artisansAthame> : 10, <ore:artisansGrimoire> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:spreader:2>, [
    [<ore:dreamwood>, <ore:dreamwood>, <ore:dreamwood>],
    [<ore:ingotElvenElementium>, NACRE_PEARL, null],
    [<ore:dreamwood>, <ore:dreamwood>, <ore:dreamwood>]
], {<ore:artisansAthame> : 5, <ore:artisansGrimoire> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:pool:2>, [
    [<ore:livingrock>, NACRE_PEARL, <ore:livingrock>,],
    [<ore:livingrock>, <ore:livingrock>,  <ore:livingrock>]
], {<ore:artisansAthame> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:spreader>, [
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>],
    [<ore:ingotGold>, NACRE_PEARL],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
], {<ore:artisansAthame> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:livingwood:5>, [
    [<roots:terra_moss>, <botania:vineball>, <roots:terra_moss>],
    [<naturesaura:gold_fiber>, <ore:livingwood>, <naturesaura:gold_fiber>],
    [<roots:terra_moss>, <botania:vineball>, <roots:terra_moss>]
], {<ore:artisansAthame> : 3, <ore:artisansGrimoire> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:alfheimportal>, [
    [<ore:livingwood>, <naturesaura:sky_ingot>, <ore:livingwood>],
    [<naturesaura:calling_spirit>, <contenttweaker:teleport_rune>, <naturesaura:calling_spirit>],
    [<ore:livingwood>, <naturesaura:sky_ingot>, <ore:livingwood>]
], {<ore:artisansAthame> : 10, <ore:artisansGrimoire> : 10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:runealtar>, 
    inputPattern("ABA", " C", "AAA")
        .with("A", <ore:livingrock>)
        .with("B", <contenttweaker:mana_crystal>)
        .with("C", <ore:manaDiamond>).get()
, {<ore:artisansGrimoire> : 98, <ore:artisansAthame> : 135} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:pool>, 
    inputPattern("ABA", "AAA")
        .with("A", <ore:livingrock>)
        .with("B", <contenttweaker:mana_crystal>).get()
, {<ore:artisansGrimoire> : 16, <ore:artisansAthame> : 18} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:pylon:1>, [
    [null, <naturesaura:infused_iron>],
    [<naturesaura:infused_iron>, <botania:pylon>, <naturesaura:infused_iron>],
    [null, <minecraft:ender_eye>]
], {<ore:artisansAthame> : 30, <ore:artisansGrimoire> : 30} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:terraplate>, [
    [<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>],
    [<ore:runeEarthB>, <ore:runeManaB>, <ore:runeAirB>],
    [<ore:runeFireB>, <contenttweaker:rune1>, <ore:runeWaterB>]
], {<ore:artisansAthame> : 125, <ore:artisansGrimoire> : 114} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:alchemycatalyst>, [
    [<ore:livingrock>, <contenttweaker:mana_crystal>, <ore:livingrock>],
    [<minecraft:brewing_stand>, <naturesaura:sky_ingot>, <minecraft:brewing_stand>],
    [<ore:livingrock>, <contenttweaker:mana_crystal>, <ore:livingrock>]
], {<ore:artisansAthame> : 85, <ore:artisansGrimoire> : 92} as int[IIngredient]);

for i in 0 to 16 {

    var doubleflower as IItemStack = <botania:doubleflower1>.definition.makeStack(i);

    if (i > 7) doubleflower = <botania:doubleflower2>.definition.makeStack(i - 8);

    artisanUtils.RecipeTweakWithTools_("basic", false, <botania:petal>.definition.makeStack(i) * 3, [
        [<botania:flower>.definition.makeStack(i)]
    ], {<ore:artisansMortar> : 3} as int[IIngredient]);

    artisanUtils.RecipeTweakWithTools_("basic", false, <botania:petal>.definition.makeStack(i) * 6, [
        [doubleflower]
    ], {<ore:artisansMortar> : 6} as int[IIngredient]);

}

for input, output in manaTransform {
    recipes.addShapeless(output, [input, <botania:spellcloth>.anyDamage().transformDamage()]);
}
