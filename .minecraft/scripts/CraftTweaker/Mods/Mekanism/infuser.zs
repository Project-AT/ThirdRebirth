#priority 5
#modloaded trutils

import crafttweaker.oredict.IOreDict;

import mods.mekatweaker.InfuserType;
import mods.mekanism.infuser;

//信素 龙石 晶素
var types as string[] = ["Signalum", "Draconium", "Crystaltine"];

for type in types {
    InfuserType.addTypeObject(oreDict.get("ingot" + type), type, 10);
    InfuserType.addTypeObject(oreDict.get("dust" + type), type, 10);
    InfuserType.addTypeObject(itemUtils.getItem("contenttweaker:compressed_" + type.toLowerCase()), type, 80);
}

infuser.removeRecipe(<ore:itemEnrichedAlloy>);
infuser.addRecipe("SIGNALUM", 10, <ore:ingotFerroboron>, <ore:itemEnrichedAlloy>.firstItem);
infuser.removeRecipe(<ore:alloyElite>);
infuser.addRecipe("CRYSTALTINE", 10, <ore:itemEnrichedAlloy>, <ore:alloyElite>.firstItem);
infuser.removeRecipe(<ore:alloyUltimate>);
infuser.addRecipe("DRACONIUM", 10, <ore:alloyElite>, <ore:alloyUltimate>.firstItem);
infuser.removeRecipe(<ore:dustRefinedObsidian>);
infuser.addRecipe("CRYSTALTINE", 10, <ore:dustObsidian>, <ore:dustRefinedObsidian>.firstItem);
infuser.addRecipe("REDSTONE", 40, <ore:ingotSmithingIron>, <ore:ingotRedstoneAlloy>.firstItem);
infuser.addRecipe("DIAMOND", 10, <ore:ingotGold>, <ore:ingotCrystallineAlloy>.firstItem);
infuser.addRecipe("OBSIDIAN", 40, <ore:plateAdvanced>, <deepmoblearning:soot_covered_plate>);