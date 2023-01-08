#priority 4
#modloaded trutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.embers.Stamper;

Stamper.add(<pneumaticcraft:empty_pcb:100>, <liquid:copper> * 144, <pneumaticcraft:pcb_blueprint>, <pneumaticcraft:plastic:2>);
Stamper.add(<contenttweaker:rune> * 2, null, <embers:stamp_plate>, <botania:livingrock>);

Stamper.add(<mekanism:polyethene>, <liquid:hdpe> * 100, <contenttweaker:stamp_nugget>);
Stamper.add(<ore:ingotManganeseDioxide>.firstItem, <liquid:manganese_dioxide> * 144, <embers:stamp_bar>);

mods.embers.Stamper.remove(<thermalfoundation:material:16>);
mods.embers.Stamper.remove(<thermalfoundation:material:17>);
Stamper.add(<thermalfoundation:material:16>, <liquid:diamond> * 76, <contenttweaker:stamp_nugget>);
Stamper.add(<thermalfoundation:material:17>, <liquid:emerald> * 76, <contenttweaker:stamp_nugget>);

var emberIngotorPlate as IItemStack[] = [
    <embers:ingot_copper>,
    <embers:ingot_lead>,
    <embers:ingot_aluminum>,
    <embers:ingot_tin>,
    <embers:ingot_nickel>,
    <embers:ingot_silver>,
    <embers:ingot_electrum>,
    <embers:ingot_bronze>,
    <minecraft:iron_ingot>,
    <minecraft:gold_ingot>,
    <embers:plate_copper>,
    <embers:plate_lead>,
    <embers:plate_aluminum>,
    <embers:plate_tin>,
    <embers:plate_nickel>,
    <embers:plate_silver>,
    <embers:plate_electrum>,
    <embers:plate_bronze>,
    <embers:plate_iron>,
    <embers:plate_gold>,
];

for Items in emberIngotorPlate {
    mods.embers.Stamper.remove(Items);
}

var metalName as string[] = [
    "Iron", "Gold", "Silver", "Copper", "Lead", "Aluminum", "Bronze", "Electrum", "Tin", "Nickel", "Electricium", "Skyfather", "Mystic", "Steel", "Tough", "Enderium"
];

for metal in metalName {

    var metalPlate as IOreDictEntry = oreDict.get("plate" ~ metal);
    var metalIngot as IOreDictEntry = oreDict.get("ingot" ~ metal);
    var liquidName = metal.substring(0, 1).toLowerCase() ~ metal.substring(1);
    var metalliquid = game.getLiquid(liquidName);
    var metalGear as IOreDictEntry = oreDict.get("gear" ~ metal);

    if(!metalPlate.empty && !isNull(metalliquid)) {
        mods.embers.Stamper.add(metalPlate.firstItem, metalliquid * 144, <embers:stamp_plate>);
    }

    if(!metalIngot.empty && !isNull(metalliquid)) {
        mods.embers.Stamper.add(metalIngot.firstItem, metalliquid * 144, <embers:stamp_bar>);
    }

    if(!metalGear.empty && !isNull(metalliquid)) {
        mods.embers.Stamper.add(metalGear.firstItem, metalliquid * 576, <embers:stamp_gear>);
    }
}