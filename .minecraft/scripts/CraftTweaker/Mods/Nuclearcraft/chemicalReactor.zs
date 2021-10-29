#priority 5
#modloaded atutils

import mods.nuclearcraft.ChemicalReactor;

ChemicalReactor.removeRecipeWithOutput(<liquid:diborane> * 5000, null);

ChemicalReactor.addRecipe(<liquid:boron> * 114, <liquid:hydrogen> * 1500, <liquid:diborane> * 5000, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:ammonia> * 500, null);

ChemicalReactor.addRecipe(<liquid:nitrogen> * 250, <liquid:hydrogen> * 750, <liquid:ammonia> * 500, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:water> * 250, null);

ChemicalReactor.addRecipe(<liquid:oxygen> * 250, <liquid:hydrogen> * 500, <liquid:water> * 250, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:heavy_water> * 250, null);

ChemicalReactor.addRecipe(<liquid:oxygen> * 250, <liquid:deuterium> * 500, <liquid:heavy_water> * 250, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hydrofluoric_acid> * 250, null);

ChemicalReactor.addRecipe(<liquid:fluorine> * 250, <liquid:hydrogen> * 250, <liquid:hydrofluoric_acid> * 250, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lif> * 72, null);

ChemicalReactor.addRecipe(<liquid:fluorine> * 250, <liquid:lithium> * 72, <liquid:lif> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:sulfur_dioxide> * 500, null);

ChemicalReactor.addRecipe(<liquid:sulfur> * 333, <liquid:oxygen> * 500, <liquid:sulfur_dioxide> * 500, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:bef2> * 72, null);

ChemicalReactor.addRecipe(<liquid:fluorine> * 250, <liquid:beryllium> * 72, <liquid:bef2> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:sulfur_trioxide> * 500, null);

ChemicalReactor.addRecipe(<liquid:sulfur_dioxide> * 500, <liquid:oxygen> * 250, <liquid:sulfur_trioxide> * 500, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:sulfuric_acid> * 500, null);

ChemicalReactor.addRecipe(<liquid:sulfur_trioxide> * 250, <liquid:water> * 250, <liquid:sulfuric_acid> * 500, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:ethanol> * 2000, <liquid:carbon_dioxide> * 2000);

ChemicalReactor.addRecipe(<liquid:sugar> * 72, <liquid:water> * 500, <liquid:ethanol> * 2000, <liquid:carbon_dioxide> * 2000, "0.5", "2");