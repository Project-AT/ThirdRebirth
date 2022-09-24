#priority 5
#modloaded trutils
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

import scripts.CraftTweaker.Mods.ModularMachinery.machine.electronicAssembly;

artisanUtils.RecipeTweakWithTools("basic", true, <immersiveengineering:stone_decoration:1> * 3, [
    [<ore:ingotBrickNether>, <contenttweaker:refractory_brick>, <ore:ingotBrickNether>],
    [<contenttweaker:refractory_brick>, <buildinggadgets:constructionpaste>, <contenttweaker:refractory_brick>],
    [<ore:ingotBrickNether>, <contenttweaker:refractory_brick>, <ore:ingotBrickNether>]
], {<ore:artisansTrowel> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <immersiveengineering:stone_decoration> * 3, [
    [<ore:sandstone>, <contenttweaker:refractory_brick>, <ore:sandstone>],
    [<contenttweaker:refractory_brick>, <buildinggadgets:constructionpaste>, <contenttweaker:refractory_brick>],
    [<ore:sandstone>, <contenttweaker:refractory_brick>, <ore:sandstone>]
], {<ore:artisansTrowel> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <immersiveengineering:stone_decoration:10> * 2, [
    [<ore:ingotBrick>, <contenttweaker:refractory_brick>, <ore:ingotBrick>],
    [<contenttweaker:refractory_brick>, <buildinggadgets:constructionpaste>, <contenttweaker:refractory_brick>],
    [<ore:ingotBrick>, <contenttweaker:refractory_brick>, <ore:ingotBrick>]
], {<ore:artisansTrowel> : 2} as int[IIngredient]);

electronicAssembly.addRecipe("engineer", true, <immersiveengineering:material:26> * 3, [
    [null, <ore:blockGlass>],
    [<ore:blockGlass>, <ore:wireCopper>, <ore:blockGlass>],
    [<minecraft:redstone>, <ore:plateNickel>, <minecraft:redstone>]
], {<ore:artisansDriver> : 3, <ore:artisansSolderer> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device1:6> * 12, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [null, null, null],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
], {<ore:artisansHammer> : 6} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("blacksmith", true, <immersiveengineering:metal_device0:4>, [
    [<ore:slabSheetmetalIron>, <ore:slabSheetmetalIron>, <ore:slabSheetmetalIron>],
    [<ore:blockSheetmetalIron>, null, <ore:blockSheetmetalIron>],
    [<ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>]
], {<ore:artisansHammer> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("basic", true, <libvulpes:productfan:6>, [
    [<ore:plateSteel>, null, <ore:plateSteel>],
    [null, <ore:rodSteel>],
    [<ore:plateSteel>, null, <ore:plateSteel>]
], {<ore:artisansHammer> : 2, <ore:artisansDriver> : 2} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("carpenter", true, <immersiveengineering:wooden_device0:2>, [
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<minecraft:crafting_table>, <ore:plateSteel>, <ore:fenceTreatedWood>],
    [<ore:fenceTreatedWood>, <ore:plateSteel>, <ore:fenceTreatedWood>]
], {<ore:artisansHandsaw> : 5, <ore:artisansSpanner> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device0:2>, 
    inputPattern(["KLK", "GQG", "FRF"])
        .with("K", <ore:ingotConstantan>)
        .with("L", <ore:ingotAluminum>)
        .with("G", <ore:ingotSteel>)
        .with("Q", <ore:blockLead>)
        .with("F", <ore:plankTreatedWood>)
        .with("R", <ore:blockRedstone>).get()
, {<ore:artisansSpanner> : 3, <ore:artisansDriver> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device0:1>, 
    inputPattern(["TKT", "HQH", "FRF"])
        .with("T", <ore:ingotCopper>)
        .with("K", <ore:ingotConstantan>)
        .with("H", <ore:ingotElectrum>)
        .with("Q", <ore:ingotLead>)
        .with("F", <ore:plankTreatedWood>)
        .with("R", <ore:blockRedstone>).get()
, {<ore:artisansDriver> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device0>, 
    inputPattern(["ITI", "IQI", "FRF"])
        .with("I", <ore:ingotIron>)
        .with("T", <ore:ingotCopper>)
        .with("G", <ore:plateSteel>)
        .with("Q", <ore:ingotLead>)
        .with("F", <ore:plankTreatedWood>)
        .with("R", <ore:dustRedstone>).get()
, {<ore:artisansDriver> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device1:5>,
    inputPattern(["GXG", "BZB", "FTF"])
        .with("G", <ore:ingotSteel>)
        .with("X", <immersiveengineering:connector:2>)
        .with("B", <ore:blockGlass>)
        .with("Z", <ore:electronTube>)
        .with("F", <ore:plankTreatedWood>)
        .with("T", <immersiveengineering:metal_decoration0>).get()
, {<ore:artisansSpanner> : 3, <ore:artisansDriver> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device1:1>, 
    inputPattern(["GQG", "QXQ", "GTG"])
        .with("G", <ore:ingotSteel>)
        .with("Q", <ore:plateLead>)
        .with("X", <ore:coilCopper>)
        .with("T", <ore:ingotCopper>).get()
, {<ore:artisansSpanner> : 3, <ore:artisansDriver> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device0:6>,
    inputPattern(["GTG", "T T", "GTG"])
        .with("G", <ore:plateSteel>)
        .with("T", <ore:barsIron>).get()
, {<ore:artisansSpanner> : 3, <ore:artisansDriver> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_device1>,
    inputPattern(["GGG", "GSG", "GWG"])
        .with("G", <ore:plateSteel>)
        .with("S", <ore:fanSteel>)
        .with("W", <immersiveengineering:metal_device1:1>).get()
, {<ore:artisansSpanner> : 5, <ore:artisansDriver> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_decoration0:3> * 2, 
    RecipeUtils.createCrossWithCore(<ore:ingotBronze>, <ore:plateIron>, <ore:dustRedstone>)
, {<ore:artisansSpanner> : 5, <ore:artisansDriver> : 5} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_decoration0:4> * 2, 
    inputPattern(["ILI", "TCT", "ILI"])
        .with("I", <ore:plateIron>)
        .with("L", <immersiveengineering:material:8>)
        .with("T", <ore:ingotCopper>)
        .with("C", <ore:gearBronze>).get()
, {<ore:artisansSpanner> : 5, <ore:artisansDriver> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:metal_decoration0:5> * 2, 
    inputPattern(["GLG", "DCD", "GLG"])
        .with("G", <ore:plateSteel>)
        .with("L", <immersiveengineering:material:9>)
        .with("D", <ore:ingotSteel>)
        .with("C", <ore:gearElectrum>).get()
, {<ore:artisansSpanner> : 5, <ore:artisansDriver> : 8} as int[IIngredient]);

electronicAssembly.addRecipe("engineer", true, <immersiveengineering:material:9>, 
    inputPattern(["  G", " Q ", "G"])
        .with("G", <ore:plateSteel>)
        .with("Q", <ore:ingotBronze>).get()
, {<ore:artisansSpanner> : 3} as int[IIngredient]);

electronicAssembly.addRecipe("engineer", true, <immersiveengineering:material:8>, 
    inputPattern(["  T", " C ", "T"])
        .with("T", <ore:plateIron>)
        .with("C", <ore:ingotCopper>).get()
, {<ore:artisansSpanner> : 3} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}),
    inputPattern([" N ", "ICS", "LLL"])
        .with("N", <ore:ingotNickel>)
        .with("I", <ore:ingotIron>)
        .with("C", <ore:ingotCopper>)
        .with("S", <ore:ingotSteel>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 10, <ore:artisansTSquare> :10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <immersiveengineering:blueprint>.withTag({blueprint: "molds"}),
    inputPattern(["QSC", "ISI", "LLL"])
        .with("Q", <ore:plateLead>)
        .with("S", <ore:plateSteel>)
        .with("I", <ore:plateIron>)
        .with("C", <ore:plateCopper>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 10, <ore:artisansTSquare> :10} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <immersiveengineering:blueprint>.withTag({blueprint: "bullet"}),
    inputPattern(["HHH", "CQK", "LLL"])
        .with("H", <ore:gunpowder>)
        .with("K", <ore:ingotConstantan>)
        .with("Q", <ore:ingotLead>)
        .with("C", <ore:ingotCopper>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 10, <ore:artisansTSquare> :10} as int[IIngredient]);

artisanUtils.RecipeTweakWithLiquid("basic", false, <immersiveengineering:treated_wood>, [[<ore:plankWood>]], <liquid:creosote> * 125);
artisanUtils.RecipeTweakWithLiquid("carpenter", false, <immersiveengineering:treated_wood>, [[<ore:plankWood>]], <liquid:creosote> * 100);

electronicAssembly.addRecipe("engineer", true, <immersiveengineering:material:27> * 2,
    inputPattern(["QWQ", "EQE", "SSS"])
        .with("Q", <ore:wireCopper>)
        .with("W", <embers:archaic_circuit>)
        .with("S", <contenttweaker:insulating_substrate>)
        .with("E", <ore:electronTube>).get()
, {<ore:artisansSolderer> : 23});

electronicAssembly.addRecipe("engineer", true, <immersiveengineering:material:27>,
    inputPattern(["Q Q", "EQE", "SSS"])
        .with("Q", <ore:wireCopper>)
        .with("W", <embers:archaic_circuit>)
        .with("S", <contenttweaker:insulating_substrate>)
        .with("E", <ore:electronTube>).get()
, {<ore:artisansSolderer> : 21});

artisanUtils.RecipeTweakWithTools("engineer", true, <immersiveengineering:stone_decoration:2>, [
    [null, <ore:plateSteel>],
    [<contenttweaker:glazed_refractory_brick>, <immersiveengineering:stone_decoration:1>, <contenttweaker:glazed_refractory_brick>],
    [null, <contenttweaker:glazed_refractory_brick>]
], {<ore:artisansHammer> : 10, <ore:artisansTrowel> : 15} as int[IIngredient]);

RecipeBuilder.get("carpenter")
    .setShapeless([<ore:scaffoldingTreatedWood>])
    .addTool(<ore:artisansHandsaw>, 1)
    .addTool(<ore:artisansFramingHammer>, 1)
    .addOutput(<immersiveengineering:treated_wood_slab>)
    .setExtraOutputOne(<immersiveengineering:material>, 1.0)
    .create();

artisanUtils.RecipeTweakWithTools("carpenter", true, <immersiveengineering:material> * 5, [
    [<ore:plankTreatedWood>],
    [<ore:plankTreatedWood>]
], {<ore:artisansHandsaw> : 2} as int[IIngredient]);