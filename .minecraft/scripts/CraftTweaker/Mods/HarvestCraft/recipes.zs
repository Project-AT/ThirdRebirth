#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.addShapeless(<harvestcraft:oliveoilitem> * 2, [<quark:tallow>, <harvestcraft:potitem>.reuse()]);
recipes.addShapeless(<harvestcraft:oliveoilitem> * 2, [<mysticalworld:cooked_seeds>, <ore:toolJuicer>.reuse()]);

RecipeUtils.recipeTweak(false, <harvestcraft:hardenedleatheritem>, [[<ore:materialLeather>, <ore:materialPressedwax>]]);
RecipeUtils.recipeTweak(false, <harvestcraft:honeyitem>, [[<harvestcraft:honeycombitem> | <biomesoplenty:filled_honeycomb>]]);
RecipeUtils.recipeTweak(false, <harvestcraft:beeswaxitem>, [[<harvestcraft:waxcombitem> | <biomesoplenty:honeycomb>]]);
RecipeUtils.recipeTweak(false, <harvestcraft:honeyitem> * 4, [[<biomesoplenty:honey_block>]]);
RecipeUtils.recipeTweak(false, <harvestcraft:honeyitem> * 9, [[<harvestcraft:honey>]]);

artisanUtils.RecipeTweakWithTools("engineer", true, <harvestcraft:grinder>,
    inputPatternGet(["CBC", "D D", "EEE"], {
        "B" : <minecraft:iron_sword>,
        "C" : <ore:ingotIron>,
        "D" : <ore:gearIron>,
        "E" : <ore:plankTreatedWood>
}), {<ore:artisansSpanner> : 6} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <harvestcraft:presser>,
    inputPatternGet(["CBC", "D D", "EDE"], {
        "B" : <minecraft:piston>,
        "C" : <ore:ingotIron>,
        "D" : <ore:gearIron>,
        "E" : <ore:plankTreatedWood>
}), {<ore:artisansSpanner> : 9} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <harvestcraft:waterfilter>,
    inputPatternGet(["DCD", "D D", "EEE"], {
        "C" : <ore:ingotIron>,
        "D" : <ore:barsIron>,
        "E" : <ore:plankTreatedWood>
}), {<ore:artisansSpanner> : 3} as int[IIngredient]);

//火烤菠萝蜜
recipes.addShapeless(<harvestcraft:bbqjackfruititem>,
    [<ore:toolSkillet>.reuse(), <ore:cropJackfruit>, <ore:foodBbqsauce>]
);

//德式油煎香肠
recipes.addShapeless(<harvestcraft:bratwurstitem>,
    [<ore:toolCuttingboard>.reuse(), <ore:foodPinkel>, <ore:foodPickles>, <ore:cropOnion>, <ore:foodBread>]
);

//瑞典肉丸，原版香料叶矿辞为foodSpiceleaf
recipes.addShapeless(<harvestcraft:swedishmeatballsitem>,
    [<ore:toolSaucepan>.reuse(), <ore:foodGroundbeef>, <ore:foodFlour>, <ore:cropSpiceleaf>, <ore:foodGroundnutmeg>, <ore:listAllheavycream>, <ore:foodBlackpepper>, <ore:cropOnion>, <ore:listAllegg>]
);

//酱碳烤羊肉
recipes.addShapeless(<harvestcraft:saucedlambkebabitem>,
    [<ore:toolMixingbowl>.reuse(), <ore:foodLambkebab>, <ore:listAllyogurt>, <ore:listAllheavycream>, <ore:cropGarlic>, <ore:cropSpiceleaf>]
);

//炸肉排
recipes.addShapeless(<harvestcraft:schnitzelitem>,
    [<ore:toolSkillet>.reuse(), <ore:listAllporkraw> | <ore:listAllmuttonraw>, <ore:foodFlour>, <ore:cropLemon>, <ore:foodBlackpepper>, <ore:foodOliveoil>]
);

//蟹肉棒
recipes.addShapeless(<harvestcraft:imitationcrabsticksitem>,
    [<ore:toolCuttingboard>.reuse(), <ore:listAllgrain>, <ore:listAllfishcooked>, <ore:listAllegg>, <minecraft:dye:1>]
);

//荔枝茶
recipes.addShapeless(<harvestcraft:lycheeteaitem>,
    [<ore:toolPot>.reuse(), <ore:cropLychee>, <ore:cropTea>]
);

//猪油脆皮
recipes.addShapeless(<harvestcraft:cracklinsitem>,
    [<ore:toolPot>.reuse(), <ore:listAllporkraw>, <ore:foodOliveoil>, <ore:tallow>, <ore:cropSpiceleaf>]
);

//炸猪皮
recipes.addShapeless(<harvestcraft:porkrindsitem>,
    [<ore:toolPot>.reuse(), <ore:toolCuttingboard>.reuse(), <minecraft:porkchop>, <ore:foodOliveoil>, <ore:foodSalt> | <ore:dustSalt> | <ore:itemSalt>, <ore:foodBlackpepper>]
);

//蒜蓉牛排，原版香料叶矿辞为foodSpiceleaf
recipes.addShapeless(<harvestcraft:garlicsteakitem>,
    [<ore:toolSkillet>.reuse(), <ore:listAllbeefraw>, <ore:cropGarlic>, <ore:foodButter>, <ore:cropSpiceleaf>]
);

//小黄瓜种子
recipes.addShapeless(<harvestcraft:gigapickleseeditem>,
    [<ore:foodGigapickle>]
);
