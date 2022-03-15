#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithAll("engineer", false, <refraction:lens> * 6, [
     [<enderio:block_fused_quartz>,<enderio:block_fused_quartz>,<enderio:block_fused_quartz>]
], <liquid:mana_fluid> * 1000, {<ore:artisansGemCutter> : 6} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <refraction:magnifier>, [
	[<ore:ingotSteel>, <refraction:lens>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <embers:focal_lens>, <ore:ingotSteel>],
    [<ore:ingotSteel>, null, <ore:ingotSteel>]
], {<ore:artisansDriver> : 3, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <refraction:mirror>, [
	[<refraction:reflective_alloy>, <minecraft:glass_pane>, <refraction:reflective_alloy>],
    [<ore:ingotSteel>, <ore:plateSteel>, <ore:ingotSteel>]
], {<ore:artisansDriver> : 15, <ore:artisansSpanner> : 18} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <refraction:assembly_table>, [
	[<ore:ingotSteel>, <embers:focal_lens>, <ore:ingotSteel>],
    [<ore:exosuitSensorLight>, <teslacorelib:machine_case>, <ore:exosuitSensorLight>],
    [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]
], {<ore:artisansDriver> : 25, <ore:artisansSpanner> : 30} as int[IIngredient]);

artisanUtils.RecipeTweak("basic", true, <refraction:screw_driver>, [
	[null, null, <ore:ingotSteel>],
    [null, <ore:artisansDriver>],
    [<ore:plasticLightBlue>]
]);