#priority 10

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.dropt.Dropt;


var woods as string[] = [];

for item in <ore:logWood>.items{
    var name = item.commandString.replaceAll("[<>]","") as string;
    woods += name;
}

Dropt.list("log_wood")
  .add(Dropt.rule()
      .matchBlocks(woods)
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "axe;0;-1")
      )
      .addDrop(Dropt.drop())
);