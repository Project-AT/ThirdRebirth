#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

recipes.remove(<toolbelt:belt>);

artisanUtils.RecipeTweakWithTools("basic", true, <toolbelt:pouch>, [
    [<ore:string>, <harvestcraft:hardenedleatheritem>, <ore:string>],
    [<harvestcraft:hardenedleatheritem>, <ore:chestWood>, <harvestcraft:hardenedleatheritem>],
    [<ore:string>, <harvestcraft:hardenedleatheritem>, <ore:string>]
], {<ore:artisansNeedle> : 50} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <toolbelt:belt>.withTag({Size: 4}), [
    [<toolbelt:pouch>, <ore:string>, <toolbelt:pouch>],
    [<simplyjetpacks:metaitem:4>, <harvestcraft:hardenedleatheritem>, <simplyjetpacks:metaitem:4>],
    [<toolbelt:pouch>, <ore:string>, <toolbelt:pouch>]
], {<ore:artisansNeedle> : 100} as int[IIngredient]);