#priority 5
#modloaded trutils

import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IIngredient;

import mods.mekatweaker.InfuserType;
import mods.mekanism.infuser;

//信素 龙素 晶素
var types as string[] = ["Signalum", "Crystaltine"];

for type in types {
    InfuserType.addTypeObject(oreDict.get("ingot" + type), type, 10);
    InfuserType.addTypeObject(oreDict.get("dust" + type), type, 10);
    InfuserType.addTypeObject(itemUtils.getItem("contenttweaker:compressed_" + type.toLowerCase()), type, 40);
}

var nondustTypes as string[] = ["Draconium"];

for type in nondustTypes {
    InfuserType.addTypeObject(oreDict.get("ingot" + type), type, 10);
    InfuserType.addTypeObject(itemUtils.getItem("contenttweaker:compressed_" + type.toLowerCase()), type, 40);
}

InfuserType.addTypeObject(<embers:shard_ember>, "ember", 10);
InfuserType.addTypeObject(<embers:crystal_ember>, "ember", 60);
InfuserType.addTypeObject(<contenttweaker:ember_crystal_block>, "ember", 540);

infuser.removeRecipe(<ore:itemEnrichedAlloy>);
infuser.addRecipe("SIGNALUM", 20, <ore:ingotFerroboron>, <ore:itemEnrichedAlloy>.firstItem);
infuser.removeRecipe(<ore:alloyElite>);
infuser.addRecipe("CRYSTALTINE", 10, <ore:itemEnrichedAlloy>, <ore:alloyElite>.firstItem);
infuser.removeRecipe(<ore:alloyUltimate>);
infuser.addRecipe("DRACONIUM", 10, <ore:alloyElite>, <ore:alloyUltimate>.firstItem);
infuser.removeRecipe(<ore:dustRefinedObsidian>);
infuser.addRecipe("CRYSTALTINE", 10, <ore:dustObsidian>, <ore:dustRefinedObsidian>.firstItem);
infuser.addRecipe("REDSTONE", 80, <ore:ingotSmithingIron>, <ore:ingotRedstoneAlloy>.firstItem);
infuser.addRecipe("DIAMOND", 10, <ore:ingotPlatinum>, <ore:ingotCrystallineAlloy>.firstItem);
infuser.addRecipe("OBSIDIAN", 40, <ore:plateAdvanced>, <deepmoblearning:soot_covered_plate>);
infuser.addRecipe("EMBER", 10, <ore:ingotRoseGold>, <ore:ingotDawnstone>.firstItem);
infuser.addRecipe("EMBER", 40, <ore:ingotSilver>, <ore:ingotEnergeticSilver>.firstItem);
infuser.addRecipe("TIN", 1, <ore:wireCopper>, <contenttweaker:tinned_copper_wire>);
infuser.removeRecipe(<mekanism:otherdust:1>);
infuser.addRecipe("CARBON", 10, <mekanism:enrichediron>, <ore:dustSteel>.firstItem);
infuser.removeRecipe(<mekanism:ingot:2>);
infuser.addRecipe("TIN", 10, <ore:ingotCopper>, <ore:ingotBronze>.firstItem);
infuser.removeRecipe(<ore:circuitBasic>);