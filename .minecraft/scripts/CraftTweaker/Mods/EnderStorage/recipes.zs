#priority 5
#modloaded trutils

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

artisanUtils.RecipeTweakWithAll("mage", true, <enderstorage:ender_storage> * 2, 
    inputPattern(["GRG", "E#E", "GMG"])
        .with("G", <ore:ingotGold>)
        .with("R", <contenttweaker:teleport_rune>)
        .with("E", <ore:pearlEnderEye>)
        .with("#", <minecraft:ender_chest>)
        .with("M", <ore:ingotEnderium>).get()
, <liquid:liquidchorus> * 8000, {<ore:artisansGrimoire> : 15, <ore:artisansAthame> : 20});

artisanUtils.RecipeTweakWithAll("mage", true, <enderstorage:ender_pouch>, 
    inputPattern(["LYL", "P P", "BPB"])
        .with("L", <ore:dustBlaze>)
        .with("Y", <ore:pearlEnderEye>)
        .with("P", <ore:leather>)
        .with("B", <ore:rodBlaze>).get()
, <liquid:liquidchorus> * 2000, {<ore:artisansGrimoire> : 10, <ore:artisansAthame> : 10});

artisanUtils.RecipeTweakWithAll("mage", true, <enderstorage:ender_storage:1>,
    inputPattern(["YCY", "JBJ", "OMO"])
        .with("Y", <ore:pearlEnderEye>)
        .with("C", <contenttweaker:teleport_rune>)
        .with("J", <ore:rodGold>)
        .with("B", <ore:fusedQuartz>)
        .with("O", <ore:runedObsidian>)
        .with("M", <ore:ingotEnderium>).get()
, <liquid:liquidchorus> * 8000, {<ore:artisansGrimoire> : 15, <ore:artisansAthame> : 20});