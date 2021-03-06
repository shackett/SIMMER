% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MCMC_NNLS_functions.R
\name{summarize_kinetic_parameters}
\alias{summarize_kinetic_parameters}
\title{Summarize kinetic parameters}
\usage{
summarize_kinetic_parameters(rxnSummary, rxnEquations,
  kinetically_differing_isoenzymes)
}
\arguments{
\item{rxnSummary}{a list containing a reaction equation to fit (several forms of it) and multi-omic data}

\item{rxnEquations}{expressions for reaction equations}

\item{kinetically_differing_isoenzymes}{True-False: does only one equation exist for the reaction (false)
or are are reaction equations isoenzyme specific (true)}
}
\value{
writes summary of kinetic parameter table (kineticPars) and types of all reaciton species (all_species)
to global environment
}
\description{
# based on metabolites and enzyme data provided, determine the kinetic constants that are present in the reaction equations from \code{\link{format_raw_equations}}
}

