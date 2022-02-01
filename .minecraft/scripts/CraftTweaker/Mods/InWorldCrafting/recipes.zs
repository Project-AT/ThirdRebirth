#priority 5
#modloaded atutils

import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToFluid;

FireCrafting.addRecipe(<wizardry:devil_dust>, <roots:runic_dust>, 60);

FluidToItem.transform(<contenttweaker:mana_petals>, <liquid:mana_fluid>, [<roots:petals>], true);
FluidToItem.transform(<contenttweaker:glaze>, <liquid:glaze_slurry>, [<buildinggadgets:constructionpaste>], true);
FluidToItem.transform(<thermalfoundation:fertilizer> * 2, <liquid:eutrophic_water>, [<minecraft:dye:15> * 2], true);
    
FluidToFluid.transform(<liquid:liquid_sunshine>, <liquid:mana_fluid>, [<minecraft:double_plant>, <ore:dustGlowstone> * 4], true);
FluidToFluid.transform(<liquid:ender_distillation>, <liquid:nutrient_distillation>, [<ore:itemVibrantPowder>, <appliedenergistics2:material:46> * 4], true);
FluidToFluid.transform(<liquid:eutrophic_water>, <liquid:water>, [<ore:listAllfruit> * 4 | <ore:listAllveggie> * 4 | <ore:listAllmeatraw> * 2], true);