#priority 5
#modloaded atutils

import crafttweaker.block.IBlockState;
import mods.roots.predicates.Predicates;
import mods.roots.predicates.BlockStateBelow;
import mods.roots.predicates.PropertyPredicate;
import mods.roots.Transmutation;

Transmutation.addStateToStateRecipe("spruce_to_glowstone", 
    PropertyPredicate.create(<blockstate:minecraft:stone:variant=granite> as IBlockState, "variant"),
    <blockstate:quark:biome_cobblestone>, BlockStateBelow.create(Predicates.Lava));
