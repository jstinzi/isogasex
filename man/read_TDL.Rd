% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_TDL.R
\name{read_TDL}
\alias{read_TDL}
\title{read TDL file}
\usage{
read_TDL(TDL_fn, sw)
}
\arguments{
\item{TDL_fn}{xxxPARAMxxx}

\item{sw}{xxxPARAMxxx}
}
\value{
TDL xxxRETURNxxx
}
\description{
See \code{\link{val_TDL_Licor_variables}} for expected column names.
}
\details{
Create \code{TDL} to hold data.

Read TDL file

Report times where cycle times when TDL program was not running 2/9/2012 1:18AM.

Remove non-cycle times from head of TDL file.

Keep all points (including where TDL program was not running in middle).

Keep all the time values available for Licor/TDL time merge.
}
