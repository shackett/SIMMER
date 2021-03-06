## ------------------------------------------------------------------------
library(simmer)
options(stringsAsFactors = F)

## Load files describing valid reactions, species (their composition) both from the core SBML model and supplemented manual annotations

load_metabolic_model()

## Load files describing boundary conditions, reaction reversibility and auxotrophies

format_boundary_conditions()

## Setup matrices defining the stoichiometry of each reaction and how reactions will be constrained

### identify reaction that cannot carry flux based on inputs, outputs and directionality
infRxMet <- setup_FBA_constraints(return_infeasible = T, infRxMet = NULL)

#### prune infeasible reactions and format data for optimization
setup_FBA_constraints(return_infeasible = F, infRxMet)

# calculate fluxes using quadratic programming
inferred_fluxes <- calculate_QP_fluxes()

knitr::kable(head(dplyr::select(inferred_fluxes, reactionID:`P0.30`), 5))

# generate files to read into python for calculating upper and lower bounds on flux using FVA
# read_write_python_FVA(status = "write", directory = "~/Desktop/")


