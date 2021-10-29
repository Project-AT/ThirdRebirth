#priority -5
#modloaded atutils

import mods.dropt.Dropt;

Dropt.list("BlockSteel")
    .add(Dropt.rule()
        .matchBlocks(["immersiveengineering:storage:8"])
        .addDrop(
            Dropt.drop().items([<thermalfoundation:storage_alloy>])
        )
);