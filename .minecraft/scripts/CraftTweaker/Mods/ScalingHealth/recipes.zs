#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <scalinghealth:healingitem> * 2, [
    [<ore:string>, <ore:string>, <ore:string>],
    [<ore:paper>, <ore:paper>, <ore:paper>]
]);

RecipeUtils.recipeTweak(true, <scalinghealth:healingitem:1> * 2, [
    [<scalinghealth:healingitem>, <roots:terra_moss>, <scalinghealth:healingitem>],
    [<ore:blockWool>, <ore:blockWool>, <ore:blockWool>]
]);