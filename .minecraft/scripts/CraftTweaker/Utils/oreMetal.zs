#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

var orePlainNames as string[] = [
    "Gold", "Platinum", "Silver", "Copper", "Lead", "Aluminum",
];

var oreNames as string[] = [
    "Tin",   "Nickel",  "Invar", "Iron", "Bronze", "Constantan", "Electrum",
    "Steel", "Titanium", "TitaniumIridium", "TitaniumAluminide", "Germanium", "Tough",
    "Enderium", "Signalum", "Lumium", "Iridium", "Mithril", "HighStrengthAluminumAlloy"
];

var onlyPlateOreNames as string[] = [
    "Uranium", "Electricium", "Skyfather", "Mystic", "Tritanium", "Dawnstone"
];

var oreStickOrRodTemp as string[] = [];

for index, i in orePlainNames {
    var gear as IOreDictEntry = oreDict.get("gear" ~ i);
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    artisanUtils.RecipeTweakWithTools("blacksmith", false, plate.firstItem, [
        [ingot, ingot]
    ], {<ore:artisansHammer> : 4} as int[IIngredient]);

    artisanUtils.RecipeTweakWithTools("blacksmith", true, gear.firstItem, [
        [null, ingot, null],
        [ingot, null, ingot],
        [null, ingot, null]
    ], {<ore:artisansHammer> : 16} as int[IIngredient]);
    
}

for index, i in oreNames {
    var gear as IOreDictEntry = oreDict.get("gear" ~ i);
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    artisanUtils.RecipeTweakWithTools("blacksmith", false, plate.firstItem, [
        [ingot, ingot]
    ], {<ore:artisansHammer> : 4, <ore:artisansBurner> : 4} as int[IIngredient]);

    artisanUtils.RecipeTweakWithTools("blacksmith", true, gear.firstItem, [
        [null, ingot, null],
        [ingot, null, ingot],
        [null, ingot, null]
    ], {<ore:artisansHammer> : 16, <ore:artisansBurner> : 16} as int[IIngredient]);

}

for index, i in onlyPlateOreNames {
    var plate as IOreDictEntry = oreDict.get("plate" ~ i);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ i);

    artisanUtils.RecipeTweakWithTools_("blacksmith", false, plate.firstItem, [
        [ingot, ingot]
    ], {<ore:artisansHammer> : 4} as int[IIngredient]);

}

for ore in oreDict.entries {
    var oreName as string = "";
    if (ore.name.contains("stick"))
        oreName = "stick";
    else if (ore.name.contains("rod"))
        oreName = "rod";
    
    var metalName = RecipeUtils.getMetalNameNew(ore, oreName);
    if (!(oreStickOrRodTemp has metalName)) { 
        var oreDictIngot = oreDict.get("ingot" + metalName);
        if (!oreDictIngot.empty) {
            oreStickOrRodTemp += metalName;
            artisanUtils.RecipeTweakWithTools("blacksmith", true, ore.firstItem, 
                RecipeUtils.createLeftSlash(oreDictIngot),
            {<ore:artisansHammer> : 3} as int[IIngredient]);

            artisanUtils.RecipeTweakWithTools("blacksmith", true, ore.firstItem, 
                RecipeUtils.createRightSlash(oreDictIngot),
            {<ore:artisansHammer> : 3} as int[IIngredient]);
        }
    }

}