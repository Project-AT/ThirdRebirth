#priority 5
#modloaded atutils

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.extendedcrafting.TableCrafting;

function tableCraftingUtils(output as IItemStack, input as IIngredient[][]) {
	recipes.remove(output.withAmount(1));
	TableCrafting.addShaped(0, output, input);
}

TableCrafting.remove(<extendedcrafting:crafting_core>);
tableCraftingUtils(<extendedcrafting:crafting_core>, [
	[<ore:blockTough>, <ore:plateTough>, <extendedcrafting:material:10>, <ore:plateTough>, <ore:blockTough>], 
	[<ore:plateTough>, <ore:ingotTough>, <ore:circuitElite>, <ore:ingotTough>, <ore:plateTough>], 
	[<extendedcrafting:material:16>, <ore:circuitElite>, <extendedcrafting:frame>, <ore:circuitElite>, <extendedcrafting:material:16>], 
	[<ore:plateTough>, <ore:ingotTough>, <ore:circuitElite>, <ore:ingotTough>, <ore:plateTough>], 
	[<ore:blockTough>, <extendedcrafting:material:18>, <extendedcrafting:material:16>, <extendedcrafting:material:18>, <ore:blockTough>]
]);

TableCrafting.remove(<extendedcrafting:material:24>);
tableCraftingUtils(<extendedcrafting:material:24> * 2, [
	[<ore:manaDiamond>, <naturesaura:sky_ingot>, <ore:ingotLumium>, <ore:gemRime>, <ore:ingotLumium>, <naturesaura:sky_ingot>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <ore:ingotCrystallineAlloy>, <ore:ingotSoularium>, <ore:nuggetNetherStar>, <ore:ingotSoularium>, <ore:ingotCrystallineAlloy>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <ore:ingotCrystallineAlloy>, <ore:ingotSoularium>, <ore:nuggetNetherStar>, <ore:ingotSoularium>, <ore:ingotCrystallineAlloy>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <naturesaura:sky_ingot>, <ore:ingotLumium>, <ore:gemRime>, <ore:ingotLumium>, <naturesaura:sky_ingot>, <ore:manaDiamond>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
]);

tableCraftingUtils(<extendedcrafting:interface>, [
	[null, <ore:ingotTough>, <ore:ingotTough>, <extendedcrafting:material:10>, <ore:ingotTough>, <ore:ingotTough>, null], 
	[<ore:ingotTough>, <ore:alloyElite>, <ore:blockTough>, <appliedenergistics2:material:23>, <ore:blockTough>, <ore:alloyElite>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:blockTough>, <extendedcrafting:material:16>, <ore:circuitElite>, <extendedcrafting:material:16>, <ore:blockTough>, <ore:ingotTough>], 
	[<ore:ingotTough>, <appliedenergistics2:material:22>, <extendedcrafting:material:10>, <extendedcrafting:frame>, <extendedcrafting:material:10>, <appliedenergistics2:material:22>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:blockTough>, <extendedcrafting:material:18>, <ore:circuitElite>, <extendedcrafting:material:18>, <ore:blockTough>, <ore:ingotTough>], 
	[<ore:ingotTough>, <ore:alloyElite>, <ore:blockTough>, <appliedenergistics2:material:23>, <ore:blockTough>, <ore:alloyElite>, <ore:ingotTough>], 
	[null, <ore:ingotTough>, <ore:ingotTough>, <extendedcrafting:material:12>, <ore:ingotTough>, <ore:ingotTough>, null]
]);

tableCraftingUtils(<advancedrocketry:fueltank>, [
	[null, <ore:plateAdvanced>, <immersiveengineering:metal_device0:6>, <ore:plateAdvanced>, null], 
	[<ore:plateAdvanced>, null, null, null, <ore:plateAdvanced>], 
	[<ore:plateAdvanced>, null, null, null, <ore:plateAdvanced>], 
	[<ore:plateAdvanced>, null, null, null, <ore:plateAdvanced>], 
	[null, <ore:plateAdvanced>, <immersiveengineering:metal_device0:6>, <ore:plateAdvanced>, null]
]);

tableCraftingUtils(<advancedrocketry:advrocketmotor>, [
	[<ore:ingotTitaniumAluminide>, <ore:ingotTitaniumAluminide>, <ore:ingotExtreme>, <ore:ingotTitaniumAluminide>, <ore:ingotTitaniumAluminide>], 
	[<ore:ingotTitaniumAluminide>, <ore:ingotExtreme>, <ore:ingotExtreme>, <ore:ingotExtreme>, <ore:ingotTitaniumAluminide>], 
	[<ore:ingotTitaniumAluminide>, <simplyjetpacks:metaitemmods:11>, <ore:ingotExtreme>, <simplyjetpacks:metaitemmods:11>, <ore:ingotTitaniumAluminide>], 
	[<ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>], 
	[<ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>, null, <ore:ingotSiCSiCCMC>]
]);

tableCraftingUtils(<advancedrocketry:rocketmotor>, [
	[<ore:ingotHighStrengthAluminumAlloy>, <ore:ingotHighStrengthAluminumAlloy>, <ore:ingotTough>, <ore:ingotHighStrengthAluminumAlloy>, <ore:ingotHighStrengthAluminumAlloy>], 
	[<ore:ingotHighStrengthAluminumAlloy>, <ore:ingotTough>, <ore:ingotTough>, <ore:ingotTough>, <ore:ingotHighStrengthAluminumAlloy>], 
	[<ore:ingotHighStrengthAluminumAlloy>, <simplyjetpacks:metaitemmods:10>, <ore:ingotTough>, <simplyjetpacks:metaitemmods:10>, <ore:ingotHighStrengthAluminumAlloy>], 
	[<ore:ingotSiCSiCCMC>, <simplyjetpacks:metaitemmods:10>, null, <simplyjetpacks:metaitemmods:10>, <ore:ingotSiCSiCCMC>], 
	[<ore:ingotSiCSiCCMC>, null, null, null, <ore:ingotSiCSiCCMC>]
]);

tableCraftingUtils(<appliedenergistics2:molecular_assembler>, [
	[<ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>, <ore:fusedQuartz>, <ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>], 
	[<ore:stickHighStrengthAluminumAlloy>, <extendedcrafting:material:8>, <appliedenergistics2:material:24>, <extendedcrafting:material:8>, <ore:stickHighStrengthAluminumAlloy>], 
	[<ore:fusedQuartz>, <appliedenergistics2:material:24>, <extendedcrafting:table_basic>, <appliedenergistics2:material:24>, <ore:fusedQuartz>], 
	[<ore:stickHighStrengthAluminumAlloy>, <extendedcrafting:material:8>, <appliedenergistics2:material:24>, <extendedcrafting:material:8>, <ore:stickHighStrengthAluminumAlloy>], 
	[<ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>, <ore:fusedQuartz>, <ore:stickHighStrengthAluminumAlloy>, <ore:stickHighStrengthAluminumAlloy>]
]);

tableCraftingUtils(<appliedenergistics2:controller>, [
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:dustSignalum>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<appliedenergistics2:material:1>, <appliedenergistics2:material:24>, <ore:circuitBasic>, <appliedenergistics2:material:24>, <appliedenergistics2:material:1>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:dustSignalum>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>]
]);

