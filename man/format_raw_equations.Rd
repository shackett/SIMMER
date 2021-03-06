% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MCMC_NNLS_functions.R
\name{format_raw_equations}
\alias{format_raw_equations}
\title{Format raw equations}
\usage{
format_raw_equations(rxnSummary, kinetically_differing_isoenzymes)
}
\arguments{
\item{rxnSummary}{a list containing a reaction equation to fit (several forms of it) and multi-omic data}

\item{kinetically_differing_isoenzymes}{True-False: does only one equation exist for the reaction (false)
or are are reaction equations isoenzyme specific (true)}
}
\value{
list containing the occupancy (non-linear) equations expecting metabolomic data
in either linear or log2 space
}
\description{
Using reaction forms in \code{rxnSummary} format equations as expressions that can be evaluated.
}

