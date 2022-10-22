#priority 5
#modloaded trutils

import mods.trutils.WashingMachineRecipes;

/*
WashingMachineRecipes.addRecipe(recipeTime as int,
                                energyConsume as int,
                                fluidInput as IIngredient,
                                itemInput as IIngredient ,
                                itemOutput as IItemStack ,
                                fluidOutput as ILiquidStack);
*/

WashingMachineRecipes
    .addRecipe(10, 2000,
            <liquid:sulfuric_acid> * 25,
            <contenttweaker:contains_impurities_silicon_dust>,
            <contenttweaker:silicon_dust>,
            <liquid:infused_slag_slurry> * 25);