tableCraftingUtils(<appliedenergistics2:drive>, [
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:crystalFluix>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:crystalFluix>, <appliedenergistics2:material:24>, <ore:pearlFluix>, <appliedenergistics2:material:24>, <ore:crystalFluix>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:pearlFluix>, <matteroverdrive:me_conversion_matrix>, <ore:pearlFluix>, <appliedenergistics2:material:1>, <ore:crystalFluix>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:crystalFluix>, <appliedenergistics2:material:24>, <ore:pearlFluix>, <appliedenergistics2:material:24>, <ore:crystalFluix>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:crystalFluix>, <appliedenergistics2:material:1>, <ore:plateHighStrengthAluminumAlloy>], 
	[<ore:plateHighStrengthAluminumAlloy>, <ore:plateTough>, <ore:plateTough>, <ore:plateTough>, <ore:plateTough>, <ore:plateTough>, <ore:plateHighStrengthAluminumAlloy>]
]);

tableCraftingUtils(<draconicevolution:crafting_injector:1>, [
	[<ore:ingotTritanium>, <ore:ingotTritanium>, null, <ore:ingotTritanium>, <ore:ingotTritanium>], 
	[<ore:ingotExtreme>, <rftools:dimensional_shard>, <draconicevolution:wyvern_core>, <rftools:dimensional_shard>, <ore:ingotExtreme>], 
	[<ore:alloyAdvanced>, <draconicevolution:draconic_core>, <ore:gemDilithium>, <draconicevolution:draconic_core>, <ore:alloyAdvanced>], 
	[<ore:alloyAdvanced>, <matteroverdrive:s_magnet>, <ore:blockDraconium>, <matteroverdrive:s_magnet>, <ore:alloyAdvanced>], 
	[<ore:ingotExtreme>, <rftools:dimensional_shard>, <draconicevolution:crafting_injector>, <rftools:dimensional_shard>, <ore:ingotExtreme>]
]);

