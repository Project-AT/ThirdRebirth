#priority -5
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;
import mods.naturesaura.Altar;
import mods.mekanism.enrichment;
import mods.appliedenergistics2.Grinder;
import mods.integrateddynamics.Squeezer;
import mods.immersiveengineering.Crusher;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.lightningcraft.LightningCrusher;
import mods.integrateddynamics.MechanicalSqueezer;

import scripts.grassUtils.StringHelper;
import scripts.grassUtils.RecipeUtils;
import scripts.CraftTweaker.Mods.AdvanedRocketry.Lathe;
import scripts.CraftTweaker.Mods.AdvanedRocketry.Rollingmachine;

var oreNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Dilithium", "Germanium"
];

var num as int = 0;
var machineName as string =  "high_energy_shredder";

for oreName in oreNames {
    var shard as IOreDictEntry = oreDict.get("shard" ~ oreName);
    var clamp as IOreDictEntry = oreDict.get("clump" ~ oreName);

    var ore as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var crystal as IOreDictEntry = oreDict.get("crystal" ~ oreName);
    var oreEnriched as IOreDictEntry = oreDict.get("oreEnriched" ~ oreName);
    var oreAuraInfusion as IOreDictEntry = oreDict.get("oreAuraInfusion" ~ oreName);

    var dust as IOreDictEntry = oreDict.get("dust" ~ oreName);
    var ingot as IOreDictEntry = oreDict.get("ingot" ~ oreName);
    var oreCrushedInfused as IOreDictEntry = oreDict.get("oreCrushedInfused" ~ oreName);
    var oreCrushedEnriched as IOreDictEntry = oreDict.get("oreCrushedEnriched" ~ oreName);
    var oreCleanCrushedInfused as IOreDictEntry = oreDict.get("oreCleanCrushedInfused" ~ oreName);
    
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

    if(!isNull(crystal) && !crystal.empty) {
        for itemIn in crystal.items {
            if(itemIn.definition.owner != "contenttweaker") {
                mods.mekanism.chemical.crystallizer.removeRecipe(itemIn);
                JEI.removeAndHide(itemIn);
                crystal.remove(itemIn);
            }
        }
    }

// -------------------------------------------------------------------------------

    if (!shard.empty && !oreCleanCrushedInfused.empty) {
        furnace.addRecipe(shard.firstItem * 5, oreCleanCrushedInfused.firstItem);
    }

    if (!ore.empty && !oreAuraInfusion.empty) {
        var firstItem as IItemStack = oreAuraInfusion.firstItem;
        Altar.addRecipe(StringHelper.getItemNameWithUnderline(firstItem), ore, firstItem, null, 10000, 80);
    }

    if (!ingot.empty && !shard.empty) {
        var firstItem as IItemStack = ingot.firstItem;
        recipes.addShapeless(StringHelper.getItemNameWithUnderline(firstItem), firstItem, [shard, shard, shard]);
    }

    if(!ore.empty && !dust.empty) {
        Grinder.removeRecipe(ore.firstItem);
        Grinder.addRecipe(dust.firstItem, ore.firstItem, 8, dust.firstItem, 0.75);

        //Squeezer.removeRecipe(ore.firstItem);
        Squeezer.addRecipe(ore.firstItem, dust.firstItem, 1.0, dust.firstItem, 0.75);

        //MechanicalSqueezer.removeRecipe(ore.firstItem);
        MechanicalSqueezer.addRecipe(ore.firstItem, dust.firstItem, 1.0, dust.firstItem, 1.0);

        var name as string = StringHelper.getItemNameWithUnderline(dust.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(dust.firstItem);
        Altar.addRecipe("Altar" ~ name, ore, dust.firstItem * 2, <naturesaura:crushing_catalyst>, 500, 100);

        Crusher.removeRecipesForInput(ore.firstItem);
        Crusher.addRecipe(dust.firstItem, ore, 2000, dust.firstItem, 1.0);

        LightningCrusher.remove(dust.firstItem);
        LightningCrusher.add(dust.firstItem * 2, ore);

        enrichment.removeRecipe(ore.firstItem);
        enrichment.addRecipe(ore, dust.firstItem * 2);

        RecipeBuilder.newBuilder(machineName ~ name, machineName, 40)
            .addItemInput(ore.firstItem)
            .addItemOutput(dust.firstItem.withAmount(2))
        .build();

    }

    if(!oreAuraInfusion.empty && !oreCrushedInfused.empty) {
        
        Grinder.removeRecipe(oreAuraInfusion.firstItem);
        Grinder.addRecipe(oreCrushedInfused.firstItem, oreAuraInfusion.firstItem, 8, oreCrushedInfused.firstItem, 1.0);

        //Squeezer.removeRecipe(oreAuraInfusion.firstItem);
        Squeezer.addRecipe(oreAuraInfusion.firstItem, oreCrushedInfused.firstItem, 1.0, oreCrushedInfused.firstItem, 1.0);

        //MechanicalSqueezer.removeRecipe(oreAuraInfusion.firstItem);
        MechanicalSqueezer.addRecipe(oreAuraInfusion.firstItem, oreCrushedInfused.firstItem, 1.0, oreCrushedInfused.firstItem, 1.0);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(oreCrushedInfused.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(oreCrushedInfused.firstItem);
        Altar.addRecipe(name, oreAuraInfusion, oreCrushedInfused.firstItem * 2, <naturesaura:crushing_catalyst>, 500, 100);

        Crusher.removeRecipesForInput(oreAuraInfusion.firstItem);
        Crusher.addRecipe(oreCrushedInfused.firstItem, oreAuraInfusion, 2000, oreCrushedInfused.firstItem, 1.0);

        LightningCrusher.remove(oreCrushedInfused.firstItem);
        LightningCrusher.add(oreCrushedInfused.firstItem * 2, oreAuraInfusion);

        enrichment.removeRecipe(oreAuraInfusion.firstItem);
        enrichment.addRecipe(oreAuraInfusion, oreCrushedInfused.firstItem * 2);

        RecipeBuilder.newBuilder(machineName ~ name, machineName, 40)
            .addItemInput(oreAuraInfusion.firstItem)
            .addItemOutput(oreCrushedInfused.firstItem.withAmount(2))
        .build();
    }
    
    if(!oreEnriched.empty && !oreCrushedEnriched.empty && !dust.empty) {

        Grinder.removeRecipe(oreEnriched.firstItem);
        Grinder.addRecipe(oreCrushedEnriched.firstItem, oreEnriched.firstItem, 8, oreCrushedEnriched.firstItem, 1.0);

        //Squeezer.removeRecipe(oreEnriched.firstItem);
        Squeezer.addRecipe(oreEnriched.firstItem, oreCrushedEnriched.firstItem, 1.0, oreCrushedEnriched.firstItem, 1.0);

        //MechanicalSqueezer.removeRecipe(oreEnriched.firstItem);
        MechanicalSqueezer.addRecipe(oreEnriched.firstItem, oreCrushedEnriched.firstItem * 2, 1.0, dust.firstItem, 0.25);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(oreCrushedEnriched.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(oreCrushedEnriched.firstItem);
        Altar.addRecipe(name, oreEnriched, oreCrushedEnriched.firstItem * 2, <naturesaura:crushing_catalyst>, 500, 100);

        Crusher.removeRecipesForInput(oreEnriched.firstItem);
        Crusher.addRecipe(oreCrushedEnriched.firstItem * 2, oreEnriched, 2000, dust.firstItem, 0.25);

        LightningCrusher.remove(oreCrushedEnriched.firstItem);
        LightningCrusher.add(oreCrushedEnriched.firstItem * 2, oreEnriched);

        enrichment.removeRecipe(oreEnriched.firstItem);
        enrichment.addRecipe(oreEnriched, oreCrushedEnriched.firstItem * 2);

        RecipeBuilder.newBuilder(machineName ~ name, machineName, 40)
            .addItemInput(oreEnriched.firstItem)
            .addItemOutput(oreCrushedEnriched.firstItem.withAmount(2))
            .addItemOutput(dust.firstItem.withAmount(1))
            .setChance(0.25)
        .build();
    }

    if(!crystal.empty && !dust.empty) {
        Grinder.removeRecipe(crystal.firstItem);
        Grinder.addRecipe(dust.firstItem * 2, crystal.firstItem, 8, dust.firstItem, 1.0);

        //Squeezer.removeRecipe(crystal.firstItem);
        Squeezer.addRecipe(crystal.firstItem, dust.firstItem * 2, 1.0, dust.firstItem, 1.0);

        //MechanicalSqueezer.removeRecipe(crystal.firstItem);
        MechanicalSqueezer.addRecipe(crystal.firstItem, dust.firstItem * 2, 1.0, dust.firstItem, 1.0);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(dust.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(dust.firstItem);
        Altar.addRecipe(name, crystal, dust.firstItem * 3, <naturesaura:crushing_catalyst>, 500, 100);

        Crusher.removeRecipesForInput(crystal.firstItem);
        Crusher.addRecipe(dust.firstItem * 2, crystal, 2000, dust.firstItem, 1.0);

        LightningCrusher.remove(crystal.firstItem);
        LightningCrusher.add(dust.firstItem * 3, crystal);

        enrichment.removeRecipe(crystal.firstItem);
        enrichment.addRecipe(crystal, dust.firstItem * 3);

        RecipeBuilder.newBuilder(machineName ~ name, machineName, 40)
            .addItemInput(crystal.firstItem)
            .addItemOutput(dust.firstItem.withAmount(3))
        .build();
    }

// -------------------------------------------------------------------------------

    if(!ingot.empty) {
        if(!oreAuraInfusion.empty) {
            furnace.addRecipe(ingot.firstItem * 2, oreAuraInfusion);
        }

        if(!oreEnriched.empty) {
            furnace.addRecipe(ingot.firstItem * 3, oreEnriched);
        }

        if(!oreCrushedEnriched.empty) {
            furnace.addRecipe(ingot.firstItem * 2, oreCrushedEnriched);
        }

        if(!oreCrushedInfused.empty && !shard.empty) {
            furnace.addRecipe(shard.firstItem * 4, oreCrushedInfused);
        }

        if(!clamp.empty && !shard.empty) {
            furnace.addRecipe(shard.firstItem * 8, clamp);
        }
    }

// -------------------------------------------------------------------------------

    if(!oreEnriched.empty && !oreAuraInfusion.empty) {
        mods.randomtweaker.botania.IOrechid.addOreRecipe(oreAuraInfusion.firstItem, oreEnriched, 1000);
    }

// -------------------------------------------------------------------------------
    if (!oreAuraInfusion.empty && !ore.empty) {
        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(oreAuraInfusion.firstItem) ~ num;
        num = num + 1;

        RecipeBuilder.newBuilder("aura_perfusion_changer_controller" ~ name, "aura_perfusion_changer_controller", 10)
            .addItemInput(ore)
            .addAuraInput(1000, true)
            .addItemOutput(oreAuraInfusion)
        .build();
    }

    mods.trutils.WashingMachineRecipes.addRecipe(25, 80, <liquid:sulfuric_acid> * 50, oreCrushedInfused, oreCleanCrushedInfused.firstItem, <liquid:infused_slag_slurry> * 50);

    if (!ingot.empty && !dust.empty) {
        mods.mekanism.crusher.addRecipe(ingot, dust.firstItem);
    }
}

for ore in oreDict {
    if (ore.name.startsWith("ingot")) {
        
        var metal as string = RecipeUtils.getMetalNameNew(ore, "ingot");
        var plate as IOreDictEntry = oreDict.get("plate" ~ metal);
        var rod as IOreDictEntry = oreDict.get("rod" ~ metal);
        var sheet as IOreDictEntry = oreDict.get("sheet" ~ metal);
        var stick as IOreDictEntry = oreDict.get("stick" ~ metal);
        var ingot as IOreDictEntry = ore;

        if (isNull(ingot) || ingot.empty) continue;

        if (!isNull(plate) && !plate.empty) {
            print("plate - >" ~ plate.name);
            print("ingot - >" ~ ingot.name);
            Lathe.addRecipe([plate.firstItem % 100], 50, 160, [ingot]);
            if (!isNull(sheet) && !sheet.empty) {
                Lathe.addRecipe([sheet.firstItem % 100], 50, 160, [plate]);
            }
        }

        if (!isNull(rod) && !rod.empty) {
            Rollingmachine.addRecipe([rod.firstItem * 3 % 100], 50, 100, [ingot], [<liquid:water> * 100]);
        }
        else if (!isNull(stick) && !stick.empty) {
            print("stick -> " ~ stick.name);
            print("ingot -> " ~ ingot.name);
            Rollingmachine.addRecipe([stick.firstItem * 3 % 100], 50, 100, [ingot], [<liquid:water> * 100]);
        }
    }
}