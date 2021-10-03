#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithAll("mage", false, <enderstorage:ender_storage> * 2, 
    inputPattern(["GRG", "E#E", "GMG"])
        .with("G", <ore:ingotGold>)
        .with("R", <contenttweaker:teleport_rune>)
        .with("E", <ore:pearlEnderEye>)
        .with("#", <minecraft:ender_chest>)
        .with("M", <ore:ingotEnderium>).get()
, <liquid:liquidchorus> * 8000, {<ore:artisansGrimoire> : 10, <ore:artisansAthame> : 10});