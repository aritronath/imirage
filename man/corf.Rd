% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corf.R
\name{corf}
\alias{corf}
\title{Filter training gene expression features}
\usage{
corf(train_pcg, train_mir, gene_index, num = 50, target = "none")
}
\arguments{
\item{train_pcg}{training protein coding expression dataset. a numeric matrix with row names
indicating samples, and column names indicating protein coding gene IDs.}

\item{train_mir}{training miRNA expression dataset. a numeric matrix with row names indicating
samples, and column names indicating miRNA IDs}

\item{gene_index}{either gene name (character) or index (column number) of the miRNA to be imputed.}

\item{num}{number of informative protein coding genes to be used in constructing imputation model.
Default is 50 genes.}

\item{target}{"none" (default), "ts.pairs", or dataframe/matrix/list.
this argument accepts character strings to indicate the use of all candidate genes as predictors ("none),
or use built-in TargetScan miRNA-gene pairs ("ts.pairs"). also accepts a dataframe , matrix or list object
containing a column with names of miRNA and a column with the names of target genes.}
}
\value{
a numeric matrix containing subset of protein coding genes correlated with miRNA of interest.
}
\description{
Internal function used by \link[iMIRAGE]{imirage.cv}, \link[iMIRAGE]{imirage.cv.loop},
and \link[iMIRAGE]{imirage.cv} to filter informative protein coding genes based on correlation with
miRNA expression.
}
