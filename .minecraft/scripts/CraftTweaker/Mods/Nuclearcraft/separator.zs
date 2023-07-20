#priority 5
#modloaded trutils

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Separator;

//mods.nuclearcraft.Separator.addRecipe(IIngredient itemInput, IIngredient itemOutput1, IIngredient itemOutput2, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);

Separator.addRecipe(<harvestcraft:greengrapeitem> * 10, <harvestcraft:grapejuiceitem> * 10, <contenttweaker:wine_stone>, 0.25);
Separator.addRecipe(<harvestcraft:grapeitem> * 10, <harvestcraft:grapejuiceitem> * 10, <contenttweaker:wine_stone>, 0.25);

var harvestcraftPresser as IIngredient[IIngredient[]] = {
    [<harvestcraft:freshmilkitem>, <harvestcraft:grainbaititem>] : <ore:cropAlmond>,
    [<harvestcraft:silkentofuitem>, <harvestcraft:grainbaititem>] : <ore:cropSoybean>,
    [<harvestcraft:sesameoilitem>, <harvestcraft:grainbaititem>] : <ore:seedSesameseed>,
    [<harvestcraft:sesameoilitem>, <harvestcraft:fruitbaititem>] : <ore:cropOlive>,
    [<harvestcraft:sesameoilitem>, <harvestcraft:veggiebaititem>] : <ore:cropAvocado>,
    [<harvestcraft:sesameoilitem>, <harvestcraft:veggiebaititem>] : <ore:cropPumpkin>,
    [<minecraft:sugar>, <harvestcraft:veggiebaititem>] : <ore:cropBeet>,
    [<harvestcraft:coconutmilkitem>, <harvestcraft:veggiebaititem>] : <ore:cropCoconut>,
    [<minecraft:slime_ball>, <harvestcraft:freshwateritem>] : <ore:dropHoney>,
    [<harvestcraft:bubblywateritem>, <harvestcraft:bubblywateritem>] : <harvestcraft:freshwateritem>,
    [<minecraft:slime_ball>, <harvestcraft:freshwateritem>] : <harvestcraft:maplesyrupitem>,
    [<harvestcraft:carrotjuiceitem>, <harvestcraft:grainbaititem>] : <ore:cropCarrot>,
};

var seedToOil as IIngredient[] = [
    <ore:seedMustard>, <ore:cropSunflower>, <ore:cropTea>, <ore:cropWalnut>, <ore:crop>, <ore:seedCotton>, <ore:seedPumpkin>
];

var juicedCropName as string[] = [
    "Cactusfruit", "Plum", "Lime", "Apricot", "Kiwi", "Pomegranate", "Pear", "Grapefruit", "Apple", "Strawberry", "Orange", "Persimmon", "Blackberry", "Peach", "Cranberry",
    "Raspberry", "Papaya", "Blueberry", "Cherry", "Fig", "Starfruit", "Mango"
];

for outputs, input in harvestcraftPresser {
    Separator.addRecipe(input, outputs[0], outputs[1], 0.0625);
}

for seed in seedToOil {
    Separator.addRecipe(seed, <harvestcraft:oliveoilitem>, <harvestcraft:grainbaititem>, 0.0625);
}

for cropName in juicedCropName {
    var crop as IOreDictEntry = oreDict.get("crop" ~ cropName);
    var juice as IOreDictEntry = oreDict.get("food" ~ cropName ~ "juice");

    if (!crop.empty && !juice.empty) {
        Separator.addRecipe(crop, juice, <harvestcraft:fruitbaititem>, 0.0625);
    }
}