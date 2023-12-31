% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addTxTable.R
\name{addTxTable}
\alias{addTxTable}
\title{Add a gene-specific transcript table to a 
     \linkS4class{GuideSet} object.}
\usage{
addTxTable(guideSet, gene_id, txObject, valueColumn = "percentCDS")
}
\arguments{
\item{guideSet}{A \linkS4class{GuideSet} object or a 
\linkS4class{PairedGuideSet} object.}

\item{gene_id}{String specifying gene ID.}

\item{txObject}{A \linkS4class{TxDb} object or a
\linkS4class{GRangesList} object obtained using
\code{\link{TxDb2GRangesList}} to provide a 
gene model annotation.}

\item{valueColumn}{String specifying column in
\code{geneAnnotation(guideSet)} to use as values in the 
output transcript table.}
}
\value{
A \linkS4class{GuideSet} object with a "txTable" DataFrame
    stored in \code{mcols(guideSet)}. The entries in the DataFrame
    correspond to the values specified by \code{valueColumn}.
    Rows correspond to gRNAs in the GuideSet, columns correspond to 
    all transcripts found in \code{txObject} for gene specified by
    \code{gene_id}.
}
\description{
Add a gene-specific transcript table to a 
     \linkS4class{GuideSet} object.

Add a gene-specific transcript table to a 
     \linkS4class{GuideSet} object.
}
\examples{
if (interactive()){
    data(guideSetExample, package="crisprDesign")
    data(grListExample, package="crisprDesign")
    guideSet <- addGeneAnnotation(guideSetExample,
                                  txObject=grListExample)
    guideSet <- addTxTable(guideSet,
                           gene_id="ENSG00000120645",
                           txObject=grListExample)

    guideSet$txTable
}

}
\seealso{
\code{\link{addGeneAnnotation}} to add gene annotation.
}
\author{
Jean-Philippe Fortin
}
