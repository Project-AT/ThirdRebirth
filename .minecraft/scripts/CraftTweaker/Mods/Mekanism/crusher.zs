#priority 5
#modloaded trutils

import mods.mekanism.crusher;

for i in 0 .. 7 {
    crusher.removeRecipe(<mekanism:dust>.definition.makeStack(i));
}

crusher.removeRecipe(<mekanism:otherdust:1>);