#priority 20
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.StringHelper;

import mods.artisanworktables.builder.RecipeBuilder;

function RecipeTweak(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out);
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ out.tag.asString());
    }
    recipes.remove(out.withAmount(1),true);
    if (isShaped) {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out).create();
    } else {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).addOutput(out).create();
    }
}

function RecipeTweakWithLiquid(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], liquid as ILiquidStack) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out);
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ out.tag.asString());
    }
    recipes.remove(out.withAmount(1),true);
    if (isShaped) {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out).setFluid(liquid).create();
    } else {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).setFluid(liquid).addOutput(out).create();
    }
}

function RecipeTweakWithTools(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], tools as int[IIngredient]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out);
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ out.tag.asString());
    }
    recipes.remove(out.withAmount(1),true);
    if (isShaped) {
        var recipe as RecipeBuilder = RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out);
        for tool, damage in tools {
            recipe.addTool(tool, damage);
        }
        recipe.create();
    } else {
        var recipe as RecipeBuilder = RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).addOutput(out);
        for tool, damage in tools {
            recipe.addTool(tool, damage);
        }
        recipe.create();
    }
}

function RecipeTweakWithAll(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], liquid as ILiquidStack, tools as int[IIngredient]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out);
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ out.tag.asString());
    }
    recipes.remove(out.withAmount(1),true);
    if (isShaped) {
        var recipe as RecipeBuilder = RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out).setFluid(liquid);
        for tool, damage in tools {
            recipe.addTool(tool, damage);
        }
        recipe.create();
    } else {
        var recipe as RecipeBuilder = RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).addOutput(out).setFluid(liquid);
        for tool, damage in tools {
            recipe.addTool(tool, damage);
        }
        recipe.create();
    }
}