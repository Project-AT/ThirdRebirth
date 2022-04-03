#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

import mods.embers.Alchemy;
import scripts.grassUtils.StringHelper;

static aspItems as string[IItemStack] = {
    <embers:aspectus_iron> : "iron",
    <embers:aspectus_copper> : "copper",
    <embers:aspectus_lead> : "lead",
    <embers:aspectus_silver> : "silver",
    <embers:aspectus_dawnstone> : "dawnstone"
} as string[IItemStack];

function Asp(item as IItemStack) as string
{
    if (isContainsasp(item)) {
        return aspItems[item];
    }
    var name = StringHelper.getItemNameWithUnderline(item);
    Alchemy.addAspect(name, item);
    aspItems[item] = name;
    return name;
}

function isContainsasp(item as IItemStack) as bool {
    for aspItem in aspItems.keys {
        if (item.matches(aspItem)) {
            return true;
        }
    }
    return false;
}

Alchemy.add(<enderio:item_alloy_endergy_ingot:5> * 4,
    [<embers:crystal_ember>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], {
        Asp(<embers:aspectus_silver>) : 16 .. 33
    }
);

Alchemy.add(<botania:rune:4>,
    [<contenttweaker:rune>, <ore:wildroot>, <ore:treeSapling>, <roots:spirit_herb>, <ore:treeSapling>], {
        Asp(<botania:rune>) : 32 .. 64,
        Asp(<botania:rune:1>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:5>,
    [<contenttweaker:rune>, <minecraft:speckled_melon>, <ore:sand>, <roots:pereskia>, <ore:sand>], {
        Asp(<botania:rune:3>) : 32 .. 64,
        Asp(<botania:rune:2>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:6>,
    [<contenttweaker:rune>, <ore:eye>, <ore:treeLeaves>, <roots:wildewheet>, <ore:treeLeaves>], {
        Asp(<botania:rune:3>) : 32 .. 64,
        Asp(<botania:rune:1>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:7>,
    [<contenttweaker:rune>, <ore:foodCake>, <minecraft:snow>, <roots:moonglow_leaf>, <minecraft:snow>], {
        Asp(<botania:rune>) : 32 .. 64,
        Asp(<botania:rune:2>) : 32 .. 64,
    }
);