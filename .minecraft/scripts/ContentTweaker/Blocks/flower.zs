#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.naturesaura.AuraChunk;
import mods.randomtweaker.cote.SubTileFunctional;
import mods.randomtweaker.cote.SubTileGenerating;


var auraFlower as SubTileFunctional = VanillaFactory.createSubTileFunctional("aura_flower", 0xFFFFFF);
auraFlower.range = 4;
auraFlower.onUpdate = function(subtile, world, pos) {
    if(world.remote) return;

    var auraChunk as AuraChunk = world.getAuraChunk(pos);

    if(subtile.getMana() > 0 && !isNull(auraChunk)) {
        subtile.addMana(-1);
        auraChunk.storeAura(world.getLowestSpot(pos, 4, pos), 20);
        print(1);
    }
};
auraFlower.register();

var manaFlower as SubTileGenerating = VanillaFactory.createSubTileGenerating("mana_flower", 0xFFFFFF);
manaFlower.range = 4;
manaFlower.valueForPassiveGeneration = 1;
manaFlower.shouldSyncPassiveGeneration = true;
manaFlower.canGeneratePassively = function(pos, world) {
    var auraChunk as AuraChunk = world.getAuraChunk(pos);

    if(!world.remote && !isNull(auraChunk)) {
        auraChunk.drainAura(world.getHighestSpot(pos, 4, pos), 20);
    }
    return true;
};
manaFlower.register();
