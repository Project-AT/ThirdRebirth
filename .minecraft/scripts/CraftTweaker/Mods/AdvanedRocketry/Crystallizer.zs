#priority 5
#modloaded trutils
import mods.advancedrocketry.RecipeTweaker;
import mods.advancedrocketry.RecipeBuilder;
import mods.advancedrocketry.RecipeRemover;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

static machineName as string = "Crystallizer";

function addRecipe(outpuItems as WeightedItemStack[], power as int, time as int, inputItems as IIngredient[]) {
    var recipeBuilder as RecipeBuilder = RecipeTweaker.forMachine(machineName).builder();
    for item in inputItems {
        recipeBuilder.input(item);
    }
    for item in outpuItems {
        recipeBuilder.outputItem(item);
    }
    recipeBuilder.timeRequired(time);
    recipeBuilder.power(power);
    recipeBuilder.maxOutputSize(1);
    recipeBuilder.build();
}

function removeRecipe(outputItems as IItemStack[]) {
    var machineName as string = "Crystallizer";
    var recipeRemover as RecipeRemover = RecipeTweaker.forMachine(machineName).remover();
    recipeRemover.addOutputs(outputItems);
    recipeRemover.remove();
}

removeRecipe([<libvulpes:productgem>]);

addRecipe([
    <ore:crystalFluix>.firstItem * 3 % 100
], 50, 200, [<psi:material>, <ore:dustCertusQuartz>, <ore:dustNetherQuartz>]);

addRecipe([
    <ore:crystalPureCertusQuartz>.firstItem * 3 % 100
], 100, 300, [<appliedenergistics2:crystal_seed> * 3]);

addRecipe([
    <ore:crystalPureNetherQuartz>.firstItem * 3 % 100
], 100, 300, [<appliedenergistics2:crystal_seed:600> * 3]);

addRecipe([
    <ore:crystalPureFluix>.firstItem * 3 % 100
], 100, 600, [<appliedenergistics2:crystal_seed:1200> * 3]);

addRecipe([
    <ore:itemVibrantCrystal>.firstItem * 3 % 100
], 200, 600, [<botanianeedsit:mana_capacitor_terrasteel> * 3, <ore:dustEmerald> * 9]);

addRecipe([
    <ore:gemDilithium>.firstItem % 100
], 100, 300, [<ore:dustDilithium>]);