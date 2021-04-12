#priority 30
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import scripts.grassUtils.CotUtils;


var items as string[] = [
    "mana_petals", "straw_rope", "rune", "rune1", "twilight_key", "end_portal_frame_debris", "Insulating_substrate",
    "twilight_alloy", "four_leaf_clover", "Blast_furnace_fuel", "Aura_coal"
];


for item in items{
	CotUtils.addNormalItem(item);
}