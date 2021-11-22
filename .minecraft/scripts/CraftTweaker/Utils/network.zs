#priority 20
#modloaded atutils

import mods.zenutils.NetworkHandler;

NetworkHandler.registerServer2ClientMessage("atutils.end_portal.spawn", function(player, byteBuf) {
    player.playSound("minecraft:block.end_portal.spawn", 1.0F, 1.0F);
});