#priority 5
#modloaded atutils

import scripts.grassUtils.RecipeUtils;

RecipeUtils.recipeTweak(true, <mekanism:basicblock:8>, [
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>],
    [<ore:plateSteel>, <ore:itemMachineChassi>, <ore:plateSteel>],
    [<ore:ingotTough>, <ore:plateSteel>, <ore:ingotTough>]
]);


mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:controlcircuit:1>*4, [
	[<ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>], 
	[<ore:dustOsmium>, <ore:circuitBasic>, <ore:dustSignalum>, <ore:circuitBasic>, <ore:dustOsmium>], 
	[<ore:alloyAdvanced>, <ore:dustSignalum>, <enderio:item_basic_capacitor:2>, <ore:dustSignalum>, <ore:alloyAdvanced>], 
	[<ore:dustOsmium>, <ore:circuitBasic>, <ore:dustSignalum>, <ore:circuitBasic>, <ore:dustOsmium>], 
	[<ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:controlcircuit:2>*8, [
	[null, <ore:dustGermanium>, <ore:alloyElite>, <ore:dustPlatinum>, <ore:alloyElite>, <ore:dustGermanium>, null], 
	[<ore:dustGermanium>, <ore:circuitAdvanced>, <ore:skullGuardianDiode>, <ore:circuitAdvanced>, <enderio:item_basic_capacitor:2>, <ore:circuitAdvanced>, <ore:dustGermanium>], 
	[<ore:alloyElite>, <enderio:item_basic_capacitor:2>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <ore:skullGuardianDiode>, <ore:alloyElite>], 
	[<ore:dustPlatinum>, <ore:circuitAdvanced>, <ore:itemInfinityGoop>, <ore:skullEnderResonator>, <ore:itemInfinityGoop>, <ore:circuitAdvanced>, <ore:dustPlatinum>], 
	[<ore:alloyElite>, <ore:skullGuardianDiode>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <enderio:item_basic_capacitor:2>, <ore:alloyElite>], 
	[<ore:dustGermanium>, <ore:circuitAdvanced>, <enderio:item_basic_capacitor:2>, <ore:circuitAdvanced>, <ore:skullGuardianDiode>, <ore:circuitAdvanced>, <ore:dustGermanium>], 
	[null, <ore:dustGermanium>, <ore:alloyElite>, <ore:dustPlatinum>, <ore:alloyElite>, <ore:dustGermanium>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:controlcircuit:3>*12, [
	[<ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <contenttweaker:si_gr_ge_transistor>, <ore:crystalPureFluix>, <matteroverdrive:trilithium_crystal>, <ore:crystalPureFluix>, <contenttweaker:si_gr_ge_transistor>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <enderio:item_basic_capacitor:2>, <ore:skullSentientEnder>, <matteroverdrive:trilithium_crystal>, <ore:skullSentientEnder>, <enderio:item_basic_capacitor:2>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <contenttweaker:si_gr_ge_transistor>, <ore:crystalPureFluix>, <matteroverdrive:trilithium_crystal>, <ore:crystalPureFluix>, <contenttweaker:si_gr_ge_transistor>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <contenttweaker:si_gr_ge_transistor>, <enderio:item_basic_capacitor:2>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:ingotExtreme>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotDraconiumAwakened>, <ore:circuitElite>, <ore:ingotExtreme>], 
	[<ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>, <ore:ingotExtreme>, <ore:alloyUltimate>]
]);
