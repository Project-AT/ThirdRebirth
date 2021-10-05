#priority 20
#modloaded atutils
#loader contenttweaker

import crafttweaker.world.IBlockPos;
import mods.contenttweaker.VanillaFactory;
import mods.randomtweaker.naturesaura.IAuraChunk;
import mods.randomtweaker.cote.ISubTileEntityFunctional;
import mods.randomtweaker.cote.ISubTileEntityGenerating;


var auraFlower as ISubTileEntityFunctional = VanillaFactory.createSubTileFunctional("aura_flower", 0x4444FF);
auraFlower.range = 4;
auraFlower.onUpdate = function(subtile, world, pos) {
    var auraLowestPos = world.getLowestSpot(pos, 4, pos);
    var auraChunk as IAuraChunk = world.getAuraChunk(auraLowestPos);

    if(!world.remote && subtile.getMana() > 0 && !isNull(auraChunk)) {
        subtile.addMana(-1);
        auraChunk.storeAura(auraLowestPos, 20);
    }
};
auraFlower.register();

var manaFlower as ISubTileEntityGenerating = VanillaFactory.createSubTileGenerating("mana_flower", 0x4444FF);
manaFlower.range = 4;
manaFlower.onUpdate = function(subtile, world, pos) {
    var auraHighestPos as IBlockPos = world.getHighestSpot(pos, 4, pos);
    var auraChunk as IAuraChunk = world.getAuraChunk(auraHighestPos);

    if(!world.remote && !isNull(auraChunk) && subtile.getMaxMana() != subtile.getMana()) {
        auraChunk.drainAura(auraHighestPos, 20);
        subtile.addMana(1);
    }
};
manaFlower.register();