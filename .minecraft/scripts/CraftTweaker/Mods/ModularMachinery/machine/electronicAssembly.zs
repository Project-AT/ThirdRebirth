#priority 10
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.grassUtils.StringHelper;
import scripts.grassUtils.Logger;
import scripts.CraftTweaker.Utils.artisanUtils;

zenClass electronicAssemblyRecipe {
    zenConstructor() {
        m_itemInput = [];
        m_oreInput = {};
        m_ingerdinetInput = [];
    }
    var m_machineName as string = "electronic_assembly_machine";
    static m_tweakedRecipesAmount as int = 0;
    var m_primer as RecipePrimer;
    var m_itemInput as IItemStack[];
    var m_ingerdinetInput as IIngredient[];
    var m_oreInput as int[IOreDictEntry];
    var m_itemOutput as IItemStack;

    function addInput(item as IIngredient) as electronicAssemblyRecipe {
        Logger.sendError("item error, IIngredient are not supported");
        m_ingerdinetInput += item;
        return this;
    }

    function addInput(item as IOreDictEntry, itemNum as int) as electronicAssemblyRecipe {
        for ore, num in m_oreInput {
            if (ore.name == item.name) {
                m_oreInput[ore] = num + itemNum;
                return this;
            }
        }
        m_oreInput[item]= itemNum;
        return this;
    }

    function addInput(item as IItemStack) as electronicAssemblyRecipe {
        for i, input in m_itemInput {
            if (input.withAmount(1).matches(item)) {
                m_itemInput[i] = input.withAmount(input.amount + item.amount);
                return this;
            }
        }
        m_itemInput += item;
    }

    function addInputItem(item as IIngredient) as electronicAssemblyRecipe {
        if (isNull(item)) {
            return this;
        }
        if (item instanceof IOreDictEntry) {
            var ore as IOreDictEntry = item;
            addInput(ore, item.amount);
        }
        else if (item instanceof IItemStack) {
            var itemstack as IItemStack = item;
            addInput(itemstack);
        }
        else {
            addInput(item);
        }
        return this;
    }

    function addInputItems(items as IIngredient[]) as electronicAssemblyRecipe {
        for item in items {
            addInputItem(item);
        }
        return this;
    }

    function addOutputItem(item as IItemStack) as electronicAssemblyRecipe {
        if (isNull(item)) {
            return this;
        }
        m_itemOutput = item;
        return this;
    }

    function build(recipeTime as int = 50, energyPerTickInput as int = 50) as electronicAssemblyRecipe {
        if (isNull(m_itemOutput)) {
            Logger.sendError("item error, no output");
        }
        var recipeName as string = m_machineName ~ "_" ~ StringHelper.getItemNameWithUnderline(m_itemOutput) ~ "_" ~ m_tweakedRecipesAmount;
        var m_primer as RecipePrimer = RecipeBuilder.newBuilder(recipeName, m_machineName, recipeTime);
        m_tweakedRecipesAmount += 1;

        for item in m_itemInput {
            m_primer.addItemInput(item);
        }

        for ore, num in m_oreInput {
            m_primer.addItemInput(ore, num);
        }

        m_primer.addItemOutput(m_itemOutput);
        m_primer.addItemOutput(m_itemOutput.withAmount(1));
        m_primer.setChance(0);
        m_primer.addEnergyPerTickInput(energyPerTickInput);
        m_primer.build();
        return this;
    }
}

function addRecipe(name as string, isShaped as bool, output as IItemStack, input as IIngredient[][], tools as int[IIngredient]) {
    var ear as electronicAssemblyRecipe = electronicAssemblyRecipe();
    if (isShaped) {
        for itemArray in input {
            ear.addInputItems(itemArray);
        }
    }
    else {
        ear.addInputItems(input[0]);
    }
    ear.addOutputItem(output);
    ear.build();
    artisanUtils.RecipeTweakWithTools(name, isShaped, output, input, tools);
}

electronicAssemblyRecipe()
    .addInputItems([<ore:dustBoron>, <ore:plateNickel>, <ore:plateGermanium>, <ore:wireAluminum>, <ore:wireAluminum>])
    .addOutputItem(<contenttweaker:ge_transistor>)
.build();