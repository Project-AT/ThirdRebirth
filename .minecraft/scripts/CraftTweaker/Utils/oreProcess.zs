#priority -5
#modloaded atutils
#loader crafttweaker reloadableevents

import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.grassUtils.StringHelper;


var oreNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Dilithium"
];

var num as int = 0;
var machineNmae as string =  "high_energy_shredder";

for oreName in oreNames {
    var shard as IOreDictEntry = oreDict.get("shard" ~ oreName);
    var clamp as IOreDictEntry = oreDict.get("clump" ~ oreName);

    var ore as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var oreEnriched as IOreDictEntry = oreDict.get("oreEnriched" ~ oreName);
    var oreAuraInfusion as IOreDictEntry = oreDict.get("oreAuraInfusion" ~ oreName);
    var crystal as IOreDictEntry = oreDict.get("crystal" ~ oreName);

    var dust as IOreDictEntry = oreDict.get("dust" ~ oreName);
    var oreCrushedInfused as IOreDictEntry = oreDict.get("oreCrushedInfused" ~ oreName);
    var oreCrushedEnriched as IOreDictEntry = oreDict.get("oreCrushedEnriched" ~ oreName);
    

    if(!isNull(shard) && !shard.empty) {
        for itemIn in shard.items {
            if(itemIn.definition.owner != "contenttweaker") {
                mods.mekanism.chemical.injection.removeRecipe(itemIn);
                JEI.removeAndHide(itemIn);
                shard.remove(itemIn);
            }
        }
    }

    if(!isNull(clamp) && !clamp.empty) {
        for itemIn in clamp.items {
            if(itemIn.definition.owner != "contenttweaker") {
                mods.mekanism.purification.removeRecipe(itemIn);
                JEI.removeAndHide(itemIn);
                clamp.remove(itemIn);
            }
        }
    }

    if(!isNull(ore) && !ore.empty && !isNull(dust) && !dust.empty) {
        mods.appliedenergistics2.Grinder.removeRecipe(ore.firstItem);
        mods.appliedenergistics2.Grinder.addRecipe(dust.firstItem, ore.firstItem, 8, dust.firstItem, 0.75);

        //mods.integrateddynamics.Squeezer.removeRecipe(ore.firstItem);
        mods.integrateddynamics.Squeezer.addRecipe(ore.firstItem, dust.firstItem, 1.0, dust.firstItem, 0.75);

        //mods.integrateddynamics.MechanicalSqueezer.removeRecipe(ore.firstItem);
        mods.integrateddynamics.MechanicalSqueezer.addRecipe(ore.firstItem, dust.firstItem, 1.0, dust.firstItem, 1.0);

        var name as string = StringHelper.getItemNameWithUnderline(dust.firstItem) ~ num;
        num = num + 1;

        mods.naturesaura.Altar.removeRecipe(dust.firstItem);
        mods.naturesaura.Altar.addRecipe("Altar" ~ name, ore, dust.firstItem * 2, <naturesaura:crushing_catalyst>, 500, 100);

        mods.immersiveengineering.Crusher.removeRecipesForInput(ore.firstItem);
        mods.immersiveengineering.Crusher.addRecipe(dust.firstItem, ore, 2000, dust.firstItem, 1.0);

        mods.lightningcraft.LightningCrusher.remove(dust.firstItem);
        mods.lightningcraft.LightningCrusher.add(dust.firstItem * 2, ore);

        mods.mekanism.enrichment.removeRecipe(ore.firstItem);
        mods.mekanism.enrichment.addRecipe(ore, dust.firstItem * 2);

        RecipeBuilder.newBuilder(machineNmae ~ name, machineNmae, 40)
            .addItemInput(ore.firstItem)
            .addItemOutput(dust.firstItem.withAmount(2))
        .build();

    }

    if(!isNull(oreAuraInfusion) && !oreAuraInfusion.empty && !isNull(oreCrushedInfused) && !oreCrushedInfused.empty) {
        
        mods.appliedenergistics2.Grinder.removeRecipe(oreAuraInfusion.firstItem);
        mods.appliedenergistics2.Grinder.addRecipe(oreCrushedInfused.firstItem, oreAuraInfusion.firstItem, 8, oreCrushedInfused.firstItem, 1.0);

        //mods.integrateddynamics.Squeezer.removeRecipe(oreAuraInfusion.firstItem);
        mods.integrateddynamics.Squeezer.addRecipe(oreAuraInfusion.firstItem, oreCrushedInfused.firstItem, 1.0, oreCrushedInfused.firstItem, 1.0);

        //mods.integrateddynamics.MechanicalSqueezer.removeRecipe(oreAuraInfusion.firstItem);
        mods.integrateddynamics.MechanicalSqueezer.addRecipe(oreAuraInfusion.firstItem, oreCrushedInfused.firstItem, 1.0, oreCrushedInfused.firstItem, 1.0);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(oreCrushedInfused.firstItem) ~ num;
        num = num + 1;

        mods.naturesaura.Altar.removeRecipe(oreCrushedInfused.firstItem);
        mods.naturesaura.Altar.addRecipe(name, oreAuraInfusion, oreCrushedInfused.firstItem * 2, <naturesaura:crushing_catalyst>, 500, 100);

        mods.immersiveengineering.Crusher.removeRecipesForInput(oreAuraInfusion.firstItem);
        mods.immersiveengineering.Crusher.addRecipe(oreCrushedInfused.firstItem, oreAuraInfusion, 2000, oreCrushedInfused.firstItem, 1.0);

        mods.lightningcraft.LightningCrusher.remove(oreCrushedInfused.firstItem);
        mods.lightningcraft.LightningCrusher.add(oreCrushedInfused.firstItem * 2, oreAuraInfusion);

        mods.mekanism.enrichment.removeRecipe(oreAuraInfusion.firstItem);
        mods.mekanism.enrichment.addRecipe(oreAuraInfusion, oreCrushedInfused.firstItem * 2);

        RecipeBuilder.newBuilder(machineNmae ~ name, machineNmae, 40)
            .addItemInput(oreAuraInfusion.firstItem)
            .addItemOutput(oreCrushedInfused.firstItem.withAmount(2))
        .build();
    }
    
    if(!isNull(oreEnriched) && !oreEnriched.empty && 
       !isNull(oreCrushedEnriched) && !oreCrushedEnriched.empty && 
       !isNull(dust) && !dust.empty) {

        mods.appliedenergistics2.Grinder.removeRecipe(oreEnriched.firstItem);
        mods.appliedenergistics2.Grinder.addRecipe(oreCrushedEnriched.firstItem, oreEnriched.firstItem, 8, oreCrushedEnriched.firstItem, 1.0);

        //mods.integrateddynamics.Squeezer.removeRecipe(oreEnriched.firstItem);
        mods.integrateddynamics.Squeezer.addRecipe(oreEnriched.firstItem, oreCrushedEnriched.firstItem, 1.0, oreCrushedEnriched.firstItem, 1.0);

        //mods.integrateddynamics.MechanicalSqueezer.removeRecipe(oreEnriched.firstItem);
        mods.integrateddynamics.MechanicalSqueezer.addRecipe(oreEnriched.firstItem, oreCrushedEnriched.firstItem * 2, 1.0, dust.firstItem, 0.25);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(oreCrushedEnriched.firstItem) ~ num;
        num = num + 1;

        mods.naturesaura.Altar.removeRecipe(oreCrushedEnriched.firstItem);
        mods.naturesaura.Altar.addRecipe(name, oreEnriched, oreCrushedEnriched.firstItem * 2, <naturesaura:crushing_catalyst>, 500, 100);

        mods.immersiveengineering.Crusher.removeRecipesForInput(oreEnriched.firstItem);
        mods.immersiveengineering.Crusher.addRecipe(oreCrushedEnriched.firstItem * 2, oreEnriched, 2000, dust.firstItem, 0.25);

        mods.lightningcraft.LightningCrusher.remove(oreCrushedEnriched.firstItem);
        mods.lightningcraft.LightningCrusher.add(oreCrushedEnriched.firstItem * 2, oreEnriched);

        mods.mekanism.enrichment.removeRecipe(oreEnriched.firstItem);
        mods.mekanism.enrichment.addRecipe(oreEnriched, oreCrushedEnriched.firstItem * 2);

        RecipeBuilder.newBuilder(machineNmae ~ name, machineNmae, 40)
            .addItemInput(oreEnriched.firstItem)
            .addItemOutput(oreCrushedEnriched.firstItem.withAmount(2))
            .addItemOutput(dust.firstItem.withAmount(1))
            .setChance(0.25)
        .build();
    }

    if(!isNull(crystal) && !crystal.empty && !isNull(dust) && !dust.empty) {
        mods.appliedenergistics2.Grinder.removeRecipe(crystal.firstItem);
        mods.appliedenergistics2.Grinder.addRecipe(dust.firstItem * 2, crystal.firstItem, 8, dust.firstItem, 1.0);

        //mods.integrateddynamics.Squeezer.removeRecipe(crystal.firstItem);
        mods.integrateddynamics.Squeezer.addRecipe(crystal.firstItem, dust.firstItem * 2, 1.0, dust.firstItem, 1.0);

        //mods.integrateddynamics.MechanicalSqueezer.removeRecipe(crystal.firstItem);
        mods.integrateddynamics.MechanicalSqueezer.addRecipe(crystal.firstItem, dust.firstItem * 2, 1.0, dust.firstItem, 1.0);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(dust.firstItem) ~ num;
        num = num + 1;

        mods.naturesaura.Altar.removeRecipe(dust.firstItem);
        mods.naturesaura.Altar.addRecipe(name, crystal, dust.firstItem * 3, <naturesaura:crushing_catalyst>, 500, 100);

        mods.immersiveengineering.Crusher.removeRecipesForInput(crystal.firstItem);
        mods.immersiveengineering.Crusher.addRecipe(dust.firstItem * 2, crystal, 2000, dust.firstItem, 1.0);

        mods.lightningcraft.LightningCrusher.remove(crystal.firstItem);
        mods.lightningcraft.LightningCrusher.add(dust.firstItem * 3, crystal);

        mods.mekanism.enrichment.removeRecipe(crystal.firstItem);
        mods.mekanism.enrichment.addRecipe(crystal, dust.firstItem * 3);

        RecipeBuilder.newBuilder(machineNmae ~ name, machineNmae, 40)
            .addItemInput(crystal.firstItem)
            .addItemOutput(dust.firstItem.withAmount(3))
        .build();
    }

}