#priority 0
#modloaded trutils
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.CommandUtils;
import crafttweaker.player.IPlayer;

val command as ZenCommand = ZenCommand.create("unlockallstages");
command.requiredPermissionLevel = 2;
command.execute = function(command, server, sender, args) {
    val player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    for stage in ALLSTAGES.getStageName() {
        player.addGameStage(stage);
    }
    sender.sendMessage(game.localize("et2.command.unlockallstages.success"));
};
command.register();