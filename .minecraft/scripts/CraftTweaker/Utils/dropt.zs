#priority -5
#modloaded trutils

import mods.dropt.Dropt;

Dropt.list("BlockSteel")
    .add(Dropt.rule()
        .matchBlocks(["immersiveengineering:storage:8"])
        .addDrop(
            Dropt.drop().items([<thermalfoundation:storage_alloy>])
        )
    );

Dropt.list("BarkWisdomwood")
    .add(Dropt.rule()
        .matchBlocks(["wizardry:wisdom_wood_log:*"])
        .matchHarvester(
            Dropt.harvester()
                .type("PLAYER")
                .mainHand(<ore:knife>.items)
        )
        .addDrop(
            Dropt.drop().items([<contenttweaker:bark_wisdomwood>], Dropt.range(3, 5))
        )
    );