#' offset (12C Offset, 13C Offset) using hi tank
#'
#' \deqn{offset = true_value_hi - (gain * cal.tank_hi)}
#'
#' @param true_value_hi_12C xxxPARAMxxx
#' @param true_value_hi_13C xxxPARAMxxx
#' @param gain_12C xxxPARAMxxx
#' @param gain_13C xxxPARAMxxx
#' @param cal_tank_hi_12C xxxPARAMxxx
#' @param cal_tank_hi_13C xxxPARAMxxx
#'
#' @return offset for 12C and 13C
#'
f_val_calc_offset <-
function# offset (12C Offset, 13C Offset) using hi tank
###
(true_value_hi_12C
###
, true_value_hi_13C
###
, gain_12C
###
, gain_13C
###
, cal_tank_hi_12C
###
, cal_tank_hi_13C
###
)
{
  offset <- list();  # create a list to return with data

  ##details<<
  ##\deqn{offset = true_value_hi - (gain * cal.tank_hi)}
  offset$offset_12C <- true_value_hi_12C - (gain_12C * cal_tank_hi_12C);
  offset$offset_13C <- true_value_hi_13C - (gain_13C * cal_tank_hi_13C);

  return( offset );
  ### offset for 12C and 13C
}

