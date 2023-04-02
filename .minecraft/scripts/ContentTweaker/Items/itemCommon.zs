#priority 30
#modloaded trutils
#loader contenttweaker

import scripts.grassUtils.CotUtils;

var items as string[] = [
    "mana_petals", "straw_rope", "rune", "rune1", "end_portal_frame_debris", "insulating_substrate",
    "blast_furnace_fuel", "aura_coal", "dust_crude_steel", "gravitational_anomaly_container", "ge_wafer",
    "ge_transistor","bark_wisdomwood", "germanium_integrated_circuit_board", "si_transistor", "base_board_of_basic_ic",
    "soul_extract","dictionary_paper", "si_gr_ge_transistor", "graphene_nickel_plate", "teleport_rune", "damaged_psd",
    "damaged_data_pad","compressed_crystaltine", "compressed_draconium", "compressed_signalum", "refractory_brick",
    "refractory_clay_ball", "rusty_iron_ingot", "tough_alloy_plate", "research_icon", "sensitive_element", "thin_film_transistor",
    "glazed_refractory_brick", "glaze", "mana_crystal", "thirdrebirth", "stamp_nugget", "raw_stamp_nugget", "wine_stone",
    "tartaric_acid", "crude_silicon_dust", "infused_crude_silicon_dust", "infused_protective_layer_crude_silicon_dust",
    "mana_infused_crude_silicon_dust", "contains_impurities_silicon_dust", "silicon_dust", "tinned_copper_wire",
    "inactive_view_cell", "inactive_energytablet", "menril_essence_crystal", "research_point_Lv0", "research_point_Lv1", "research_point_Lv1_incomplete",
    "mystery_dust"
];

for item in items {
	CotUtils.addNormalItem(item);
}
