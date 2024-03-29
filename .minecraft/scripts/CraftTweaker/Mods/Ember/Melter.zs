#priority 5
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

import mods.embers.Melter;

// todo 消耗时间，耗电量
val oreLiquids as ILiquidStack[IIngredient] = {
    <ore:nuggetMystic> : <liquid:mystic> * 16,
    <ore:nuggetEnderium> : <liquid:enderium> * 16,
    <ore:nuggetUranium> : <liquid:uranium> * 16,
    <ore:nuggetSkyfather> : <liquid:skyfather> * 16,
    <ore:nuggetElectricium> : <liquid:electricium> * 16,
    <ore:nuggetDiamond> : <liquid:diamond> * 76,
    <ore:nuggetEmerald> : <liquid:emerald> * 76,

    <ore:dustObsidian> : <liquid:obsidian> * 72,
    <ore:dustEndstone> : <liquid:end_stone> * 72,
    <ore:dustCharcoal> : <liquid:coal> * 100,
    <ore:dustGraphite> : <liquid:coal> * 100,
    <ore:dustManganeseDioxide> : <liquid:manganese_dioxide> * 144,
    <ore:dustAlugentum> : <liquid:alugentum> * 144,
    <ore:dustElectricium> : <liquid:electricium> * 144,
    <ore:dustSkyfather> : <liquid:skyfather> * 144,
    <ore:dustMystic> : <liquid:mystic> * 144,
    <ore:dustSteel> : <liquid:steel> * 144,
    <ore:dustBeryllium> : <liquid:beryllium> * 144,
    <ore:dustZirconium> : <liquid:zirconium> * 144,
    <ore:dustThorium> : <liquid:thorium> * 144,
    <ore:dustUranium> : <liquid:uranium> * 144,
    <ore:dustBoron> : <liquid:boron> * 144,
    <ore:dustLithium> : <liquid:lithium> * 144,
    <ore:dustMagnesium> : <liquid:magnesium> * 144,
    <ore:dustManganese> : <liquid:manganese> * 144,
    <ore:dustPyrotheum> : <liquid:pyrotheum> * 250,
    <ore:dustCryotheum> : <liquid:cryotheum> * 250,
    <ore:dustAerotheum> : <liquid:aerotheum> * 250,
    <ore:dustPetrotheum> : <liquid:petrotheum> * 250,
    <ore:dustGlowstone> : <liquid:glowstone> * 250,
    <ore:dustSulfur> : <liquid:sulfur> * 666,
    <ore:dustSodiumHydroxide> : <liquid:naoh> * 666,
    <ore:dustPotassiumHydroxide> : <liquid:koh> * 666,
    <ore:dustArsenic> : <liquid:arsenic> * 666,
    <ore:dustQuartz> : <liquid:quartz> * 666,
    <ore:dustLapis> : <liquid:lapis> * 666,
    <ore:dustDiamond> : <liquid:diamond> * 666,
    <ore:dustFluorite> : <liquid:fluorite> * 666,
    <ore:dustVilliaumite> : <liquid:villiaumite> * 666,
    <ore:dustCarobbiite> : <liquid:carobbiite> * 666,
    <ore:dustRhodochrosite> : <liquid:manganese_dioxide> * 144,

    <ore:ingotBrickNether> : <liquid:nether_brick> * 72,
    <ore:ingotGraphite> : <liquid:coal> * 100,
    <ore:ingotHardCarbon> : <liquid:hard_carbon> * 144,
    <ore:ingotLeadPlatinum> : <liquid:lead_platinum> * 144,
    <ore:ingotCocoaButter> : <liquid:cocoa_butter> * 144,
    <ore:ingotUnsweetenedChocolate> : <liquid:unsweetened_chocolate> * 144,
    <ore:ingotDarkChocolate> : <liquid:dark_chocolate> * 144,
    <ore:ingotChocolate> : <liquid:milk_chocolate> * 144,
    <ore:ingotElectricium> : <liquid:electricium> * 144,
    <ore:ingotMarshmallow> : <liquid:marshmallow> * 144,
    <ore:ingotSkyfather> : <liquid:skyfather> * 144,
    <ore:ingotSteel> : <liquid:steel> * 144,
    <ore:ingotMystic> : <liquid:mystic> * 144,
    <ore:ingotBeryllium> : <liquid:beryllium> * 144,
    <ore:ingotZirconium> : <liquid:zirconium> * 144,
    <ore:ingotEnderium> : <liquid:enderium> * 144,
    <ore:ingotThorium> : <liquid:thorium> * 144,
    <ore:ingotUranium> : <liquid:uranium> * 144,
    <ore:ingotBoron> : <liquid:boron> * 144,
    <ore:ingotLithium> : <liquid:lithium> * 144,
    <ore:ingotMagnesium> : <liquid:magnesium> * 144,
    <ore:ingotManganese> : <liquid:manganese> * 144,

    <ore:gemPrismarine> : <liquid:prismarine> * 144,
    <ore:gemCarobbiite> : <liquid:carobbiite> * 666,
    <ore:gemVilliaumite> : <liquid:villiaumite> * 666,
    <ore:gemFluorite> : <liquid:fluorite> * 666,
    <ore:gemBoronArsenide> : <liquid:bas> * 666,
    <ore:gemDiamond> : <liquid:diamond> * 666,
    <ore:gemEmerald> : <liquid:emerald> * 666,
    <ore:gemLapis> : <liquid:lapis> * 666,
    <ore:gemQuartz> : <liquid:quartz> * 666,

    <ore:oreThorium> : <liquid:thorium> * 288,
    <ore:oreUranium> : <liquid:uranium> * 288,
    <ore:oreBoron> : <liquid:boron> * 288,
    <ore:oreLithium> : <liquid:lithium> * 288,
    <ore:oreMagnesium> : <liquid:magnesium> * 288,
    <ore:oreQuartz> : <liquid:quartz> * 1332,
    <ore:oreLapis> : <liquid:lapis> * 1332,
    <ore:oreDiamond> : <liquid:diamond> * 1332,
    <ore:oreEmerald> : <liquid:emerald> * 1332,

    <ore:blockBrickNether> : <liquid:nether_brick> * 288,
    <ore:blockCoal> : <liquid:coal> * 900,
    <ore:blockGraphite> : <liquid:coal> * 900,
    <ore:blockPackedIce> : <liquid:water> * 1000,
    <ore:blockElectricium> : <liquid:electricium> * 1296,
    <ore:blockSkyfather> : <liquid:skyfather> * 1296,
    <ore:blockMystic> : <liquid:mystic> * 1296,
    <ore:blockSteel> : <liquid:steel> * 1296,
    <ore:blockBeryllium> : <liquid:beryllium> * 1296,
    <ore:blockZirconium> : <liquid:zirconium> * 1296,
    <ore:blockEnderium> : <liquid:enderium> * 1296,
    <ore:blockSlime> : <liquid:slime> * 1296,
    <ore:blockThorium> : <liquid:thorium> * 1296,
    <ore:blockBoron> : <liquid:boron> * 1296,
    <ore:blockMagnesium> : <liquid:magnesium> * 1296,
    <ore:blockManganese> : <liquid:manganese> * 1296,
    <ore:blockLithium> : <liquid:lithium> * 1296,
    <ore:blockUranium> : <liquid:uranium> * 1296,
    <ore:blockQuartz> : <liquid:quartz> * 2664,
    <ore:blockLapis> : <liquid:lapis> * 5994,
    <ore:blockDiamond> : <liquid:diamond> * 5994,
    <ore:blockEmerald> : <liquid:emerald> * 5994,
    <ore:blockSalt> : <liquid:brine> * 60,

    <ore:itemSalt> : <liquid:brine> * 15,   
    <ore:netherrack> : <liquid:nether_brick> * 72,
    <ore:itemCoal> : <liquid:coal> * 100,
    <ore:crystalsPrismarine> : <liquid:prismarine> * 144,
    <ore:slimeball> : <liquid:slime> * 144,
    <ore:listAllsugar> : <liquid:sugar> * 144,
    <ore:enderpearl> : <liquid:ender> * 250,
    <ore:obsidian> : <liquid:obsidian> * 288,
    <ore:endstone> : <liquid:end_stone> * 288,
    <ore:glowstone> : <liquid:glowstone> * 1000,
    <ore:ice> : <liquid:water> * 1000,
    
    <minecraft:chorus_fruit_popped> : <liquid:purpur> * 72,
    <nuclearcraft:ground_cocoa_nibs> : <liquid:chocolate_liquor> * 144,
    <nuclearcraft:gelatin> : <liquid:gelatin> * 144,
    <minecraft:purpur_block> : <liquid:purpur> * 288,
    <integrateddynamics:crystalized_chorus_block> : <liquid:liquidchorus> * 1000,
    <integrateddynamics:crystalized_chorus_brick> : <liquid:liquidchorus> * 1000,
    <integrateddynamics:crystalized_chorus_brick_stairs> : <liquid:liquidchorus> * 750,
    <integrateddynamics:crystalized_chorus_block_stairs> : <liquid:liquidchorus> * 750,
};

for ore, liquid in oreLiquids {
    Melter.add(liquid, ore);
}