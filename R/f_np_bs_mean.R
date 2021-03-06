#' calculate NP BS mean
#'
#' Resample from data with replacement, calculating mean of n nonparametric bootstrap resamples.
#'
#' @param x xxxPARAMxxx
#' @param first_ind xxxPARAMxxx
#' @param last_ind xxxPARAMxxx
#' @param n_sam xxxPARAMxxx
#' @param n xxxPARAMxxx
#'
#' @return x_mean xxxRETURNxxx
#'
f_np_bs_mean <-
function# calculate NP BS mean
###
(x
###
, first_ind
###
, last_ind
###
, n_sam
###
, n
###
)
{
  ##details<<
  ## Resample from data with replacement, calculating mean of n nonparametric bootstrap resamples.
  x_mean <- rep(0,n);
  for (i_bs in 1:n) {
    x_mean[i_bs] <- mean( sample(x=x[seq(first_ind[i_bs],last_ind[i_bs])], size=n_sam[i_bs], replace=TRUE), na.rm=TRUE);
  };

  return( x_mean );
  ### x_mean
}

