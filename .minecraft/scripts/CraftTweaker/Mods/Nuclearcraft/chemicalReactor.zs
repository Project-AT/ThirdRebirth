#priority 5
#modloaded atutils

import mods.nuclearcraft.ChemicalReactor;

ChemicalReactor.removeRecipeWithOutput(<liquid:diborane> * 500, null);

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

ChemicalReactor.removeRecipeWithOutput(<liquid:sulfuric_acid> * 250, null);

ChemicalReactor.addRecipe(<liquid:sulfur_trioxide> * 250, <liquid:water> * 250, <liquid:sulfuric_acid> * 500, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:ethanol> * 2000, <liquid:carbon_dioxide> * 2000);

ChemicalReactor.addRecipe(<liquid:sugar> * 72, <liquid:water> * 500, <liquid:ethanol> * 2000, <liquid:carbon_dioxide> * 2000, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:boric_acid> * 500, <liquid:hydrogen> * 1500);

ChemicalReactor.addRecipe(<liquid:diborane> * 250, <liquid:water> * 500, <liquid:boric_acid> * 500, <liquid:hydrogen> * 1500, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:boron_nitride_solution> * 333, <liquid:water> * 1000);

ChemicalReactor.addRecipe(<liquid:boric_acid> * 500, <liquid:ammonia> * 500, <liquid:boron_nitride_solution> * 333, <liquid:water> * 1000, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:calcium_sulfate_solution> * 333, <liquid:hydrofluoric_acid> * 1000);

ChemicalReactor.addRecipe(<liquid:fluorite> * 333, <liquid:sulfuric_acid> * 500, <liquid:calcium_sulfate_solution> * 333, <liquid:hydrofluoric_acid> * 1000, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:sodium_hydroxide_solution> * 333, <liquid:hydrofluoric_acid> * 500);

ChemicalReactor.addRecipe(<liquid:sodium_fluoride_solution> * 333, <liquid:water> * 500, <liquid:sodium_hydroxide_solution> * 333, <liquid:hydrofluoric_acid> * 500, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:potassium_hydroxide_solution> * 333, <liquid:hydrofluoric_acid> * 500);

ChemicalReactor.addRecipe(<liquid:potassium_fluoride_solution> * 333, <liquid:water> * 500, <liquid:potassium_hydroxide_solution> * 333, <liquid:hydrofluoric_acid> * 500, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:borax_solution> * 333, <liquid:hydrofluoric_acid> * 1000);

ChemicalReactor.addRecipe(<liquid:sodium_fluoride_solution> * 666, <liquid:boric_acid> * 2000, <liquid:borax_solution> * 333, <liquid:hydrofluoric_acid> * 1000, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:oxygen> * 250, <liquid:hydrofluoric_acid> * 500);

ChemicalReactor.addRecipe(<liquid:oxygen_difluoride> * 250, <liquid:water> * 250, <liquid:oxygen> * 250, <liquid:hydrofluoric_acid> * 500, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:sulfur_trioxide> * 250, <liquid:fluorine> * 250);

ChemicalReactor.addRecipe(<liquid:oxygen_difluoride> * 250, <liquid:sulfur_dioxide> * 250, <liquid:sulfur_trioxide> * 250, <liquid:fluorine> * 250, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:oxygen_difluoride> * 500, null);

ChemicalReactor.addRecipe(<liquid:oxygen> * 250, <liquid:fluorine> * 500, <liquid:oxygen_difluoride> * 500, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:methanol> * 250, null);

ChemicalReactor.addRecipe(<liquid:carbon_monoxide> * 250, <liquid:hydrogen> * 500, <liquid:methanol> * 250, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:fluoromethane> * 250, <liquid:water> * 250);

ChemicalReactor.addRecipe(<liquid:methanol> * 250, <liquid:hydrofluoric_acid> * 250, <liquid:fluoromethane> * 250, <liquid:water> * 250, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:ethene> * 250, <liquid:sodium_fluoride_solution> * 333);

ChemicalReactor.addRecipe(<liquid:fluoromethane> * 500, <liquid:naoh> * 333, <liquid:ethene> * 250, <liquid:sodium_fluoride_solution> * 333, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:ethene> * 250, <liquid:potassium_fluoride_solution> * 333);

