#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;

import mods.embers.Alchemy;
import scripts.grassUtils.StringHelper;

static aspItems as string[IItemStack] = {
    <embers:aspectus_iron> : "iron",
    <embers:aspectus_copper> : "copper",
    <embers:aspectus_lead> : "lead",
    <embers:aspectus_silver> : "silver",
    <embers:aspectus_dawnstone> : "dawnstone"
} as string[IItemStack];

function ASP(item as IItemStack) as string
{
    if (isContainsASP(item)) {
        return aspItems[item];
    }
    var name = StringHelper.getItemNameWithUnderline(item);
    Alchemy.addAspect(name, item);
    aspItems[item] = name;
    return name;
}

function isContainsASP(item as IItemStack) as bool {
    for aspItem in aspItems.keys {
        if (item.matches(aspItem)) {
            return true;
        }
    }
    return false;
}

Alchemy.add(<enderio:item_alloy_endergy_ingot:5> * 4,
    [<embers:crystal_ember>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], {
        ASP(<embers:aspectus_silver>) : 16 .. 32
    }
);

Alchemy.add(<botania:rune:4>,
    [<contenttweaker:rune>, <ore:wildroot>, <ore:treeSapling>, <roots:spirit_herb>, <ore:treeSapling>], {
        ASP(<botania:rune>) : 32 .. 64,
        ASP(<botania:rune:1>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:5>,
    [<contenttweaker:rune>, <minecraft:speckled_melon>, <ore:sand>, <roots:pereskia>, <ore:sand>], {
        ASP(<botania:rune:3>) : 32 .. 64,
        ASP(<botania:rune:2>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:6>,
    [<contenttweaker:rune>, <ore:eye>, <ore:treeLeaves>, <roots:wildewheet>, <ore:treeLeaves>], {
        ASP(<botania:rune:3>) : 32 .. 64,
        ASP(<botania:rune:1>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:7>,
    [<contenttweaker:rune>, <ore:foodCake>, <minecraft:snow>, <roots:moonglow_leaf>, <minecraft:snow>], {
        ASP(<botania:rune>) : 32 .. 64,
        ASP(<botania:rune:2>) : 32 .. 64,
    }
);

Alchemy.add(<ore:blockEnergeticSilver>.firstItem * 4,
    [<embers:ember_cluster>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>], {
        ASP(<embers:aspectus_silver>) : 64 .. 128,
    }
);

Alchemy.add(<ore:blockEnergeticSilver>.firstItem * 4,
    [<contenttweaker:ember_crystal_block>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>], {
        ASP(<embers:aspectus_silver>) : 128 .. 256,
    }
);