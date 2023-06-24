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
    [<contenttweaker:rune>, <ore:wildroot>, <naturesaura:token_joy>, <roots:spirit_herb>, <ore:treeSapling>], {
        ASP(<botania:rune>) : 32 .. 64,
        ASP(<botania:rune:1>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:5>,
    [<contenttweaker:rune>, <minecraft:speckled_melon>, <naturesaura:token_anger>, <roots:pereskia>, <ore:sand>], {
        ASP(<botania:rune:3>) : 32 .. 64,
        ASP(<botania:rune:2>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:6>,
    [<contenttweaker:rune>, <ore:eye>, <naturesaura:token_fear>, <roots:wildewheet>, <ore:treeLeaves>], {
        ASP(<botania:rune:3>) : 32 .. 64,
        ASP(<botania:rune:1>) : 32 .. 64,
    }
);

Alchemy.add(<botania:rune:7>,
    [<contenttweaker:rune>, <ore:foodCake>, <naturesaura:token_sorrow>, <roots:moonglow_leaf>, <minecraft:snow>], {
        ASP(<botania:rune>) : 32 .. 64,
        ASP(<botania:rune:2>) : 32 .. 64,
    }
);

Alchemy.add(<ore:blockEnergeticSilver>.firstItem * 4,
    [<embers:ember_cluster>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>], {
        ASP(<embers:aspectus_silver>) : 64 .. 96,
    }
);

Alchemy.add(<ore:blockEnergeticSilver>.firstItem * 4,
    [<contenttweaker:ember_crystal_block>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>, <ore:blockSilver>], {
        ASP(<embers:aspectus_silver>) : 128 .. 256,
    }
);

Alchemy.add(<contenttweaker:research_point_lv1> * 20,
    [<ore:crystalEmber>, <immersiveengineering:material:27>, <immersiveengineering:material:27>, <immersiveengineering:material:27>, <immersiveengineering:material:27>], {
        ASP(<embers:aspectus_silver>) : 32 .. 64,
        ASP(<embers:aspectus_copper>) : 32 .. 96,
    }
);

Alchemy.add(<contenttweaker:mystery_dust> * 4,
    [<contenttweaker:mana_crystal>, <ore:powderMana>, <ore:powderMana>, <ore:powderMana>, <ore:powderMana>], {
        ASP(<botania:rune:4>) : 16 .. 32,
        ASP(<botania:rune:5>) : 16 .. 32,
        ASP(<botania:rune:6>) : 16 .. 32,
        ASP(<botania:rune:7>) : 16 .. 32,
    }
);

Alchemy.add(<minecraft:ghast_tear>,
    [<netherex:ghast_meat_raw>, <embers:alchemic_waste>, <embers:alchemic_waste>, <botania:manabottle>, <botania:manabottle>], {
        ASP(<botania:rune:0>) : 32 .. 48,
        ASP(<embers:aspectus_dawnstone>) : 32 .. 48,
        ASP(<embers:aspectus_silver>) : 32 .. 48,
    }
);