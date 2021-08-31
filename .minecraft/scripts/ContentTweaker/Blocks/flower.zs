#priority 20
#modloaded atutils
#loader contenttweaker
import crafttweaker.world.IBlockPos;

import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.naturesaura.AuraChunk;
import mods.randomtweaker.cote.SubTileFunctional;
import mods.randomtweaker.cote.SubTileGenerating;


var auraFlower as SubTileFunctional = VanillaFactory.createSubTileFunctional("aura_flower", 0x4444FF);
auraFlower.range = 4;
auraFlower.onUpdate = function(subtile, world, pos) {
    var auraChunk as AuraChunk = world.getAuraChunk(pos);

    if(!world.remote && subtile.getMana() > 0 && !isNull(auraChunk)) {
        subtile.addMana(-1);
        auraChunk.storeAura(world.getLowestSpot(pos, 4, pos), 20);
    }
};
auraFlower.register();

var manaFlower as SubTileGenerating = VanillaFactory.createSubTileGenerating("mana_flower", 0x4444FF);
manaFlower.range = 4;
manaFlower.onUpdate = function(subtile, world, pos) {
    var auraChunk as AuraChunk = world.getAuraChunk(pos);

    if(!world.remote && !isNull(auraChunk)) {
        var auraHightPos as IBlockPos = world.getHighestSpot(pos, 4, pos);

        if(auraChunk.getDrainSpot(auraHightPos) > 0) {
            auraChunk.drainAura(auraHightPos, 20);
            subtile.addMana(1);
        }
    }
};
manaFlower.register();