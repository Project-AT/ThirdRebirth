#priority 23
#modloaded atutils
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Player;
import mods.contenttweaker.World;
import mods.contenttweaker.IItemRightClick;


static stageItems as string[string] = {
    elixir_eyesight : "oreStage"
};

function createStageItem(name as string, stage as string){
    var item = VanillaFactory.createItem(name);
    item.maxStackSize = 1;
    item.rarity = "rare";
    item.itemRightClick = function(stack, world, player, hand){
        Commands.call("gamestage add "+ player.name +" "+ stage, player, world, false, true);
        Commands.call("title "+ player.name +" title {\"text\":" + game.localize("autotech.others.unlockedstage") + ",\"bold\":false}", player, world, false, true);//您已解锁新阶段
        Commands.call("playsound minecraft:ui.toast.challenge_complete player "+ player.name, player, world, false, true);
        stack.shrink(1);
        return "SUCCESS";
    };
    item.register();
}

for key in stageItems{
    createStageItem(key, stageItems[key]);
}
