#priority -5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.dropt.Dropt;

val entity = <entity:familiarfauna:familiarfauna.snail>;

entity.addDrop(<harvestcraft:snailrawitem> % 100);

Dropt.list("BlockSteel")
    .add(Dropt.rule()
        .matchBlocks(["immersiveengineering:storage:8"])
        .addDrop(
            Dropt.drop().items([<thermalfoundation:storage_alloy>])
        )
    );