tableCraftingUtils(<draconicevolution:wyvern_core>, [
	[null, <ore:ingotDraconium>, <ore:alloyAdvanced>, <ore:ingotDraconium>, null], 
	[<ore:ingotDraconium>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotExtreme>, <ore:ingotDraconium>], 
	[<ore:alloyAdvanced>, <ore:ingotTritanium>, <ore:circuitAdvanced>, <ore:ingotTritanium>, <ore:alloyAdvanced>], 
	[<ore:ingotDraconium>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotExtreme>, <ore:ingotDraconium>], 
	[null, <ore:ingotDraconium>, <ore:alloyAdvanced>, <ore:ingotDraconium>, null]
]);

tableCraftingUtils(<draconicevolution:crafting_injector:2>, [
	[null, null, null, <draconicevolution:wyvern_core>, null, null, null], 
	[<rftools:dimensional_shard>, <ore:alloyElite>, <draconicevolution:wyvern_core>, <draconicevolution:awakened_core>, <draconicevolution:wyvern_core>, <ore:alloyElite>, <rftools:dimensional_shard>], 
	[<ore:gemDilithium>, <ore:ingotExtreme>, <ore:alloyElite>, <rftools:dimensional_shard>, <ore:alloyElite>, <ore:ingotExtreme>, <ore:gemDilithium>], 
	[<ore:ingotTritanium>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotTritanium>], 
	[<ore:ingotTritanium>, <ore:gemDilithium>, <matteroverdrive:s_magnet>, <ore:blockDraconiumAwakened>, <matteroverdrive:s_magnet>, <ore:gemDilithium>, <ore:ingotTritanium>], 
	[<ore:ingotTritanium>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <draconicevolution:crafting_injector:1>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotTritanium>], 
	[<rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotExtreme>, <rftools:dimensional_shard>]
]);

tableCraftingUtils(<draconicevolution:crafting_injector:3>, [
	[<rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <draconicevolution:awakened_core>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>, <rftools:dimensional_shard>], 
	[<ore:ingotCrystaltine>, <ore:gemDilithium>, <ore:ingotCrystaltine>, <draconicevolution:awakened_core>, <draconicevolution:chaotic_core>, <draconicevolution:awakened_core>, <ore:ingotCrystaltine>, <ore:gemDilithium>, <ore:ingotCrystaltine>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <matteroverdrive:s_magnet>, <ore:gemDilithium>, <ore:ingotExtreme>, <ore:gemDilithium>, <matteroverdrive:s_magnet>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <matteroverdrive:s_magnet>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <matteroverdrive:s_magnet>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <ore:gemDilithium>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:gemDilithium>, <ore:alloyUltimate>], 
	[<matteroverdrive:s_magnet>, <ore:ingotExtreme>, <ore:alloyUltimate>, <rftools:dimensional_shard>, <draconicevolution:crafting_injector:2>, <rftools:dimensional_shard>, <ore:alloyUltimate>, <ore:ingotExtreme>, <matteroverdrive:s_magnet>], 
	[<ore:alloyUltimate>, <ore:gemDilithium>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <rftools:dimensional_shard>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:gemDilithium>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <matteroverdrive:s_magnet>, <ore:ingotExtreme>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <ore:ingotExtreme>, <matteroverdrive:s_magnet>, <ore:alloyUltimate>], 
	[<ore:alloyUltimate>, <ore:ingotDraconiumAwakened>, <matteroverdrive:s_magnet>, <ore:gemDilithium>, <ore:ingotExtreme>, <ore:gemDilithium>, <matteroverdrive:s_magnet>, <ore:ingotDraconiumAwakened>, <ore:alloyUltimate>]
]);

tableCraftingUtils(<matteroverdrive:s_magnet>, [
	[null, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>, null], 
	[<ore:ingotTritanium>, <ore:dustSignalum>, <ore:ingotEnderium>, <ore:dustSignalum>, <ore:ingotTritanium>], 
	[<ore:dustSignalum>, <ore:dustSignalum>, <ore:ingotEnderium>, <ore:dustSignalum>, <ore:dustSignalum>], 
	[<ore:ingotTritanium>, <ore:dustSignalum>, <ore:ingotEnderium>, <ore:dustSignalum>, <ore:ingotTritanium>], 
	[null, <ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>, null]
]);

