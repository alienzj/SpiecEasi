% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spiec-easi.R
\name{spiec.easi}
\alias{spiec.easi}
\alias{spiec.easi.phyloseq}
\alias{spiec.easi.otu_table}
\alias{spiec.easi.default}
\title{SPIEC-EASI pipeline}
\usage{
spiec.easi(data, ...)

\method{spiec.easi}{phyloseq}(data, ...)

\method{spiec.easi}{otu_table}(data, ...)

\method{spiec.easi}{default}(
  data,
  method = "glasso",
  sel.criterion = "stars",
  verbose = TRUE,
  pulsar.select = TRUE,
  pulsar.params = list(),
  icov.select = pulsar.select,
  icov.select.params = pulsar.params,
  lambda.log = TRUE,
  ...
)
}
\arguments{
\item{data}{For a matrix, non-normalized count OTU/data table with samples on rows and features/OTUs in columns. Can also by phyloseq or otu_table object.}

\item{...}{further arguments to \code{\link{sparseiCov}} / \code{huge}}

\item{method}{estimation method to use as a character string. Currently either 'glasso' or 'mb' (meinshausen-buhlmann's neighborhood selection)}

\item{sel.criterion}{character string specifying criterion/method for model selection. Accepts 'stars' [default], 'bstars' (Bounded StARS)}

\item{verbose}{flag to show progress messages}

\item{pulsar.select}{flag to perform model selection. Choices are TRUE/FALSE/'batch'}

\item{pulsar.params}{list of further arguments to \code{\link{pulsar}} or \code{\link{batch.pulsar}}. See the documentation for \code{\link{pulsar.params}}.}

\item{icov.select}{deprecated.}

\item{icov.select.params}{deprecated.}

\item{lambda.log}{should values of lambda be distributed logarithmically (\code{TRUE}) or linearly ()\code{FALSE}) between \code{lamba.min} and \code{lambda.max}?}
}
\description{
Run the whole SPIEC-EASI pipeline, from data transformation, sparse inverse covariance estimation and model selection.
Inputs are a non-normalized OTU table and pipeline options.
}
\seealso{
multi.spiec.easi
}
