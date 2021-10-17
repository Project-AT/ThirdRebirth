#priority 5
#modloaded atutils
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.botaniatweaks.AgglomerationMultiblock;

var skyIngotMB as AgglomerationMultiblock = AgglomerationMultiblock
    .create()
    .checker(<wizardry:nacre_block>, <naturesaura:infused_iron_block>);

var skyIngotRc as AgglomerationRecipe = AgglomerationRecipe
    .create()
    .output(<naturesaura:sky_ingot>)
    .inputs(<naturesaura:infused_iron>, <wizardry:sky_dust>, <ore:ingotLithium>)
    .manaCost(250000)
    .multiblock(skyIngotMB);

var terraSteelRm as AgglomerationRecipe = AgglomerationRecipe
    .create()
    .output(<botania:manaresource:4>)
    .inputs(<botania:manaresource:2>, <botania:manaresource>, <botania:manaresource:1>);

var terraSteelMB as AgglomerationMultiblock = AgglomerationMultiblock
    .create()
    .checker(<botania:shimmerrock>, <ore:blockLapis>);

var terraSteelRc as AgglomerationRecipe = AgglomerationRecipe
    .create()
    .output(<botania:manaresource:4>)
    .inputs(<ore:ingotElvenElementium>, <ore:ingotOsmium>, <ore:manaPearl>)
    .multiblock(terraSteelMB);

Agglomeration.removeRecipe(terraSteelRm);
Agglomeration.addRecipe(skyIngotRc);
Agglomeration.addRecipe(terraSteelRc);