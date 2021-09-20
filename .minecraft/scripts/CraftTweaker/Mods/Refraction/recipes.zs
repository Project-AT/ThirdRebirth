#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithTools("engineer", true, <refraction:assembly_table>, [
	[<ore:ingotSteel>, <embers:focal_lens>, <ore:ingotSteel>],
    [<immersiveengineering:material:27>, <enderio:item_material>, <immersiveengineering:material:27>],
    [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]
], {<ore:artisansDriver> : 1, <ore:artisansSpanner> : 1} as int[IIngredient]);

artisanUtils.RecipeTweakWithAll("engineer", false, <refraction:lens> * 6, [
     [<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>]
], <liquid:mana_fluid> * 1000, {<ore:artisansGemCutter> : 6} as int[IIngredient]);

artisanUtils.RecipeTweak("engineer", true, <refraction:magnifier>, [
	[<ore:ingotSteel>, <refraction:lens>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <embers:focal_lens>, <ore:ingotSteel>],
    [<ore:ingotSteel>, null, <ore:ingotSteel>]
]);