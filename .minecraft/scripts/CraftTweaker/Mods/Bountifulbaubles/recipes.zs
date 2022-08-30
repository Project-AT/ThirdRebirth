#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

recipes.addShapeless(<bountifulbaubles:potionrecall> * 2, [<bountifulbaubles:potionwormhole>, <minecraft:potion>.withTag({Potion: "minecraft:water"})]);

artisanUtils.RecipeTweakWithTools("chemist", true, <bountifulbaubles:potionwormhole> * 4, [
    [<ore:cropNetherWart>, <bountifulbaubles:potionrecall>, <ore:cropNetherWart>],
    [<bountifulbaubles:potionrecall>, <ore:enderpearl>, <bountifulbaubles:potionrecall>],
    [<ore:cropNetherWart>, <bountifulbaubles:potionrecall>, <ore:cropNetherWart>]
], {<ore:artisansBeaker> : 4} as int[IIngredient]);

artisanUtils.RecipeTweakWithAll("chemist", true, <bountifulbaubles:potionrecall> * 3, [
    [null, null, null],
    [<roots:pereskia>, <roots:moonglow_leaf>, <ore:dustQuartz>],
    [<minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>]
], <liquid:mana_fluid>*1000, {<ore:artisansBeaker> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools_("mage", true, <bountifulbaubles:spectralsilt>, [
    [<ore:runeSpringB>, <ore:elvenPixieDust>, <ore:runeSummerB>],
    [<ore:elvenPixieDust>, <naturesaura:aura_cache>.withTag({aura: 400000}), <ore:elvenPixieDust>],
    [<ore:runeAutumnB>, <ore:elvenPixieDust>, <ore:runeWinterB>],
], {<ore:artisansAthame> : 20, <ore:artisansGrimoire> : 8} as int[IIngredient]);