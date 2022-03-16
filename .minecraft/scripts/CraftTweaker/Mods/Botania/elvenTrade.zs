#priority 5
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.botania.ElvenTrade;
import mods.atutils.IBotaniaAPI;

import scripts.grassUtils.StringHelper;

var toRemoves as IItemStack[] = [
    <botania_tweaks:basic_extended_crafty_crate>,
    <botania_tweaks:elite_extended_crafty_crate>,
    <botania_tweaks:advanced_extended_crafty_crate>,
    <botania_tweaks:ultimate_extended_crafty_crate>,
];

static ElvenTradeRecipes as double[int][IIngredient[]][IItemStack] = {
    <botania:manaresource:7> : {
        [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>] : {
            0: 0.01D
        },
        [<ore:ingotManasteel>, <ore:ingotManasteel>] : {
            2: 0.01D
        },
        [<ore:ingotManasteel>] : {
            4: 0.01D
        }
    },
    <botania:dreamwood:5> : {
        [<ore:livingwood>, <ore:livingwood>] : {
            0: 0.01D
        },
        [<ore:livingwood>, <ore:livingwood>] : {
            2: 0.01D
        }
    },
    <minecraft:quartz> : {
        [<botania:quartz:5>, <botania:quartz:5>, <botania:quartz:5>, <botania:quartz:5>] : {
            0: 0.01D
        },
        [<botania:quartz:5>, <botania:quartz:5>] : {
            2: 0.01D
        },
        [<botania:quartz:5>] : {
            3: 0.01D
        }
    },
    <botania:storage> : {
        [<botania:storage:2>, <botania:storage:2>, <botania:storage:2>, <botania:storage:2>] : {
            0: 0.1D
        },
        [<botania:storage:2>, <botania:storage:2>] : {
            2: 0.1D
        },
        [<botania:storage:2>] : {
            4: 0.1D
        }
    },
    <botania:elfglass> : {
        [<botania:managlass>, <botania:managlass>] : {
            0: 0.1D
        },
        [<botania:managlass>] : {
            1: 0.01D
        }
    },
    <botania:manaresource:9> : {
        [<ore:manaDiamond>, <ore:manaDiamond>] : {
            1: 0.1D
        },
        [<ore:manaDiamond>] : {
            3: 0.1D
        }
    },
    <botania:storage:3> : {
        [<botania:storage:4>, <botania:storage:4>] : {
            1: 1.0D
        },
        [<botania:storage:4>] : {
            1: 1.0D
        }
    },
    <botania:manaresource:8> : {
        [<ore:elvenPixieDust>, <ore:elvenPixieDust>] : {
            1: 0.1D
        },
        [<ore:elvenPixieDust>] : {
            3: 0.1D
        },
    },
    <botania_tweaks:basic_extended_crafty_crate> : {
        [<extendedcrafting:table_basic>] : {
            2: 0.1D
        }
    },
    <botania_tweaks:advanced_extended_crafty_crate> : {
        [<extendedcrafting:table_advanced>] : {
            2: 0.1D
        }
    },
    <botania_tweaks:elite_extended_crafty_crate> : {
        [<extendedcrafting:table_elite>] : {
            2: 0.1D
        }
    },
    <botania_tweaks:ultimate_extended_crafty_crate> : {
        [<extendedcrafting:table_ultimate>] : {
            2: 0.1D
        }
    }
};

for remove in toRemoves {
    ElvenTrade.removeRecipe(remove);
}

for output, recipe in ElvenTradeRecipes {
    for input, recipe_ in recipe {
        for level, experience in recipe_ {
            IBotaniaAPI.registerElvenTradeRecipe(StringHelper.getItemNameWithUnderline(output) ~ level, level, input, output);
        }
    }
}

