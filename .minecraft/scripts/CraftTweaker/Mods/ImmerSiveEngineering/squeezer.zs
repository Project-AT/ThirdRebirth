#priority 5
#modloaded trutils

import mods.immersiveengineering.Squeezer;

Squeezer.removeItemRecipe(<immersiveengineering:material:18>);
Squeezer.addRecipe(<minecraft:rotten_flesh>, <liquid:blood> * 10, <biomesoplenty:fleshchunk>, 2048);
Squeezer.addRecipe(null, <liquid:oil_soul> * 25, <netherex:gloomy_netherrack>, 2048);
Squeezer.addRecipe(null, <liquid:plantoil> * 20, <mysticalworld:assorted_seeds>, 2048);