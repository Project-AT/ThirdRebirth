#priority 5
#modloaded atutils

import crafttweaker.liquid.ILiquidStack;

import mods.nuclearcraft.ChemicalReactor;

var recipes as ILiquidStack[][ILiquidStack[]] = {
    [<liquid:diborane> * 500, null] : [<liquid:boron> * 114, <liquid:hydrogen> * 1500],
    [<liquid:ammonia> * 500, null] : [<liquid:nitrogen> * 250, <liquid:hydrogen> * 750],
    [<liquid:water> * 250, null] : [<liquid:hydrogen> * 500, <liquid:water> * 250],
    [<liquid:heavy_water> * 250, null] : [<liquid:oxygen> * 250, <liquid:deuterium> * 500],
    [<liquid:hydrofluoric_acid> * 250, null] : [<liquid:fluorine> * 250, <liquid:hydrogen> * 250],
    [<liquid:lif> * 72, null] : [<liquid:fluorine> * 250, <liquid:lithium> * 72],
    [<liquid:sulfur_dioxide> * 500, null] : [<liquid:sulfur> * 333, <liquid:oxygen> * 500],
    [<liquid:bef2> * 72, null] : [<liquid:fluorine> * 250, <liquid:beryllium> * 72],
    [<liquid:sulfur_trioxide> * 500, null] : [<liquid:sulfur_dioxide> * 500, <liquid:oxygen> * 250],
    [<liquid:sulfuric_acid> * 250, null] : [<liquid:sulfur_trioxide> * 250, <liquid:water> * 250],
    [<liquid:oxygen_difluoride> * 500, null] : [<liquid:oxygen> * 250, <liquid:fluorine> * 500],
    [<liquid:methanol> * 250, null] : [<liquid:carbon_monoxide> * 250, <liquid:hydrogen> * 500],
    [<liquid:bas> * 333, null] : [<liquid:boron> * 72, <liquid:arsenic> * 333],
    [<liquid:alumina> * 144, null] : [<liquid:alugentum> * 72, <liquid:oxygen> * 300],
    [<liquid:tbu_fluoride> * 72, null] : [<liquid:tbu> * 72, <liquid:fluorine> * 500],
    [<liquid:leu_233_fluoride> * 72, null] : [<liquid:leu_233> * 72, <liquid:fluorine> * 500],
    [<liquid:heu_233_fluoride> * 72, null] : [<liquid:heu_233> * 72, <liquid:fluorine> * 500],
    [<liquid:leu_235_fluoride> * 72, null] : [<liquid:leu_235> * 72, <liquid:fluorine> * 500],
    [<liquid:heu_235_fluoride> * 72, null] : [<liquid:heu_235> * 72, <liquid:fluorine> * 500],
    [<liquid:len_236_fluoride> * 72, null] : [<liquid:len_236> * 72, <liquid:fluorine> * 500],
    [<liquid:hen_236_fluoride> * 72, null] : [<liquid:hen_236> * 72, <liquid:fluorine> * 500],
    [<liquid:lep_239_fluoride> * 72, null] : [<liquid:lep_239> * 72, <liquid:fluorine> * 500],
    [<liquid:hep_239_fluoride> * 72, null] : [<liquid:hep_239> * 72, <liquid:fluorine> * 500],
    [<liquid:lep_241_fluoride> * 72, null] : [<liquid:lep_241> * 72, <liquid:fluorine> * 500],
    [<liquid:hep_241_fluoride> * 72, null] : [<liquid:hep_241> * 72, <liquid:fluorine> * 500],
    [<liquid:mix_239_fluoride> * 72, null] : [<liquid:mix_239> * 72, <liquid:fluorine> * 500],
    [<liquid:mix_241_fluoride> * 72, null] : [<liquid:mix_241> * 72, <liquid:fluorine> * 500],
    [<liquid:lea_242_fluoride> * 72, null] : [<liquid:lea_242> * 72, <liquid:fluorine> * 500],
    [<liquid:hea_242_fluoride> * 72, null] : [<liquid:hea_242> * 72, <liquid:fluorine> * 500],
    [<liquid:lecm_243_fluoride> * 72, null] : [<liquid:lecm_243> * 72, <liquid:fluorine> * 500],
    [<liquid:hecm_243_fluoride> * 72, null] : [<liquid:hecm_243> * 72, <liquid:fluorine> * 500],
    [<liquid:lecm_245_fluoride> * 72, null] : [<liquid:lecm_245> * 72, <liquid:fluorine> * 500],
    [<liquid:hecm_245_fluoride> * 72, null] : [<liquid:hecm_245> * 72, <liquid:fluorine> * 500],
    [<liquid:lecm_247_fluoride> * 72, null] : [<liquid:lecm_247> * 72, <liquid:fluorine> * 500],
    [<liquid:hecm_247_fluoride> * 72, null] : [<liquid:hecm_247> * 72, <liquid:fluorine> * 500],
    [<liquid:leb_248_fluoride> * 72, null] : [<liquid:leb_248> * 72, <liquid:fluorine> * 500],
    [<liquid:heb_248_fluoride> * 72, null] : [<liquid:heb_248> * 72, <liquid:fluorine> * 500],
    [<liquid:lecf_249_fluoride> * 72, null] : [<liquid:lecf_249> * 72, <liquid:fluorine> * 500],
    [<liquid:hecf_249_fluoride> * 72, null] : [<liquid:hecf_249> * 72, <liquid:fluorine> * 500],
    [<liquid:lecf_251_fluoride> * 72, null] : [<liquid:lecf_251> * 72, <liquid:fluorine> * 500],
    [<liquid:hecf_251_fluoride> * 72, null] : [<liquid:hecf_251> * 72, <liquid:fluorine> * 500],
    [<liquid:ethanol> * 2000, <liquid:carbon_dioxide> * 2000] : [<liquid:sugar> * 72, <liquid:water> * 500],
    [<liquid:boric_acid> * 500, <liquid:hydrogen> * 1500] : [<liquid:diborane> * 250, <liquid:water> * 500],
    [<liquid:boron_nitride_solution> * 333, <liquid:water> * 1000] : [<liquid:boric_acid> * 500, <liquid:ammonia> * 500],
    [<liquid:calcium_sulfate_solution> * 333, <liquid:hydrofluoric_acid> * 1000] : [<liquid:fluorite> * 333, <liquid:sulfuric_acid> * 500],
    [<liquid:sodium_hydroxide_solution> * 333, <liquid:hydrofluoric_acid> * 500] : [<liquid:sodium_fluoride_solution> * 333, <liquid:water> * 500],
    [<liquid:potassium_hydroxide_solution> * 333, <liquid:hydrofluoric_acid> * 500] : [<liquid:potassium_fluoride_solution> * 333, <liquid:water> * 500],
    [<liquid:borax_solution> * 333, <liquid:hydrofluoric_acid> * 1000] : [<liquid:sodium_fluoride_solution> * 666, <liquid:boric_acid> * 2000],
    [<liquid:oxygen> * 250, <liquid:hydrofluoric_acid> * 500] : [<liquid:oxygen_difluoride> * 250, <liquid:water> * 250],
    [<liquid:sulfur_trioxide> * 250, <liquid:fluorine> * 250] : [<liquid:oxygen_difluoride> * 250, <liquid:sulfur_dioxide> * 250],
    [<liquid:fluoromethane> * 250, <liquid:water> * 250] : [<liquid:methanol> * 250, <liquid:hydrofluoric_acid> * 250],
    [<liquid:ethene> * 250, <liquid:sodium_fluoride_solution> * 333] : [<liquid:fluoromethane> * 500, <liquid:naoh> * 333],
    [<liquid:ethene> * 250, <liquid:potassium_fluoride_solution> * 333] : [<liquid:fluoromethane> * 500, <liquid:koh> * 333],
};

for key, value in recipes {
    ChemicalReactor.removeRecipeWithOutput(key[0], key[1]);
    ChemicalReactor.addRecipe(value[0], value[1], key[0], key[1], "0.5", "2");
}