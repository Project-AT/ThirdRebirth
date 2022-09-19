#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;


RecipeUtils.recipeTweak(true, <deepmoblearning:polymer_clay> * 16, 
    inputPatternGet(["ABA", "BCB", "ABA"], {
        "A" : <enderio:item_material:75>,
        "B" : <ore:clayBall>,
        "C" : <rftools:dimensional_shard>,
}));
