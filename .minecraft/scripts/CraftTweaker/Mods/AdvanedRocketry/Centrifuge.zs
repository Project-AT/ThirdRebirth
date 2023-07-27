#priority 5
#modloaded trutils
import mods.advancedrocketry.RecipeTweaker;
import mods.advancedrocketry.RecipeBuilder;
import mods.advancedrocketry.RecipeRemover;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

function addRecipe(outpuItems as WeightedItemStack[], power as int, time as int, inputLiquids as ILiquidStack[]) {
    var machineName as string = "Centrifuge";
    var recipeBuilder as RecipeBuilder = RecipeTweaker.forMachine(machineName).builder();
    for liquid in inputLiquids {
        recipeBuilder.inputLiquid(liquid);
    }
    for item in outpuItems {
        recipeBuilder.outputItem(item);
    }
    recipeBuilder.timeRequired(time);
    recipeBuilder.power(power);
    recipeBuilder.maxOutputSize(1);
    recipeBuilder.build();
}

addRecipe([
    <enderio:block_holier_fog> * 1 % 20, <enderio:block_holier_fog> * 1 % 30, <enderio:block_holier_fog> % 50
], 500, 160, [<liquid:glowstone> * 1000]);