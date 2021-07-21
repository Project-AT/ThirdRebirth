#priority 30
#modloaded atutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;


var items as string[] = [
    "mana_petals", "straw_rope", "rune", "rune1", "twilight_key", "end_portal_frame_debris", "Insulating_substrate",
    "twilight_alloy", "Blast_furnace_fuel", "Aura_coal", "dust_rudesteel", "gravitational_anomaly_container"
];


for item in items {
	CotUtils.addNormalItem(item);
}