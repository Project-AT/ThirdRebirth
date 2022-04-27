#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <jecalculation:item_calculator:1>, 
    inputPattern("ACA", "BDB", "BEB")
        .with("A", <ore:blockGlass>)
        .with("B", <ore:ingotIron>)
        .with("C", <ore:dustGlowstone>)
        .with("D", <immersiveengineering:material:27>)
        .with("E", <quark:iron_button>).get()
, {<ore:artisansSolderer> : 18} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <jecalculation:item_calculator>, 
    inputPattern("ACA", "BDB", "BEB")
        .with("A", <ore:blockGlass>)
        .with("B", <ore:ingotIron>)
        .with("C", <ore:dustGlowstone>)
        .with("D", <immersiveengineering:material:27>)
        .with("E", <mysticalworld:pearl_button>).get()
, {<ore:artisansSolderer> : 18} as int[IIngredient]);