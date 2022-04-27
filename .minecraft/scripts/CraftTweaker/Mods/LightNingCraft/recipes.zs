#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(true, <lightningcraft:stone_block> * 4,
    RecipeUtils.createCrossWithCore(<ore:runedObsidian>, <ore:quartzDark>, <naturesaura:infused_stone>)
);

artisanUtils.RecipeTweakWithTools("engineer", true, <lightningcraft:lightning_cell>, [
	[<ore:ingotIron>, <ore:ingotCopper>, <ore:ingotIron>],
    [<ore:plateElectricium>, <contenttweaker:rune1>, <ore:plateElectricium>],
    [<ore:ingotIron>, <ore:ingotCopper>, <ore:ingotIron>]
], {<ore:artisansDriver> : 5, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <lightningcraft:lightning_infuser>, [
	[<lightningcraft:stone_block>, <ore:plateElectricium>, <lightningcraft:stone_block>],
    [<ore:plateGold>, <contenttweaker:rune1>, <ore:plateGold>],
    [<lightningcraft:stone_block>, <ore:plateElectricium>, <lightningcraft:stone_block>]
], {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 8} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <lightningcraft:lightning_cell:2>, [
	[<ore:rodMystic>, <ore:plateElectricium>, <ore:rodMystic>],
    [<ore:plateMystic>, <lightningcraft:lightning_cell:1>, <ore:plateMystic>],
    [<ore:rodMystic>, <ore:plateElectricium>, <ore:rodMystic>]
], {<ore:artisansDriver> : 13, <ore:artisansSpanner> : 13} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <lightningcraft:lightning_cell:1>, [
	[<ore:rodGold>, <ore:ingotSilver>, <ore:rodGold>],
    [<ore:plateSkyfather>,<lightningcraft:lightning_cell>, <ore:plateSkyfather>],
    [<ore:rodGold>, <ore:ingotSilver>, <ore:rodGold>]
], {<ore:artisansDriver> : 8, <ore:artisansSpanner> : 8} as int[IIngredient]);

for i in 0 .. 10 {
    recipes.remove(<lightningcraft:plate>.definition.makeStack(i));
}
