#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <fluiddrawers:tank>, [
    [<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>],
    [<ore:stickIron>, null, <ore:stickIron>],
    [<ore:paneGlass>, <ore:plateIron>, <ore:paneGlass>]
], {<ore:artisansDriver> : 20} as int[IIngredient]);
