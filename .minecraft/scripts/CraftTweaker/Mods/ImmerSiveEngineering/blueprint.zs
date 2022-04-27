#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Blueprint;

var remove as IItemStack[] = [
    <immersiveengineering:material:8>, <immersiveengineering:material:9>,
    <immersiveengineering:material:26>, <immersiveengineering:material:27>
];

for Remove in remove {
    Blueprint.removeRecipe(Remove);
}