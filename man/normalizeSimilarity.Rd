% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalizeSimilarity.R
\name{normalizeSimilarity}
\alias{normalizeSimilarity}
\title{Calculate similarity indices}
\usage{
normalizeSimilarity(NetMatrix, type = "association")
}
\arguments{
\item{NetMatrix}{is a coupling matrix obtained by the network functions \code{\link{biblioNetwork}} or \code{\link{cocMatrix}}.}

\item{type}{is a character. It can be "association", "jaccard", "inclusion","salton" or "equivalence" to obtain Association Strength, Jaccard, 
Inclusion, Salton or Equivalence similarity index respectively. The default is \code{type = "association"}.}
}
\value{
a similarity matrix.
}
\description{
It calculates a relative measure of bibliographic co-occurrences.
}
\details{
\code{couplingSimilarity} calculates Association strength, Inclusion, Jaccard or Salton similarity from a co-occurrence bibliographic matrix.

The association strength is used by Van Eck and Waltman (2007) and Van Eck et al. (2006). Several works refer to the measure as the proximity index, 
while Leydesdorff (2008)and Zitt et al. (2000) refer to it as the probabilistic affinity (or activity) index. 
 
The inclusion index, also called Simpson coefficient, is an overlap measure used in information retrieval.

The Jaccard index (or Jaccard similarity coefficient) gives us a relative measure of the overlap of two sets. 
It is calcultated as the ratio between the intersection and the union of the reference lists (of two manuscripts).

The Salton index, instead, relates the intersection of the two lists to the geometric mean of the size of both sets.
The square of Salton index is also called Equivalence index.

The indices are equal to zero if the intersection of the reference lists is empty.
}
\examples{

data(scientometrics)
NetMatrix <- biblioNetwork(scientometrics, analysis = "co-occurrences", 
              network = "keywords", sep = ";")
S=normalizeSimilarity(NetMatrix, type = "association")

}
\seealso{
\code{\link{biblioNetwork}} function to compute a bibliographic network.

\code{\link{cocMatrix}} to compute a bibliographic bipartite network.
}
