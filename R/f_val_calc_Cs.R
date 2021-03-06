#' Cs, ppm CO2 concentration at the leaf surface, cs calculated from eq 40 Ball 1987 Ch 20 Stomatal Function, eds Zeiger, Farquhar, Cowan
#'
#' \deqn{Cs = (((gbc - (E / 2000)) * Co) - A) / (gbc + (E / 2000))}
#'
#' @param gbc xxxPARAMxxx
#' @param E xxxPARAMxxx
#' @param Co xxxPARAMxxx
#' @param A xxxPARAMxxx
#'
#' @return Cs xxxRETURNxxx
#'
f_val_calc_Cs <-
function# Cs, ppm CO2 concentration at the leaf surface, cs calculated from eq 40 Ball 1987 Ch 20 Stomatal Function, eds Zeiger, Farquhar, Cowan
###
(gbc
###
, E
###
, Co
###
, A
###
)
  # E = Trimmol
{
  ##details<<
  ##\deqn{Cs = (((gbc - (E / 2000)) * Co) - A) / (gbc + (E / 2000))}
  Cs <- (((gbc - (E / 2000)) * Co) - A) / (gbc + (E / 2000));

  return( Cs );
  ### Cs
}

