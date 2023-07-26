#priority 5
#modloaded trutils

import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToFluid;

FireCrafting.addRecipe(<wizardry:devil_dust>, <roots:runic_dust>, 60);

FluidToItem.transform(<contenttweaker:mana_petals>, <liquid:mana_fluid>, [<roots:petals>], true);
FluidToItem.transform(<contenttweaker:glaze>, <liquid:glaze_slurry>, [<buildinggadgets:constructionpaste>], true);
FluidToItem.transform(<thermalfoundation:fertilizer> * 2, <liquid:eutrophic_water>, [<minecraft:dye:15> * 2], true);
FluidToItem.transform(<ore:ingotRustyIron>.firstItem, <liquid:water>, [<ore:ingotIron>], false);
FluidToItem.transform(<contenttweaker:research_point_lv1> * 4, <liquid:glowstone>, [<contenttweaker:research_point_lv1_incomplete> * 4], true);
FluidToItem.transform(<minecraft:sand>, <liquid:water>, [<biomesoplenty:dried_sand>], false);

    
FluidToFluid.transform(<liquid:liquid_sunshine>, <liquid:mana_fluid>, 
    [<minecraft:double_plant>, <ore:dustGlowstone> * 4], true);
FluidToFluid.transform(<liquid:ender_distillation>, <liquid:nutrient_distillation>, 
    [<ore:itemVibrantPowder>, <appliedenergistics2:material:46> * 4], true);
FluidToFluid.transform(<liquid:eutrophic_water>, <liquid:water>, 
    [<ore:listAllfruit> * 4 , <ore:listAllsugar>], true);
FluidToFluid.transform(<liquid:eutrophic_water>, <liquid:water>, 
    [<ore:listAllveggie> * 4, <ore:listAllsugar>], true);
FluidToFluid.transform(<liquid:eutrophic_water>, <liquid:water>, 
    [<ore:listAllmeatraw> * 2, <ore:listAllsugar>], true);
FluidToFluid.transform(<liquid:ichor>, <liquid:blood>, 
    [<wizardry:devil_dust> * 10, <minecraft:magma_cream> * 4], true);
FluidToFluid.transform(<liquid:poison>, <liquid:water>, 
    [<roots:baffle_cap_mushroom>, <minecraft:poisonous_potato>, <ore:spiderEye>, <minecraft:fish:3>], true);
FluidToFluid.transform(<liquid:sand>, <liquid:water>, 
    [<ore:ballMud> * 8, <ore:sand> * 2], true);