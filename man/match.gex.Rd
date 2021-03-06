% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/match.gex.R
\name{match.gex}
\alias{match.gex}
\title{Match gene expression matrices by gene ID}
\usage{
match.gex(train_pcg, my_pcg)
}
\arguments{
\item{train_pcg}{Gene expression matric with gene IDs as column names}

\item{my_pcg}{Gene expression matric with gene IDs as column names}
}
\value{
A list containing two matrices with common genes
}
\description{
Returns expression matrices with common genes
}
\examples{
temp <- match.gex(GA.pcg, HS.pcg)
Matched.GA.pcg <- data.matrix(temp[[1]])
Matched.HS.pcg <- data.matrix(temp[[2]])

}
