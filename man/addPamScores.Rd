% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/addPamScores.R
\name{addPamScores}
\alias{addPamScores}
\alias{addPamScores,GuideSet-method}
\alias{addPamScores,PairedGuideSet-method}
\alias{addPamScores,NULL-method}
\title{Add PAM scores to a \linkS4class{GuideSet} object.}
\usage{
addPamScores(object, ...)

\S4method{addPamScores}{GuideSet}(object)

\S4method{addPamScores}{PairedGuideSet}(object)

\S4method{addPamScores}{NULL}(object)
}
\arguments{
\item{object}{A \linkS4class{GuideSet} or a 
\linkS4class{PairedGuideSet} object.}

\item{...}{Additional arguments, currently ignored.}
}
\value{
\code{guideSet} with an appended \code{score_pam} column in
    \code{mcols(guideSet)}.
}
\description{
Add PAM scores to a \linkS4class{GuideSet} object
    based on the \linkS4class{CrisprNuclease} object stored in
    the \linkS4class{GuideSet} object. PAM scores indicate nuclease
    affinity (recognition) to different PAM sequences.
    A score of 1 indicates a PAM sequence that is fully
    recognized by the nuclease.
}
\examples{

# Using character vector as input:
data(enAsCas12a, package="crisprBase")
gs <- findSpacers("CCAACATAGTGAAACCACGTCTCTATAAAGAATACAAAAAATTAGCCGGGTGTTA",
                  canonical=FALSE,
                  crisprNuclease=enAsCas12a)
gs <- addPamScores(gs)

}
\author{
Jean-Philippe Fortin
}
