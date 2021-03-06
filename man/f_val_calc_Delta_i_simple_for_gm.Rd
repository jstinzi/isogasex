% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f_val_calc_Delta_i_simple_for_gm.R
\name{f_val_calc_Delta_i_simple_for_gm}
\alias{f_val_calc_Delta_i_simple_for_gm}
\title{Delta_i simple for gm, predicted discrimination including boundary layer effects but not decarboxylation effects}
\usage{
f_val_calc_Delta_i_simple_for_gm(a, b, a_b, pa, ps, pi)
}
\arguments{
\item{a}{xxxPARAMxxx}

\item{b}{xxxPARAMxxx}

\item{a_b}{xxxPARAMxxx}

\item{pa}{xxxPARAMxxx}

\item{ps}{xxxPARAMxxx}

\item{pi}{xxxPARAMxxx}
}
\value{
Delta_i_simple_for_gm xxxRETURNxxx
}
\description{
\deqn{Delta_i_simple_for_gm = a_b * ((pa - ps) / pa) + a*((ps - pi) / pa) + b * (pi / pa)}
}
