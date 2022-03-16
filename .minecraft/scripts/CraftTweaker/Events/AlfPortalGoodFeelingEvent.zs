#priority -5
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.atutils.IBotaniaAPI;
import mods.randomtweaker.botania.AlfPortalInGame;

import mods.randomtweaker.botania.ElvenTradeEvent;
import mods.randomtweaker.botania.AlfPortalDroppedEvent;

import scripts.CraftTweaker.Mods.Botania.elvenTrade;

var experienceRecipes as double[IIngredient] = {
    <ore:gemRime> : 2.0D,
    <ore:cropTea> : 0.02D,
    <ore:gemPearl> : 0.05D,
    <ore:gemAmethyst> : 2.0D,
    <ore:foodBread> : -100.0D,
    <ore:flourEqualswheat> : -10.0D
};

events.onElvenTrade(function(event as ElvenTradeEvent) {
    var alfPortal as AlfPortalInGame = event.alfPortal;
    var level as int = getFeelingLevel(alfPortal.data.goodFeelingExperience.asDouble());
    var experience as int = IBotaniaAPI.getElvenTradeRecipeLevel(event.input);

    if (experience > level) {
        event.cancel();
    } else {
        addExperience(alfPortal, searchExperience(event.output[0], level));
    }
});

events.onAlfPortalDropped(function(event as AlfPortalDroppedEvent) {
    var alfPortal as AlfPortalInGame = event.alfPortal;
    
    for input, experience in experienceRecipes {
        if (input.matches(event.input.item)) {
            addExperience(alfPortal, experience);
        }
    }
});

function searchExperience(output as IItemStack, level as int) as double {
    for output_, recipe in elvenTrade.ElvenTradeRecipes {
        for input, recipe_ in recipe {
            for level_, experience_ in recipe_ {
                if (output.matches(output_) && level == level) {
                    return experience_ as double;
                }
            }
        }
    }
    return 0.0D;
}
 
function getFeelingLevel(now as double) as int {
    if (now >= 1000) {
        return 5;
    } else if(now >= 500) {
        return 4;
    } else if (now >= 100) {
        return 3;
    } else if (now >= 50) {
        return 2;
    } else if (now >= 10) {
        return 1;
    } else {
        return 0;
    }
}

function addExperience(alfPortal as AlfPortalInGame, number as double) as void {
    if (isNull(alfPortal.data.goodFeelingExperience)) {
        alfPortal.updateData({goodFeelingExperience: 0});
    } else if (alfPortal.data.goodFeelingExperience.asDouble() + number > 0) {
        alfPortal.updateData({goodFeelingExperience: 0});
    } else {
        alfPortal.updateData({goodFeelingExperience: (alfPortal.data.goodFeelingExperience.asDouble() + number)});
    }
}