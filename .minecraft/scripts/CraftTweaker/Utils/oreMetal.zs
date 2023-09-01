#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.unidict.removalByKind;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var orePlainNames as string[] = [
    "PureIron", "Iron", "Gold", "Platinum", "Silver", "Copper", "Lead", "Aluminum", "Dawnstone", "RoseGold"
];

var oreNames as string[] = [
    "Tin", "Nickel", "Invar", "Bronze", "Constantan", "Electrum", "Steel", "Titanium", "TitaniumIridium", 
    "TitaniumAluminide", "Germanium", "Tough","Enderium", "Signalum", "Lumium", "Iridium", 
    "Mithril", "HighStrengthAluminumAlloy", "IronCompressed"
];

var onlyPlateOreNames as string[] = [
    "Uranium", "Electricium", "Skyfather", "Mystic", "Tritanium"
];

var oreStickOrRodTemp as string[] = [];

mods.unidict.removalByKind.get("Crafting").remove("rod");

for index, i in orePlainNames {
    var gear as IOreDictEntry = oreDict.get("gear" ~ i);
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    artisanUtils.RecipeTweakWithTools("blacksmith", false, plate.firstItem, [
        [ingot, ingot]
    ], {<ore:artisansHammer> : 2} as int[IIngredient]);

    
    if(i == "Dawnstone") continue;

    artisanUtils.RecipeTweakWithTools("blacksmith", true, gear.firstItem, [
        [null, ingot],
        [ingot, null, ingot],
        [null, ingot]
    ], {<ore:artisansHammer> : 8} as int[IIngredient]);
    
}

for index, i in oreNames {
    var gear as IOreDictEntry = oreDict.get("gear" ~ i);
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    artisanUtils.RecipeTweakWithTools("blacksmith", false, plate.firstItem, [
        [ingot, ingot]
    ], {<ore:artisansHammer> : 4, <ore:artisansBurner> : 2} as int[IIngredient]);

    artisanUtils.RecipeTweakWithTools("blacksmith", true, gear.firstItem, [
        [null, ingot],
        [ingot, null, ingot],
        [null, ingot]
    ], {<ore:artisansHammer> : 8, <ore:artisansBurner> : 4} as int[IIngredient]);

}

for index, i in onlyPlateOreNames {
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    artisanUtils.RecipeTweakWithTools_("blacksmith", false, plate.firstItem, [
        [ingot, ingot]
    ], {<ore:artisansHammer> : 2, <ore:artisansBurner> : 2} as int[IIngredient]);

}

for ore in oreDict.entries {
    var oreName as string = "";
    if (ore.name.contains("stick"))
        oreName = "stick";
    else if (ore.name.contains("rod"))
        oreName = "rod";

    var metalName = RecipeUtils.getMetalNameNew(ore, oreName);
    if (!isNull(metalName) && !(oreStickOrRodTemp has metalName)) { 
        var oreDictIngot = oreDict.get("ingot" + metalName);
        if (!oreDictIngot.empty) {
            oreStickOrRodTemp += metalName;
            artisanUtils.RecipeTweakWithTools("blacksmith", true, ore.firstItem * 3, 
                RecipeUtils.createLeftSlash(oreDictIngot),
            {<ore:artisansHammer> : 3} as int[IIngredient]);

            artisanUtils.RecipeTweakWithTools("blacksmith", true, ore.firstItem * 3, 
                RecipeUtils.createRightSlash(oreDictIngot),
            {<ore:artisansHammer> : 3} as int[IIngredient]);
        }
    }

    if (ore.name.startsWith("nugget")) {
        metalName = RecipeUtils.getMetalNameNew(ore, "nugget");
        var liquidName = metalName.substring(0, 1).toLowerCase() ~ metalName.substring(1);
        var liquidMetal = game.getLiquid(liquidName);
        if (!isNull(liquidMetal)) {
            mods.embers.Stamper.add(ore.firstItem, liquidMetal * 16, <contenttweaker:stamp_nugget>);
        }
    }
}
