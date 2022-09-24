#priority 5
#modloaded trutils
import mods.advancedrocketry.RecipeTweaker;
import mods.advancedrocketry.RecipeBuilder;
import mods.advancedrocketry.RecipeRemover;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

function addRecipe(outpuItems as WeightedItemStack[], power as int, time as int, inputItems as IIngredient[]) {
    var machineName as string = "Crystallizer";
    var recipeBuilder as RecipeBuilder = RecipeTweaker.forMachine(machineName).builder();
    for item in inputItems {
        recipeBuilder.input(item);
    }
    for item in outpuItems {
        recipeBuilder.outputItem(item);
    }
    recipeBuilder.timeRequired(time);
    recipeBuilder.power(power);
    recipeBuilder.build();
}

addRecipe([
    <appliedenergistics2:material> * 3 % 100
], 20, 200, [<psi:material>, <ore:dustCertusQuartz>, <ore:dustNetherQuartz>]);

addRecipe([
    <ore:crystalPureCertusQuartz>.firstItem * 3 % 100
], 100, 100, [<appliedenergistics2:crystal_seed> * 3]);

addRecipe([
    <ore:crystalPureNetherQuartz>.firstItem * 3 % 100
], 100, 100, [<appliedenergistics2:crystal_seed:600> * 3]);

addRecipe([
    <ore:crystalPureFluix>.firstItem * 3 % 100
], 100, 100, [<appliedenergistics2:crystal_seed:1200> * 3]);