tableCraftingUtils(<matteroverdrive:h_compensator>, [
	[null, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, null], 
	[<ore:plateTritanium>, <ore:gemDilithium>, <extendedcrafting:material:48>, <ore:gemDilithium>, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:plateTritanium>], 
	[<ore:plateTritanium>, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:circuitElite>, <ore:gemDilithium>, <extendedcrafting:material:48>, <ore:plateTritanium>], 
	[<ore:plateTritanium>, <extendedcrafting:material:48>, <ore:ingotExtreme>, <ore:gemDilithium>, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:plateTritanium>], 
	[<ore:plateTritanium>, <extendedcrafting:material:48>, <ore:ingotExtreme>, <ore:ingotSignalum>, <ore:ingotExtreme>, <extendedcrafting:material:48>, <ore:plateTritanium>], 
	[null, <ore:plateTritanium>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:plateTritanium>, null], 
	[null, null, <ore:plateTritanium>, <ore:plateTritanium>, <ore:plateTritanium>, null, null]
]);

tableCraftingUtils(<matteroverdrive:me_conversion_matrix>, [
	[null, null, <ore:ingotUltimate>, <extendedcrafting:material:48>, <ore:ingotUltimate>, null, null], 
	[null, <ore:ingotUltimate>, <extendedcrafting:material:48>, <ore:circuitElite>, <extendedcrafting:material:48>, <ore:ingotUltimate>, null], 
	[null, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:crystalPureFluix>, <ore:gemDilithium>, <extendedcrafting:material:48>, null], 
	[null, <extendedcrafting:material:48>, <appliedenergistics2:material:44>, <ore:crystalPureFluix>, <appliedenergistics2:material:43>, <extendedcrafting:material:48>, null], 
	[null, <extendedcrafting:material:48>, <ore:gemDilithium>, <ore:crystalPureFluix>, <ore:gemDilithium>, <extendedcrafting:material:48>, null], 
	[null, <ore:ingotUltimate>, <extendedcrafting:material:48>, <ore:circuitElite>, <extendedcrafting:material:48>, <ore:ingotUltimate>, null], 
	[null, null, <ore:ingotUltimate>, <extendedcrafting:material:48>, <ore:ingotUltimate>, null, null]
]);

tableCraftingUtils(<mekanism:controlcircuit:1> * 4, [
	[<ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>], 
	[<ore:dustOsmium>, <ore:circuitBasic>, <ore:dustSignalum>, <ore:circuitBasic>, <ore:dustOsmium>], 
	[<ore:alloyAdvanced>, <ore:dustSignalum>, <enderio:item_basic_capacitor:2>, <ore:dustSignalum>, <ore:alloyAdvanced>], 
	[<ore:dustOsmium>, <ore:circuitBasic>, <ore:dustSignalum>, <ore:circuitBasic>, <ore:dustOsmium>], 
	[<ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>, <ore:dustOsmium>, <ore:alloyAdvanced>]
]);

tableCraftingUtils(<mekanism:controlcircuit:2> * 8, [
	[null, <ore:dustGermanium>, <ore:alloyElite>, <ore:dustPlatinum>, <ore:alloyElite>, <ore:dustGermanium>, null], 
	[<ore:dustGermanium>, <ore:circuitAdvanced>, <ore:skullGuardianDiode>, <ore:circuitAdvanced>, <enderio:item_basic_capacitor:2>, <ore:circuitAdvanced>, <ore:dustGermanium>], 
	[<ore:alloyElite>, <enderio:item_basic_capacitor:2>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <ore:skullGuardianDiode>, <ore:alloyElite>], 
	[<ore:dustPlatinum>, <ore:circuitAdvanced>, <ore:itemInfinityGoop>, <ore:skullEnderResonator>, <ore:itemInfinityGoop>, <ore:circuitAdvanced>, <ore:dustPlatinum>], 
	[<ore:alloyElite>, <ore:skullGuardianDiode>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <ore:itemInfinityGoop>, <enderio:item_basic_capacitor:2>, <ore:alloyElite>], 
	[<ore:dustGermanium>, <ore:circuitAdvanced>, <enderio:item_basic_capacitor:2>, <ore:circuitAdvanced>, <ore:skullGuardianDiode>, <ore:circuitAdvanced>, <ore:dustGermanium>], 
	[null, <ore:dustGermanium>, <ore:alloyElite>, <ore:dustPlatinum>, <ore:alloyElite>, <ore:dustGermanium>, null]
]);

tableCraftingUtils(<mekanism:controlcircuit:3> * 12, [
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