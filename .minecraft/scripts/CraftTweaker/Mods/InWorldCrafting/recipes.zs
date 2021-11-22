#priority 5
#modloaded atutils

import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FireCrafting;
import mods.inworldcrafting.FluidToFluid;

FireCrafting.addRecipe(<wizardry:devil_dust>, <roots:runic_dust>, 60);

FluidToItem.transform(<contenttweaker:mana_petals>, <liquid:mana_fluid>, [<roots:petals>], true);
FluidToItem.transform(<contenttweaker:glaze>, <liquid:glaze_slurry>, [<buildinggadgets:constructionpaste>], true);

FluidToFluid.transform(<liquid:liquid_sunshine>, <liquid:mana_fluid>, [<minecraft:double_plant>, <ore:dustGlowstone> * 4], true);
FluidToFluid.transform(<liquid:nutrient_distillation>, <liquid:water>, [<minecraft:nether_wart>, <minecraft:rotten_flesh> * 4, <ore:bone> * 4], true);
FluidToFluid.transform(<liquid:ender_distillation>, <liquid:nutrient_distillation>, [<ore:itemVibrantPowder>, <appliedenergistics2:material:46> * 4], true);
