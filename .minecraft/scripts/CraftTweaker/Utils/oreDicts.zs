#priority 20

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.jei.JEI;


var knifes as IItemStack[] = itemUtils.getItemsByRegexRegistryName(".*_knife.*");

var oreDictNames as string[] = [
    "Iron", "Gold", "Copper", "Tin", "Lead", "Aluminum", "Nickel", "Silver", "Uranium", "Boron", "Lithium", "Magnesium", "Thorium", "Bronze",
    "Constantan", "Electrum", "Steel", "Iridium", "Invar"
];
var partNames as string[] = [
    "ingot", "ore", "plate", "gear", "block", "nugget", "dust", "stick"
];

for i in partNames {
    for l in oreDictNames {
        var ore = oreDict.get(i ~ l);
        var ores = ore.items;
        for n in ores{
            var owner = n.definition.owner;
            if(owner == "thermalfoundation" || owner == "enderio" || owner == "nuclearcraft"){
                 for o in ores{
                    if(!(o.matches(n)) && (o.definition.owner != "chisel")){
                        JEI.removeAndHide(o);
                        ore.remove(o);
                    }
                }
                break;
            }
        }
    }
}

for i in knifes{
    var knifeOwner as string = i.definition.owner;
    if(knifeOwner == "mysticalworld" || knifeOwner == "roots"){
        <ore:oreKnife>.add(i);
    }
}

<ore:oreNickel>.add(<contenttweaker:udorenickel>);
<ore:oreSilver>.add(<contenttweaker:udoresilver>);
<ore:oreUranium>.add(<contenttweaker:udoreuranium>);
<ore:oreAluminum>.add(<contenttweaker:udorealuminum>);
<ore:oreIronCoal>.add(<contenttweaker:ironcoal_ore>);
<ore:oreAquamarine>.add(<contenttweaker:aqua_ore_gravel>);
<ore:oreQuartzBlack>.add(<contenttweaker:netherblackquartz>);
<ore:oreSkyStoneBlock>.add(<appliedenergistics2:sky_stone_block>);