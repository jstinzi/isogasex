#' Plot gm point simple and complex, internal leaf (mesophyll) conductance calculated for every D value ignoring and estimating decarboxylation effects
#'
#' Plots the input variables.
#'
#' @param chamber_Totalgm_point_simple xxxPARAMxxx
#' @param chamber_12gm_point_simple xxxPARAMxxx
#' @param chamber_13gm_point_simple xxxPARAMxxx
#' @param chamber_Totalgm_point_complex xxxPARAMxxx
#' @param x_time xxxPARAMxxx
#' @param plot_format_list xxxPARAMxxx
#' @param output_fn_prefix xxxPARAMxxx
#'
#' @return NULL xxxRETURNxxx
#' @importFrom graphics par
#'
plot_gm <-
function# Plot gm point simple and complex, internal leaf (mesophyll) conductance calculated for every D value ignoring and estimating decarboxylation effects
###
(chamber_Totalgm_point_simple
###
, chamber_12gm_point_simple
###
, chamber_13gm_point_simple
###
, chamber_Totalgm_point_complex
###
, x_time
###
, plot_format_list
###
, output_fn_prefix
###
)
{
  ##details<<
  ## Plots the input variables.

  for (i_plot in plot_format_list)
  {
    plot_filename <- "plot_gm_internal_conductance";
    s_plot_settings_begin_end(output_fn_prefix, plot_filename, plot_mode = "begin", plot_format = i_plot);

    graphics::par(mfrow=c(4,1), mar=c(4,4,2,2), oma=c(1,1,1,1));  # mar allows the histograms to touch top-bottom c(bot,lef,top,rig)
    plot_not_na(x_time, chamber_Totalgm_point_simple , pch=20, type="l", ylab="", main="Total gm point simple, ignoring decarboxylation effects");
    plot_not_na(x_time, chamber_12gm_point_simple    , pch=20, type="l", ylab="", main="12 gm point simple, ignoring decarboxylation effects");
    plot_not_na(x_time, chamber_13gm_point_simple    , pch=20, type="l", ylab="", main="13 gm point simple, ignoring decarboxylation effects");
    plot_not_na(x_time, chamber_Totalgm_point_complex, pch=20, type="l", ylab="", main="Total gm point complex, estimating decarboxylation effects");

    #axis(3); axis(4); # add axis labels to top and right sides
    s_plot_settings_begin_end(output_fn_prefix, plot_filename, plot_mode = "end", i_plot);
  } # plotting loop

  invisible(NULL);
  ### NULL
}

