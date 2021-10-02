#priority 30
#modloaded atutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;

var items as string[] = [
    "mana_petals", "straw_rope", "rune", "rune1", "end_portal_frame_debris", "insulating_substrate",
    "blast_furnace_fuel", "aura_coal", "dust_crude_steel", "gravitational_anomaly_container", "ge_wafer",
    "ge_transistor","bark_wisdomwood", "germanium_integrated_circuit_board", "si_transistor", "base_board_of_basic_ic",
    "soul_extract","dictionary_paper", "si_gr_ge_transistor", "graphene_nickel_plate", "teleport_rune", "damaged_psd",
    "damaged_data_pad","compressed_crystaltine", "compressed_draconium", "compressed_signalum", "refractory_brick",
    "refractory_clay_ball", "rusty_iron_ingot", "tough_alloy_plate", "study_icon", "pure_iron"
];

for item in items {
	CotUtils.addNormalItem(item);
}
