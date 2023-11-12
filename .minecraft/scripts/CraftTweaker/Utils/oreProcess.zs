#priority -5
#modloaded trutils
#loader crafttweaker reloadableevents

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
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
import mods.nuclearcraft.Manufactory;

import scripts.grassUtils.StringHelper;
import scripts.grassUtils.RecipeUtils;

import scripts.CraftTweaker.Mods.AdvanedRocketry.Lathe;
import scripts.CraftTweaker.Mods.AdvanedRocketry.Rollingmachine;

var oreNames as string[] = [
    "Gold", "Iron", "CrudeSteel", "Uranium", "QuartzBlack", "Tritanium", "Thorium", "Osmium", "Nickel",
    "Platinum", "Titanium", "Mithril", "Iridium", "Boron", "Lithium", "Magnesium", "Copper", "Tin", "Silver",
    "Lead", "Aluminum", "Germanium"
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
    var nugget as IOreDictEntry = oreDict.get("nugget" ~ oreName);
    
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

        Manufactory.removeRecipeWithInput(ore.firstItem);
        Manufactory.removeRecipeWithInput(ore);
        Manufactory.addRecipe(ore, dust.firstItem * 2, 0.5);
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

        Manufactory.addRecipe(oreAuraInfusion, oreCrushedInfused.firstItem * 2, 0.25);
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

        Manufactory.addRecipe(oreEnriched, oreCrushedEnriched.firstItem * 2, 0.25);
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

        LightningCrusher.remove(dust.firstItem);
        LightningCrusher.add(dust.firstItem * 3, crystal);

        enrichment.removeRecipe(crystal.firstItem);
        enrichment.addRecipe(crystal, dust.firstItem * 3);

        RecipeBuilder.newBuilder(machineName ~ name, machineName, 40)
            .addItemInput(crystal.firstItem)
            .addItemOutput(dust.firstItem.withAmount(3))
        .build();

        Manufactory.addRecipe(crystal, dust.firstItem * 3, 0.25);
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

    if(!oreEnriched.empty && !oreAuraInfusion.empty) {
        mods.randomtweaker.botania.IOrechid.addOreRecipe(oreAuraInfusion.firstItem, oreEnriched, 1000);
    }

    if (!oreAuraInfusion.empty && !ore.empty) {
        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(oreAuraInfusion.firstItem) ~ num;
        num = num + 1;

        RecipeBuilder.newBuilder("aura_perfusion_changer_controller" ~ name, "aura_perfusion_changer_controller", 10)
            .addItemInput(ore)
            .addAuraInput(1000, true)
            .addItemOutput(oreAuraInfusion)
        .build();
    }

    if (!oreCrushedInfused.empty && !oreCleanCrushedInfused.empty) {
        mods.trutils.WashingMachineRecipes.addRecipe(25, 80, <liquid:sulfuric_acid> * 50, 
            oreCrushedInfused, oreCleanCrushedInfused.firstItem, <liquid:infused_slag_slurry> * 50);
    }
    

    if (!ingot.empty && !dust.empty) {
        mods.mekanism.crusher.addRecipe(ingot, dust.firstItem);
    }

    if(!shard.empty && !nugget.empty) {
        RecipeUtils.recipeTweak(false, nugget.firstItem * 3, [[shard]]);
    }

}

for ore in oreDict.entries {
    if (ore.name.startsWith("ingot")) {
        if (ore.empty) continue;

        var metal as string = RecipeUtils.getMetalNameNew(ore, "ingot");
        var plate as IOreDictEntry = oreDict.get("plate" ~ metal);
        var rod as IOreDictEntry = oreDict.get("rod" ~ metal);
        var sheet as IOreDictEntry = oreDict.get("sheet" ~ metal);
        var stick as IOreDictEntry = oreDict.get("stick" ~ metal);
        var ingot as IOreDictEntry = ore;

        if (!plate.empty) {
            Rollingmachine.addRecipe([plate.firstItem % 100], 50, 160, [ingot]);
            if (!sheet.empty) {
                Rollingmachine.addRecipe([sheet.firstItem % 100], 50, 160, [plate]);
            }
        }

        if (!rod.empty) {
            Lathe.addRecipe([rod.firstItem * 3 % 100], 50, 100, [ingot], [<liquid:water> * 100]);
        }
        else if (!stick.empty) {
            Lathe.addRecipe([stick.firstItem * 3 % 100], 50, 100, [ingot], [<liquid:water> * 100]);
        }
    }
}

//--------------------------------宝石类矿石处理----------------------------------
//无粉类的钻石级矿
var LvDiamondNondust as string[] = [
    "Rime", "Amethyst", 
];

