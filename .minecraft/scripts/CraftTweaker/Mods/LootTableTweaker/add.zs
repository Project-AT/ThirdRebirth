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

// 根源魔法木屋里箱子的战利品表
var pool as LootPool = LootTweaker.getTable("mysticalworld:chests/hut").addPool("books", 1, 4, 0, 4);
// 自然灵气之书
pool.addItemEntry(<patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"}), 10, "naturesaura:book");
// 织法宝典
pool.addItemEntry(<wizardry:book>, 10, "wizardry:book");
// 荒野魔法
pool.addItemEntry(<roots:roots_guide>, 10, "roots:roots_guide");
