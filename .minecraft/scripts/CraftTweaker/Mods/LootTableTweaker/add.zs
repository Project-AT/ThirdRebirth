#priority 5
#modloaded atutils

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootPool;


var tables as string[] = [
    "abandoned_mineshaft",
    "desert_pyramid",
    "end_city_treasure",
    "igloo_chest",
    "jungle_temple",
    "jungle_temple_dispenser",
    "nether_bridge",
    "simple_dungeon",
    "spawn_bonus_chest",
    "stronghold_corridor",
    "stronghold_crossing",
    "stronghold_library",
    "village_blacksmith",
    "woodland_mansion"
];

for table in tables {
    var mainPool as LootPool = LootTweaker.getTable("minecraft:chests/" ~ table).getPool("main");
    mainPool.addItemEntry(<bountifulbaubles:potionwormhole>, 15, "bountifulbaubles:potionwormhole");
    mainPool.addItemEntry(<bountifulbaubles:potionrecall>, 12, "bountifulbaubles:potionrecall");
}