for oreName in LvDiamondNondust {
    var LvDiamondOreNondust as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var LvDiamondgemNondust as IOreDictEntry = oreDict.get("gem" ~ oreName);

    if(!LvDiamondOreNondust.empty && !LvDiamondgemNondust.empty) {
        
        //2 块
        //Grinder.removeRecipe(LvDiamondOreNondust.firstItem);
        Grinder.addRecipe(LvDiamondgemNondust.firstItem * 2, LvDiamondOreNondust.firstItem, 8);

        //Squeezer.removeRecipe(oreAuraInfusion.firstItem);
        Squeezer.addRecipe(LvDiamondOreNondust.firstItem, LvDiamondgemNondust.firstItem, 1.0, LvDiamondgemNondust.firstItem, 1.0);

        //3 块
        //MechanicalSqueezer.removeRecipe(oreAuraInfusion.firstItem);
        MechanicalSqueezer.addRecipe(LvDiamondOreNondust.firstItem, LvDiamondgemNondust.firstItem * 2, 1.0, LvDiamondgemNondust.firstItem, 1.0);

        Crusher.removeRecipesForInput(LvDiamondOreNondust.firstItem);
        Crusher.addRecipe(LvDiamondgemNondust.firstItem * 2, LvDiamondOreNondust, 2000, LvDiamondgemNondust.firstItem, 1.0);

        LightningCrusher.remove(LvDiamondgemNondust.firstItem);
        LightningCrusher.add(LvDiamondgemNondust.firstItem * 3, LvDiamondOreNondust);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(LvDiamondgemNondust.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(LvDiamondgemNondust.firstItem);
        Altar.addRecipe(name, LvDiamondOreNondust, LvDiamondgemNondust.firstItem * 3, <naturesaura:crushing_catalyst>, 500, 100);

        enrichment.removeRecipe(LvDiamondOreNondust.firstItem);
        enrichment.addRecipe(LvDiamondOreNondust, LvDiamondgemNondust.firstItem * 3);

        Manufactory.addRecipe(LvDiamondOreNondust, LvDiamondgemNondust.firstItem * 3, 0.25);
    }
}
//有粉类的钻石级矿
var LvDiamondOre as string[] = [
    "Diamond", "Emerald", "Dilithium" ,"Draconium"
];

for oreName in LvDiamondOre {
    var LvDiamondOre as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var LvDiamondGem as IOreDictEntry = oreDict.get("gem" ~ oreName);
    var LvDiamondDust as IOreDictEntry = oreDict.get("dust" ~ oreName);

    if(!LvDiamondOre.empty && !LvDiamondGem.empty && !LvDiamondDust.empty) {
        
        //2 粉
        //Grinder.removeRecipe(LvDiamondOre.firstItem);
        Grinder.addRecipe(LvDiamondDust.firstItem * 2, LvDiamondOre.firstItem, 8);

        //2 块
        Squeezer.removeRecipesWithOutput(LvDiamondOre.firstItem);
        Squeezer.addRecipe(LvDiamondOre.firstItem, LvDiamondGem.firstItem, 1.0, LvDiamondGem.firstItem, 1.0);

        //3 块
        MechanicalSqueezer.removeRecipesWithOutput(LvDiamondOre.firstItem);
        MechanicalSqueezer.addRecipe(LvDiamondOre.firstItem, LvDiamondGem.firstItem * 2, 1.0, LvDiamondGem.firstItem, 1.0);

        Crusher.removeRecipesForInput(LvDiamondOre.firstItem);
        Crusher.addRecipe(LvDiamondGem.firstItem * 2, LvDiamondOre, 2000, LvDiamondGem.firstItem, 1.0);

        enrichment.removeRecipe(LvDiamondOre.firstItem);
        enrichment.addRecipe(LvDiamondOre, LvDiamondGem.firstItem * 3);

        Manufactory.removeRecipeWithInput(LvDiamondOre.firstItem);
        Manufactory.removeRecipeWithInput(LvDiamondOre);
        Manufactory.addRecipe(LvDiamondOre, LvDiamondGem.firstItem * 3, 0.5);

        //3粉
        LightningCrusher.remove(<lightningcraft:material:1>);
        LightningCrusher.remove(LvDiamondDust.firstItem);
        LightningCrusher.add(LvDiamondDust.firstItem * 3, LvDiamondOre);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(LvDiamondDust.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(LvDiamondDust.firstItem);
        Altar.addRecipe(name, LvDiamondOre, LvDiamondDust.firstItem * 3, <naturesaura:crushing_catalyst>, 500, 100);

    }
}
//煤炭级矿
var LvCoalOre as string[] = [
    "Coal", "Quartz", "CertusQuartz", "ChargedCertusQuartz"
];

for oreName in LvCoalOre {
    var LvCoalOre as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var LvCoalGem as IOreDictEntry = oreDict.get("gem" ~ oreName);
    var LvCoalDust as IOreDictEntry = oreDict.get("dust" ~ oreName);

    if(!LvCoalOre.empty && !LvCoalGem.empty && !LvCoalDust.empty) {
        
        //3 粉
        //Grinder.removeRecipe(LvCoalOre.firstItem);
        Grinder.addRecipe(LvCoalDust.firstItem * 3, LvCoalOre.firstItem, 8);

        //4 块
        //Squeezer.removeRecipe(oreAuraInfusion.firstItem);
        Squeezer.addRecipe(LvCoalOre.firstItem, LvCoalGem.firstItem * 2, 1.0, LvCoalGem.firstItem * 2, 1.0);

        //5 块
        //MechanicalSqueezer.removeRecipe(oreAuraInfusion.firstItem);
        MechanicalSqueezer.addRecipe(LvCoalOre.firstItem, LvCoalGem.firstItem * 3, 1.0, LvCoalGem.firstItem * 2, 1.0);

        Crusher.removeRecipesForInput(LvCoalOre.firstItem);
        Crusher.addRecipe(LvCoalGem.firstItem * 3, LvCoalOre, 2000, LvCoalGem.firstItem * 2, 1.0);

        Manufactory.removeRecipeWithInput(LvCoalOre.firstItem);
        Manufactory.removeRecipeWithInput(LvCoalOre);
        Manufactory.addRecipe(LvCoalOre, LvCoalGem.firstItem * 5, 0.5);

        //6 块
        enrichment.removeRecipe(LvCoalOre.firstItem);
        enrichment.addRecipe(LvCoalOre, LvCoalGem.firstItem * 6);

        //4粉
        LightningCrusher.remove(<lightningcraft:material:3>);
        LightningCrusher.remove(LvCoalDust.firstItem);
        LightningCrusher.add(LvCoalDust.firstItem * 4, LvCoalOre);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(LvCoalDust.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(LvCoalDust.firstItem);
        Altar.addRecipe(name, LvCoalOre, LvCoalDust.firstItem * 4, <naturesaura:crushing_catalyst>, 500, 100);

    }
}
//红石级矿
var LvRedstoneOre as string[] = [
    "Redstone", "Lapis",
];

for oreName in LvRedstoneOre {
    var LvRedstoneOre as IOreDictEntry = oreDict.get("ore" ~ oreName);
    var LvRedstoneCrystal as IOreDictEntry = oreDict.get("crystal" ~ oreName);
    var LvRedstoneDust as IOreDictEntry = oreDict.get("dust" ~ oreName);

    if(!LvRedstoneOre.empty && !LvRedstoneCrystal.empty && !LvRedstoneDust.empty) {
        
        //4 粉
        //Grinder.removeRecipe(LvRedstoneOre.firstItem);
        Grinder.addRecipe(LvRedstoneDust.firstItem * 4, LvRedstoneOre.firstItem, 8);

        //6 块
        //Squeezer.removeRecipe(oreAuraInfusion.firstItem);
        Squeezer.addRecipe(LvRedstoneOre.firstItem, LvRedstoneCrystal.firstItem * 3, 1.0, LvRedstoneCrystal.firstItem * 3, 1.0);

        //8 块
        //MechanicalSqueezer.removeRecipe(oreAuraInfusion.firstItem);
        MechanicalSqueezer.addRecipe(LvRedstoneOre.firstItem, LvRedstoneCrystal.firstItem * 4, 1.0, LvRedstoneCrystal.firstItem * 4, 1.0);

        Crusher.removeRecipesForInput(LvRedstoneCrystal.firstItem);
        Crusher.addRecipe(LvRedstoneCrystal.firstItem * 4, LvRedstoneOre, 2000, LvRedstoneCrystal.firstItem * 4, 1.0);

        Manufactory.removeRecipeWithInput(LvRedstoneDust.firstItem);
        Manufactory.removeRecipeWithInput(LvRedstoneDust);
        Manufactory.addRecipe(LvRedstoneOre, LvRedstoneDust.firstItem * 8, 0.5);

        //12 块
        enrichment.removeRecipe(LvRedstoneOre.firstItem);
        enrichment.addRecipe(LvRedstoneOre, LvRedstoneCrystal.firstItem * 12);

        //8粉
        LightningCrusher.remove(LvRedstoneCrystal.firstItem);
        LightningCrusher.add(LvRedstoneDust.firstItem * 8, LvRedstoneOre);

        var name as string = "Altar" ~ StringHelper.getItemNameWithUnderline(LvRedstoneDust.firstItem) ~ num;
        num = num + 1;

        Altar.removeRecipe(LvRedstoneDust.firstItem);
        Altar.addRecipe(name, LvRedstoneOre, LvRedstoneDust.firstItem * 8, <naturesaura:crushing_catalyst>, 500, 100);

    }
}