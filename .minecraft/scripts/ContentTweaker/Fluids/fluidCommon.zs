#priority 20
#modloaded atutils
#loader contenttweaker

import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

import scripts.grassUtils.CotUtils;

CotUtils.addFluid("glaze_slurry", 0xABCDEF, 600, 3000, 3000, 0, true);

//High Density Polyethylene
var hdpe as Fluid = VanillaFactory.createFluid("hdpe", 0x000000);
hdpe.colorize = false;
hdpe.temperature = 350;
hdpe.viscosity = 800;
hdpe.density = 680;
hdpe.luminosity = 1;
hdpe.stillLocation = "contenttweaker:fluids/hdpe_still";
hdpe.flowingLocation = "contenttweaker:fluids/hdpe_flow";
hdpe.register();