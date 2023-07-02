#priority 5
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.trutils.IBotaniaAPI;

import scripts.grassUtils.StringHelper;

var toRemoves as IItemStack[] = [
    <botania_tweaks:basic_extended_crafty_crate>,
    <botania_tweaks:elite_extended_crafty_crate>,
    <botania_tweaks:advanced_extended_crafty_crate>,
    <botania_tweaks:ultimate_extended_crafty_crate>,
];

var experienceRecipes as double[IIngredient] = {
    <ore:gemRime> : 0.25D,
    <ore:cropTea> : 0.02D,
    <ore:gemPearl> : 0.05D,
    <ore:gemAmethyst> : 0.25D,
    <ore:foodBread> : -100.0D,
    <ore:flourEqualswheat> : -10.0D,
    <contenttweaker:token_of_elven_friendship_small> : 1.0D,
    <contenttweaker:token_of_elven_friendship_medium> : 10.0D,
    <contenttweaker:token_of_elven_friendship_big> : 50.0D,
};

var elvenTradeRecipes as double[int][IIngredient[]][IItemStack] = {
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
    <botania:dreamwood> : {
        [<ore:livingwood>, <ore:livingwood>] : {
            0: 0.01D
        },
        [<ore:livingwood>] : {
            2: 0.01D
        }
    },
    <ore:quartzElven>.firstItem : {
        [<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>] : {
            0: 0.01D
        },
        [<ore:gemQuartz>, <ore:gemQuartz>] : {
            2: 0.01D
        },
        [<ore:gemQuartz>] : {
            3: 0.01D
        }
    },
    <botania:storage:2> : {
        [<botania:storage>, <botania:storage>, <botania:storage>, <botania:storage>] : {
            0: 0.1D
        },
        [<botania:storage>, <botania:storage>] : {
            2: 0.1D
        },
        [<botania:storage>] : {
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
    <botania:storage:4> : {
        [<botania:storage:3>, <botania:storage:3>] : {
            1: 1.0D
        },
        [<botania:storage:3>] : {
            3: 1.0D
        }
    },
    <botania:manaresource:8> : {
        [<ore:manaPearl>, <ore:manaPearl>] : {
            1: 0.1D
        },
        [<ore:manaPearl>] : {
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
    IBotaniaAPI.removeElvenTradeRecipe(remove);
}

for output, recipe in elvenTradeRecipes {
    for input, recipe_ in recipe {
        for level, experience in recipe_ {
            IBotaniaAPI.addElvenTradeRecipe(StringHelper.getItemNameWithUnderline(output) ~ level, level, experience, input, output);
        }
    }
}

for input, experience in experienceRecipes {
    IBotaniaAPI.addAlfPortalExperience(input, experience);
}
