#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <botania:altar>, [
    [<ore:slabCobblestone>, <wizardry:nacre_pearl>.withTag({purity_override: 1.0 as float}), <ore:slabCobblestone>],
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
], {<ore:artisansAthame> : 1, <ore:artisansGrimoire> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <naturesaura:offering_table>, [
    [<naturesaura:infused_stone>, <naturesaura:infused_iron>, <naturesaura:infused_stone>],
    [<naturesaura:token_sorrow>, <wizardry:nacre_block>, <naturesaura:token_fear>],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
], {<ore:artisansAthame> : 1,  <ore:artisansGrimoire> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:spreader:2>, [
    [<ore:dreamwood>, <ore:dreamwood>, <ore:dreamwood>],
    [<ore:ingotElvenElementium>, <wizardry:nacre_pearl>.withTag({purity: 600 as long, complete: 1 as byte, purity_override: 1.0 as float}), null],
    [<ore:dreamwood>, <ore:dreamwood>, <ore:dreamwood>]
], {<ore:artisansAthame> : 1, <ore:artisansGrimoire> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:runealtar>, [
    [<ore:livingrock>, <ore:manaDiamond>, <ore:livingrock>],
    [null, <wizardry:mana_battery>, null],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
], {<ore:artisansAthame> : 1, <ore:artisansGrimoire> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:pool>, [
    [<ore:livingrock>, <wizardry:mana_battery>, <ore:livingrock>,],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
], {<ore:artisansAthame> : 1, <ore:artisansGrimoire> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:pool:2>, [
	[null, null, null],
    [<ore:livingrock>, <wizardry:nacre_pearl>.withTag({purity: 600 as long, complete: 1 as byte, purity_override: 1.0 as float}), <ore:livingrock>,],
    [<ore:livingrock>, <ore:livingrock>,  <ore:livingrock>]
], {<ore:artisansAthame> : 1, <ore:artisansGrimoire> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:spreader:2>, [
	[<ore:livingwood>, <ore:livingwood>, <ore:livingwood>],
    [<ore:ingotGold>, <wizardry:nacre_pearl>.withTag({purity: 600 as long, complete: 1 as byte, purity_override: 1.0 as float}), null],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
], {<ore:artisansAthame> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:livingwood:5>, [
	[<roots:terra_moss>, <botania:vineball>, <roots:terra_moss>],
	[<naturesaura:gold_fiber>, <ore:livingwood>, <naturesaura:gold_fiber>],
	[<roots:terra_moss>, <botania:vineball>, <roots:terra_moss>]
], {<ore:artisansAthame> : 1, <ore:artisansGrimoire> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("mage", true, <botania:alfheimportal>, [
	[<ore:livingwood>, <naturesaura:sky_ingot>, <ore:livingwood>],
	[<naturesaura:calling_spirit>, <contenttweaker:teleport_rune>, <naturesaura:calling_spirit>],
	[<ore:livingwood>, <naturesaura:sky_ingot>, <ore:livingwood>]
], {<ore:artisansAthame> : 1, <ore:artisansGrimoire> : 1} as int[IIngredient]);

for i in 0 to 16 {

    var doubleflower as IItemStack = <botania:doubleflower1>.definition.makeStack(i);

    if (i > 7) doubleflower = <botania:doubleflower2>.definition.makeStack(i - 8);

    artisanUtils.RecipeTweakWithTools_("basic", false, <botania:petal>.definition.makeStack(i) * 3, [
        [<botania:flower>.definition.makeStack(i)]
    ], {<ore:artisansMortar> : 3} as int[IIngredient]);

    artisanUtils.RecipeTweakWithTools_("basic", false, doubleflower * 6, [
        [<botania:flower>.definition.makeStack(i)]
    ], {<ore:artisansMortar> : 6} as int[IIngredient]);

}