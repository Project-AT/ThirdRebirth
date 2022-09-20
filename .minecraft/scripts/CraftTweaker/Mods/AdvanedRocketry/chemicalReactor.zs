#priority 5
#modloaded trutils
import mods.advancedrocketry.RecipeTweaker;
import mods.advancedrocketry.RecipeBuilder;
import mods.advancedrocketry.RecipeRemover;
import crafttweaker.liquid.ILiquidStack;

function addRecipe(outputLiquids as ILiquidStack[], power as int, time as int, inputLiquids as ILiquidStack[]) {
    var machineName as string = "ChemicalReactor";
    var recipeBuilder as RecipeBuilder = RecipeTweaker.forMachine(machineName).builder();
    for liquid in inputLiquids {
        recipeBuilder.inputLiquid(liquid);
    }
    for liquid in outputLiquids {
        recipeBuilder.outputLiquid(liquid.weight(1.0));
    }
    recipeBuilder.timeRequired(time);
    recipeBuilder.power(power);
    recipeBuilder.build();
}

function removeRecipe(outputLiquids as ILiquidStack[]) {
    var machineName as string = "ChemicalReactor";
    var recipeRemover as RecipeRemover = RecipeTweaker.forMachine(machineName).remover();
    recipeRemover.addOutputs(outputLiquids);
    recipeRemover.remove();
}

removeRecipe([<liquid:rocketfuel>]);

addRecipe([<liquid:diborane> * 5000], 400, 20, [<liquid:boron> * 114, <liquid:hydrogen> * 1500]);
addRecipe([<liquid:ammonia> * 500], 400, 20, [<liquid:nitrogen> * 250, <liquid:hydrogen> * 750]);
addRecipe([<liquid:water> * 250], 400, 20, [<liquid:oxygen> * 250, <liquid:hydrogen> * 500]);
addRecipe([<liquid:heavy_water> * 250], 400, 20, [<liquid:oxygen> * 250, <liquid:deuterium> * 500]);
addRecipe([<liquid:hydrofluoric_acid> * 250], 400, 20, [<liquid:fluorine> * 250, <liquid:hydrogen> * 250]);
addRecipe([<liquid:lif> * 72], 400, 20, [<liquid:fluorine> * 250, <liquid:lithium> * 72]);
addRecipe([<liquid:sulfur_dioxide> * 500], 400, 20, [<liquid:sulfur> * 333, <liquid:oxygen> * 500]);
addRecipe([<liquid:bef2> * 72], 400, 20, [<liquid:fluorine> * 250, <liquid:beryllium> * 72]);
addRecipe([<liquid:sulfur_trioxide> * 500], 400, 20, [<liquid:sulfur_dioxide> * 500, <liquid:oxygen> * 250]);
addRecipe([<liquid:sulfuric_acid> * 500], 400, 20, [<liquid:sulfur_trioxide> * 250, <liquid:water> * 250]);
addRecipe([<liquid:ethanol> * 2000], 400, 20, [<liquid:sugar> * 72, <liquid:water> * 500]);
addRecipe([<liquid:sic_vapor> * 4000], 400, 20, [<liquid:coal> * 1000, <liquid:quartz> * 1000]);
addRecipe([<liquid:sulfuric_acid> * 1000], 400, 20, [<liquid:sulfur> * 333, <liquid:steam> * 1000]);
addRecipe([<liquid:ethene> * 1000], 400, 20, [<liquid:lpg> * 1000, <liquid:sulfuric_acid> * 1000]);