#priority 20
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import scripts.grassUtils.StringHelper;

import mods.artisanworktables.builder.RecipeBuilder;

static tweakedRecipesAmount as int = 0;

/**
    name -> 工作台名
    isShaped -> 是否为有序配方
    out -> 输出
    input -> 输入，同工作台input （注意，需要二维数组（即使是无序））
 */
function RecipeTweak(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
    }
    recipes.remove(out.withAmount(1),true);
    if (isShaped) {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out).create();
    } else {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).addOutput(out).create();
    }
    tweakedRecipesAmount += 1;
}

/**
    name -> 工作台名
    isShaped -> 是否为有序配方
    out -> 输出
    input -> 输入，同工作台input （注意，需要二维数组（即使是无序））
    liquid -> 输入的流体
 */
function RecipeTweakWithLiquid(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], liquid as ILiquidStack) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
    }
    recipes.remove(out.withAmount(1),true);
    if (isShaped) {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out).setFluid(liquid).create();
    } else {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).setFluid(liquid).addOutput(out).create();
    }
    tweakedRecipesAmount += 1;
}

/**
    name -> 工作台名
    isShaped -> 是否为有序配方
    out -> 输出
    input -> 输入，同工作台input （注意，需要二维数组（即使是无序））
    tools -> 需要输入的工具，map类型，key为工具value为消耗工具的耐久
 */
function RecipeTweakWithTools(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], tools as int[IIngredient]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
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
    tweakedRecipesAmount += 1;
}

/**
    name -> 工作台名
    isShaped -> 是否为有序配方
    out -> 输出
    input -> 输入，同工作台input （注意，需要二维数组（即使是无序））
    liquid -> 输入的流体
    tools -> 需要输入的工具，map类型，key为工具value为消耗工具的耐久
 */
function RecipeTweakWithAll(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], liquid as ILiquidStack, tools as int[IIngredient]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
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
    tweakedRecipesAmount += 1;
}

/**
    等同于RecipeTweak(), 但是不会删除默认工作台配方
 */
function RecipeTweak_(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
    }
    if (isShaped) {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out).create();
    } else {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).addOutput(out).create();
    }
    tweakedRecipesAmount += 1;
}

/**
    等同于RecipeTweakWithLiquid(), 但是不会删除默认工作台配方
 */
function RecipeTweakWithLiquid_(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], liquid as ILiquidStack) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
    }
    if (isShaped) {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShaped(input).addOutput(out).setFluid(liquid).create();
    } else {
        RecipeBuilder.get(name).setName(recipeName).setMaximumTier(1).setShapeless(input[0]).setFluid(liquid).addOutput(out).create();
    }
    tweakedRecipesAmount += 1;
}

/**
    等同于RecipeTweakWithTools(), 但是不会删除默认工作台配方
 */
function RecipeTweakWithTools_(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], tools as int[IIngredient]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
    }
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
    tweakedRecipesAmount += 1;
}

/**
    等同于RecipeTweakWithAll(), 但是不会删除默认工作台配方
 */
function RecipeTweakWithAll_(name as string, isShaped as bool, out as IItemStack, input as IIngredient[][], liquid as ILiquidStack, tools as int[IIngredient]) {
    var recipeName as string = StringHelper.getItemNameWithUnderline(out) + tweakedRecipesAmount;
    if (out.hasTag) {
        recipeName ~= ("_withtag_" ~ tweakedRecipesAmount);
    }
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
    tweakedRecipesAmount += 1;
}