#priority 20
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Player;
import mods.contenttweaker.World;

import mods.TimeStages.removalTimer;

// var twilightPotion as ItemFood = VanillaFactory.createItemFood("twilight_potion", 0);
// twilightPotion.alwaysEdible = true;
// twilightPotion.saturation = 0;
// twilightPotion.onItemFoodEaten = function(stack, world, player){
//     if(!world.remote){
//         removalTimer("twilight", "twilightStage", 90, "seconds");
//         player.addGameStage("twilightStage");

//         player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(90 * 20,1,true,false));
//         player.addPotionEffect(<potion:minecraft:snowness>.makePotionEffect(90 * 20,1,true,false));
//         player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(90 * 20,1,true,false));
//     }
// };
// twilightPotion.register();