ChemicalReactor.addRecipe(<liquid:fluoromethane> * 500, <liquid:koh> * 333, <liquid:ethene> * 250, <liquid:potassium_fluoride_solution> * 333, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:ethanol> * 250, <liquid:sulfur_trioxide> * 250);

ChemicalReactor.addRecipe(<liquid:ethene> * 250, <liquid:sulfuric_acid> * 250, <liquid:ethanol> * 250, <liquid:sulfur_trioxide> * 250, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:ethanol> * 250, <liquid:sulfur_trioxide> * 250);

ChemicalReactor.addRecipe(<liquid:ethene> * 250, <liquid:sulfuric_acid> * 250, <liquid:ethanol> * 250, <liquid:sulfur_trioxide> * 250, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:bas> * 333, null);

ChemicalReactor.addRecipe(<liquid:boron> * 72, <liquid:arsenic> * 333, <liquid:bas> * 333, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:alumina> * 144, <liquid:silver> * 72);

ChemicalReactor.addRecipe(<liquid:alugentum> * 72, <liquid:oxygen> * 300, <liquid:alumina> * 144, <liquid:silver> * 72, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:tbu_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:tbu> * 72, <liquid:fluorine> * 500, <liquid:tbu_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:leu_233_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:leu_233> * 72, <liquid:fluorine> * 500, <liquid:leu_233_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:heu_233_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:heu_233> * 72, <liquid:fluorine> * 500, <liquid:heu_233_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:leu_235_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:leu_235> * 72, <liquid:fluorine> * 500, <liquid:leu_235_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:heu_235_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:heu_235> * 72, <liquid:fluorine> * 500, <liquid:heu_235_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:len_236_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:len_236> * 72, <liquid:fluorine> * 500, <liquid:len_236_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hen_236_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hen_236> * 72, <liquid:fluorine> * 500, <liquid:hen_236_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lep_239_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lep_239> * 72, <liquid:fluorine> * 500, <liquid:lep_239_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hep_239_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hep_239> * 72, <liquid:fluorine> * 500, <liquid:hep_239_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lep_241_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lep_241> * 72, <liquid:fluorine> * 500, <liquid:lep_241_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hep_241_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hep_241> * 72, <liquid:fluorine> * 500, <liquid:hep_241_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:mix_239_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:mix_239> * 72, <liquid:fluorine> * 500, <liquid:mix_239_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:mix_241_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:mix_241> * 72, <liquid:fluorine> * 500, <liquid:mix_241_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lea_242_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lea_242> * 72, <liquid:fluorine> * 500, <liquid:lea_242_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hea_242_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hea_242> * 72, <liquid:fluorine> * 500, <liquid:hea_242_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lecm_243_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lecm_243> * 72, <liquid:fluorine> * 500, <liquid:lecm_243_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hecm_243_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hecm_243> * 72, <liquid:fluorine> * 500, <liquid:hecm_243_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lecm_245_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lecm_245> * 72, <liquid:fluorine> * 500, <liquid:lecm_245_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hecm_245_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hecm_245> * 72, <liquid:fluorine> * 500, <liquid:hecm_245_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lecm_247_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lecm_247> * 72, <liquid:fluorine> * 500, <liquid:lecm_247_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hecm_247_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hecm_247> * 72, <liquid:fluorine> * 500, <liquid:hecm_247_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:leb_248_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:leb_248> * 72, <liquid:fluorine> * 500, <liquid:leb_248_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:heb_248_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:heb_248> * 72, <liquid:fluorine> * 500, <liquid:heb_248_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lecf_249_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lecf_249> * 72, <liquid:fluorine> * 500, <liquid:lecf_249_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hecf_249_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hecf_249> * 72, <liquid:fluorine> * 500, <liquid:hecf_249_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:lecf_251_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:lecf_251> * 72, <liquid:fluorine> * 500, <liquid:lecf_251_fluoride> * 72, null, "0.5", "2");

ChemicalReactor.removeRecipeWithOutput(<liquid:hecf_251_fluoride> * 72, null);

ChemicalReactor.addRecipe(<liquid:hecf_251> * 72, <liquid:fluorine> * 500, <liquid:hecf_251_fluoride> * 72, null, "0.5", "2");