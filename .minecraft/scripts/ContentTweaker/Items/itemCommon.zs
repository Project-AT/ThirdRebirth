#priority 30
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var items as string[] = [
    "mana_petals", "straw_rope", "rune", "rune1", "twilight_key", "end_portal_frame_debris", "Insulating_substrate",
    "twilight_alloy", "four_leaf_clover"
];


for item in items{
	VanillaFactory.createItem(item).register();
}