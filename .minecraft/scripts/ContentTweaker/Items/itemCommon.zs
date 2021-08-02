#priority 30
#modloaded atutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;


var items as string[] = [
    "mana_petals", "straw_rope", "rune", "rune1", "twilight_key", "end_portal_frame_debris", "Insulating_substrate",
    "twilight_alloy", "Blast_furnace_fuel", "Aura_coal", "dust_rudesteel", "gravitational_anomaly_container", "ge_wafer", "ge_transistor",
    "germanium_integrated_circuit_board", "si_transistor"
];


for item in items {
	CotUtils.addNormalItem(item);
}