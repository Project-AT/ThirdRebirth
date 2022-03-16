#priority 5
#modloaded atutils

import crafttweaker.item.IIngredient;

import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Utils.artisanUtils;

RecipeUtils.recipeTweak(false, <modularmachinery:blockcasing:5>, [
    [<modularmachinery:blockcasing>,<ore:circuitBasic>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry:1>, [
    [<modularmachinery:blockcasing>,<ore:circuitElite>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry:2>, [
    [<modularmachinery:blockcasing>,<ore:circuitUltimate>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcasing:5>, [
    [<contenttweaker:germanium_integrated_circuit_board>,<modularmachinery:blockcasing>,<contenttweaker:germanium_integrated_circuit_board>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockcircuitry>, [
    [<modularmachinery:blockcasing>,<ore:circuitAdvanced>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:3>, [
    [null,<ore:gearTough>,null],
    [<ore:gearTough>,<modularmachinery:blockcasing>,<ore:gearTough>],
    [null,<ore:gearTough>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyinputhatch>, [
    [null,<ore:ingotLead>,null],
    [<ore:ingotCopper>,<modularmachinery:blockcasing>,<ore:ingotCopper>],
    [null,<ore:ingotLead>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyoutputhatch>, [
    [null,<ore:ingotCopper>,null],
    [<ore:ingotLead>,<modularmachinery:blockcasing>,<ore:ingotLead>],
    [null,<ore:ingotCopper>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyinputhatch:1>, [
    [<ore:ingotElectrum>,<modularmachinery:blockenergyinputhatch>,<ore:ingotElectrum>],
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyoutputhatch:1>, [
    [<ore:ingotElectrum>,<modularmachinery:blockenergyoutputhatch>,<ore:ingotElectrum>],
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyinputhatch:2>, [
    [<ore:ingotConstantan>,<modularmachinery:blockenergyinputhatch:1>,<ore:ingotConstantan>],
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyoutputhatch:2>, [
    [<ore:ingotConstantan>,<modularmachinery:blockenergyoutputhatch:1>,<ore:ingotConstantan>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyinputhatch:1>, [
    [null,<ore:ingotLead>,<ore:ingotElectrum>],
    [<ore:ingotCopper>,<modularmachinery:blockcasing>,<ore:ingotCopper>],
    [<ore:ingotElectrum>,<ore:ingotLead>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyoutputhatch:1>, [
    [null,<ore:ingotCopper>,<ore:ingotElectrum>],
    [<ore:ingotLead>,<modularmachinery:blockcasing>,<ore:ingotLead>],
    [<ore:ingotElectrum>,<ore:ingotCopper>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyinputhatch:2>, [
    [<ore:ingotConstantan>,<ore:ingotLead>,<ore:ingotElectrum>],
    [<ore:ingotCopper>,<modularmachinery:blockcasing>,<ore:ingotCopper>],
    [<ore:ingotElectrum>,<ore:ingotLead>,<ore:ingotConstantan>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockenergyoutputhatch:2>, [
    [<ore:ingotConstantan>,<ore:ingotCopper>,<ore:ingotElectrum>],
    [<ore:ingotLead>,<modularmachinery:blockcasing>,<ore:ingotLead>],
    [<ore:ingotElectrum>,<ore:ingotCopper>,<ore:ingotConstantan>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch>, [
    [null,<ore:blockGlass>,null],
    [<ore:blockGlass>,<modularmachinery:blockcasing>,<ore:blockGlass>],
    [null,<ore:blockGlass>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch>, [
    [<ore:blockGlass>,null,<ore:blockGlass>],
    [null,<modularmachinery:blockcasing>,null],
    [<ore:blockGlass>,null,<ore:blockGlass>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:1>, [
    [<ore:plateIron>,<modularmachinery:blockfluidinputhatch>,<ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:1>, [
    [<ore:plateIron>,<modularmachinery:blockfluidoutputhatch>,<ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:2>, [
    [<ore:plateSteel>,<modularmachinery:blockfluidinputhatch:1>,<ore:plateSteel>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:2>, [
    [<ore:plateSteel>,<modularmachinery:blockfluidoutputhatch:1>,<ore:plateSteel>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockfluidinputhatch:3>, [
    [<modularmachinery:blockfluidinputhatch:2>,<ore:ingotTough>]
]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockfluidoutputhatch:3>, [
    [<modularmachinery:blockfluidoutputhatch:2>,<ore:ingotTough>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:1>, [
    [<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>],
    [<ore:blockGlass>,<modularmachinery:blockcasing>,<ore:blockGlass>],
    [null,<ore:blockGlass>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:1>, [
    [null,<ore:blockGlass>,null],
    [<ore:blockGlass>,<modularmachinery:blockcasing>,<ore:blockGlass>],
    [<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:2>, [
    [<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>],
    [<ore:blockGlass>,<modularmachinery:blockcasing>,<ore:blockGlass>],
    [<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:2>, [
    [<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>],
    [<ore:blockGlass>,<modularmachinery:blockcasing>,<ore:blockGlass>],
    [<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:3>, [
    [<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>],
    [<ore:blockGlass>,<modularmachinery:blockcasing:4>,<ore:blockGlass>],
    [<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:3>, [
    [<ore:plateIron>,<ore:blockGlass>,<ore:plateIron>],
    [<ore:blockGlass>,<modularmachinery:blockcasing:4>,<ore:blockGlass>],
    [<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:4>, [
    [null,<ore:plateIron>,null],
    [<ore:plateIron>,<modularmachinery:blockfluidinputhatch:3>,<ore:plateIron>],
    [null,<ore:plateIron>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:4>, [
    [null,<ore:plateIron>,null],
    [<ore:plateIron>,<modularmachinery:blockfluidoutputhatch:3>,<ore:plateIron>],
    [null,<ore:plateIron>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:5>, [
    [null,<ore:plateTough>,null],
    [<ore:plateTough>,<modularmachinery:blockfluidinputhatch:4>,<ore:plateTough>],
    [null,<ore:plateTough>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:5>, [
    [null,<ore:plateTough>,null],
    [<ore:plateTough>,<modularmachinery:blockfluidoutputhatch:4>,<ore:plateTough>],
    [null,<ore:plateTough>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:6>, [
    [null,<ore:ingotExtreme>,null],
    [<ore:ingotExtreme>,<modularmachinery:blockfluidinputhatch:5>,<ore:ingotExtreme>],
    [null,<ore:ingotExtreme>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:6>, [
    [null,<ore:ingotExtreme>,null],
    [<ore:ingotExtreme>,<modularmachinery:blockfluidoutputhatch:5>,<ore:ingotExtreme>],
    [null,<ore:ingotExtreme>,null]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidinputhatch:5>, [
    [<ore:plateIron>,<ore:plateTough>,<ore:plateIron>],
    [<ore:plateTough>,<modularmachinery:blockfluidinputhatch:3>,<ore:plateTough>],
    [<ore:plateIron>,<ore:plateTough>,<ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockfluidoutputhatch:5>, [
    [<ore:plateIron>,<ore:plateTough>,<ore:plateIron>],
    [<ore:plateTough>,<modularmachinery:blockfluidoutputhatch:3>,<ore:plateTough>],
    [<ore:plateIron>,<ore:plateTough>,<ore:plateIron>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:1> * 2, [
    [<modularmachinery:itemmodularium>, <ore:fenceSteel>, <modularmachinery:itemmodularium>],
    [<ore:fenceSteel>, null, <ore:fenceSteel>],
    [<modularmachinery:itemmodularium>, <ore:fenceSteel>, <modularmachinery:itemmodularium>]
]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:4> * 4, [
    [<ore:ingotTough>, <modularmachinery:blockcasing>, <ore:ingotTough>],
    [<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
    [<ore:ingotTough>, <modularmachinery:blockcasing>, <ore:ingotTough>]
]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk1"}),
    inputPattern(["ABC", "LLL"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:ingotManasteel>)
        .with("C", <ore:quartzMana>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 13, <ore:artisansTSquare> : 12} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", false, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk2"}),
    inputPattern(["AB"])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk1"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 26, <ore:artisansTSquare> : 24} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk3"}),
    inputPattern(["AB"])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk2"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 39, <ore:artisansTSquare> : 35} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk4"}),
    inputPattern(["AB"])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk3"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 78, <ore:artisansTSquare> : 69} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk5"}),
    inputPattern(["AB"])
        .with("A", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fmph_mk4"}))
        .with("B", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 143, <ore:artisansTSquare> : 121} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:small_turbine"}),
    inputPattern([" D ", "ABC", "LLL"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:plateIron>)
        .with("C", <ore:ingotBronze>)
        .with("D", <ore:dustRedstone>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 11, <ore:artisansTSquare> : 13} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:small_thermal_boilers"}),
    inputPattern(["ABC", "LLL"])
        .with("A", <modularmachinery:itemmodularium>)
        .with("B", <ore:plateIron>)
        .with("C", <ore:coal> | <ore:charcoal>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 12, <ore:artisansTSquare> : 12} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("designer", true, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:exorcism"}),
    inputPattern(["ABA", "LLL"])
        .with("A", <ore:quartzMana>)
        .with("B", <ore:blockQuartzMana>)
        .with("L", <artisanworktables:design_pattern>).get()
, {<ore:artisansPencil> : 12, <ore:artisansTSquare> : 12} as int[IIngredient]);

artisanUtils.RecipeTweakWithTools("engineer", true, <modularmachinery:blockbunker>,
    inputPattern(["ABA", "C C", "ACA"])
        .with("A", <ore:rodSteel>)
        .with("B", <minecraft:iron_trapdoor>)
        .with("C", <modularmachinery:itemmodularium>).get()
, {<ore:artisansSpanner> : 14} as int[IIngredient]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:2> * 2, 
    inputPatternGet(["ABA", "B B", "ABA"], {
        "A" : <ore:rodSteel>,
        "B" : <modularmachinery:itemmodularium>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing:4> * 4, 
    inputPatternGet(["ABA", "B B", "ABA"], {
        "A" : <ore:ingotTough>,
        "B" : <modularmachinery:itemmodularium>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockcasing> * 4, 
    inputPatternGet([" B", "B B", " B"], {
        "B" : <modularmachinery:itemmodularium>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus>, 
    inputPatternGet(["A", "B"], {
        "A" : <extrautils2:minichest>,
        "B" : <modularmachinery:blockcasing>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus>, 
    inputPatternGet(["B", "A"], {
        "A" : <extrautils2:minichest>,
        "B" : <modularmachinery:blockcasing>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:2>, 
    inputPatternGet(["CBC", " A", "CDC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:2>, 
    inputPatternGet(["CDC", " A", "CBC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:3>, 
    inputPatternGet(["CBC", "EA", "CDC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>,
        "E" : <ore:ingotTough>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:3>, 
    inputPatternGet(["CDC", "EA", "CBC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>,
        "E" : <ore:ingotTough>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:1>, 
    inputPatternGet([" B", "AC"], {
        "A" : <extrautils2:minichest>,
        "B" : <modularmachinery:blockcasing>,
        "C" : <immersiveengineering:wooden_device0>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:1>, 
    inputPatternGet([" B", "CA"], {
        "A" : <extrautils2:minichest>,
        "B" : <modularmachinery:blockcasing>,
        "C" : <immersiveengineering:wooden_device0>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:3>, 
    inputPatternGet(["CBC", " A", "CDC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing:4>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:3>, 
    inputPatternGet(["CDC", " A", "CBC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing:4>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:1>, 
    inputPatternGet(["AAA", "ABA", "AAA"], {
        "A" : <ore:plankTreatedWood>,
        "B" : <modularmachinery:blockoutputbus>,
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:1>, 
    inputPatternGet(["AAA", "ABA", "AAA"], {
        "A" : <ore:plankTreatedWood>,
        "B" : <modularmachinery:blockinputbus>,
}));

RecipeUtils.recipeTweak(false, <modularmachinery:blockoutputbus:1>, 
    [[<modularmachinery:blockoutputbus>, <immersiveengineering:wooden_device0>]]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockinputbus:1>, 
    [[<modularmachinery:blockinputbus>, <immersiveengineering:wooden_device0>]]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:2>, 
    inputPatternGet(["A A", " B", "A A"], {
        "A" : <ore:plateIron>,
        "B" : <modularmachinery:blockinputbus:1>,
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:2>, 
    inputPatternGet(["A A", " B", "A A"], {
        "A" : <ore:plateIron>,
        "B" : <modularmachinery:blockoutputbus:1>,
}));

RecipeUtils.recipeTweak(false, <modularmachinery:blockoutputbus:3>, 
    [[<modularmachinery:blockoutputbus:2>, <ore:ingotTough>]]);

RecipeUtils.recipeTweak(false, <modularmachinery:blockinputbus:3>, 
    [[<modularmachinery:blockinputbus:2>, <ore:ingotTough>]]);

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:4>, 
    inputPatternGet(["ABA"], {
        "A" : <ore:ingotTough>,
        "B" : <modularmachinery:blockoutputbus:3>,
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:4>, 
    inputPatternGet(["ABA"], {
        "A" : <ore:ingotTough>,
        "B" : <modularmachinery:blockinputbus:3>,
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockinputbus:4>, 
    inputPatternGet(["CBC", "EAE", "CDC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing:4>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>,
        "E" : <ore:ingotTough>
}));

RecipeUtils.recipeTweak(true, <modularmachinery:blockoutputbus:4>, 
    inputPatternGet(["CDC", "EAE", "CBC"], {
        "B" : <extrautils2:minichest>,
        "A" : <modularmachinery:blockcasing:4>,
        "C" : <ore:plateIron>,
        "D" : <immersiveengineering:wooden_device0>,
        "E" : <ore:ingotTough>
}));

for stack in <modularmachinery:blockoutputbus>.definition.subItems {
    RecipeUtils.recipeTweak(false, <modularmachinery:blockinputbus>.definition.makeStack(stack.metadata), [[stack]]);
    RecipeUtils.recipeTweak(false, stack, [[<modularmachinery:blockinputbus>.definition.makeStack(stack.metadata)]]);
}

for stack in <modularmachinery:blockenergyoutputhatch>.definition.subItems {
    RecipeUtils.recipeTweak(false, <modularmachinery:blockenergyinputhatch>.definition.makeStack(stack.metadata), [[stack]]);
    RecipeUtils.recipeTweak(false, stack, [[<modularmachinery:blockenergyinputhatch>.definition.makeStack(stack.metadata)]]);
}

for stack in <modularmachinery:blockfluidinputhatch>.definition.subItems {
    RecipeUtils.recipeTweak(false, <modularmachinery:blockfluidoutputhatch>.definition.makeStack(stack.metadata), [[stack]]);
    RecipeUtils.recipeTweak(false, stack, [[<modularmachinery:blockfluidoutputhatch>.definition.makeStack(stack.metadata)]]);
}