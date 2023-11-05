#priority 5
#modloaded trutils

import mods.harvestcrafttweaker.HarvestCraftTweaker;

//HarvestCraftTweaker.addGrinding(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
//HarvestCraftTweaker.removeGrindingByInput(IItemStack input);

HarvestCraftTweaker.removeGrindingByInput(<harvestcraft:seaweeditem>);
HarvestCraftTweaker.addGrinding(<ore:cropSeaweed>, <ore:foodSalt>.firstItem, <harvestcraft:veggiebaititem>);
HarvestCraftTweaker.addGrinding(<biomesoplenty:plant_1:3>, <harvestcraft:flouritem>, <harvestcraft:flouritem>);

HarvestCraftTweaker.addGrinding(<betteranimalsplus:eel_meat_raw>, <harvestcraft:groundfishitem>, <harvestcraft:groundfishitem>);
HarvestCraftTweaker.addGrinding(<mysticalworld:raw_squid>, <harvestcraft:groundfishitem>, <harvestcraft:groundfishitem>);

HarvestCraftTweaker.addGrinding(<betteranimalsplus:turkey_leg_raw>, <harvestcraft:groundturkeyitem>, <harvestcraft:groundturkeyitem>);
HarvestCraftTweaker.addGrinding(<betteranimalsplus:turkey_raw>, <harvestcraft:groundturkeyitem>, <harvestcraft:groundturkeyitem>);
HarvestCraftTweaker.addGrinding(<familiarfauna:turkey_leg_raw>, <harvestcraft:groundturkeyitem>, <harvestcraft:groundturkeyitem>);

HarvestCraftTweaker.addGrinding(<betteranimalsplus:venisonraw>, <harvestcraft:groundvenisonitem>, <harvestcraft:groundvenisonitem>);
HarvestCraftTweaker.addGrinding(<familiarfauna:venison_raw>, <harvestcraft:groundvenisonitem>, <harvestcraft:groundvenisonitem>);
HarvestCraftTweaker.addGrinding(<mysticalworld:venison>, <harvestcraft:groundvenisonitem>, <harvestcraft:groundvenisonitem>);