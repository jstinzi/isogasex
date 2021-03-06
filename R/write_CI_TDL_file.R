#' write output section: TDL file
#'
#' Write observed TDL values with BS CIs for all time points.
#'
#' @param val xxxPARAMxxx
#' @param TDL_cycle xxxPARAMxxx
#' @param output_CI_TDL_fn xxxPARAMxxx
#'
#' @return val$write xxxRETURNxxx
#'
write_CI_TDL_file <-
function# write_output section: TDL file
### Write observed TDL values with BS CIs for all time points.
(val
###
, TDL_cycle
###
, output_CI_TDL_fn
###
)
{

  val$write$CI_TDL <- paste(
     "date"
    ,"time"
    ,"site"
    ,"site_name"
    ,"first_ind"
    ,"ind"
    ,"n_sam"
    ,"conc12CO2_CI_L"           ,"conc12CO2_CI_U"              #,"conc12CO2"
    ,"conc13CO2_CI_L"           ,"conc13CO2_CI_U"              #,"conc13CO2"
    ,"TGApressure_CI_L"         ,"TGApressure_CI_U"            #,"TGApressure"
    ,"MassFlow1_CI_L"           ,"MassFlow1_CI_U"              #,"MassFlow1"
    ,"Pressure1_CI_L"           ,"Pressure1_CI_U"              #,"Pressure1"
    ,"MassFlow2_CI_L"           ,"MassFlow2_CI_U"              #,"MassFlow2"
    ,"Pressure2_CI_L"           ,"Pressure2_CI_U"              #,"Pressure2"
    ,"PressureProMan_CI_L"      ,"PressureProMan_CI_U"         #,"PressureProMan"
    ,"interp_tank_hi_12_CI_L"   ,"interp_tank_hi_12_CI_U"      #,"interp_tank_hi_12"
    ,"interp_tank_hi_13_CI_L"   ,"interp_tank_hi_13_CI_U"      #,"interp_tank_hi_13"
    ,"interp_tank_low_12_CI_L"  ,"interp_tank_low_12_CI_U"     #,"interp_tank_low_12"
    ,"interp_tank_low_13_CI_L"  ,"interp_tank_low_13_CI_U"     #,"interp_tank_low_13"
    ,"interp_reference_12_CI_L" ,"interp_reference_12_CI_U"    #,"interp_reference_12"
    ,"interp_reference_13_CI_L" ,"interp_reference_13_CI_U"    #,"interp_reference_13"
    ,"chamber_12_CI_L"          ,"chamber_12_CI_U"             #,"chamber_12"
    ,"chamber_13_CI_L"          ,"chamber_13_CI_U"             #,"chamber_13"
    , sep=",");

  for (i_time in 1:val$sum$TDL$n) {
    val$write$CI_TDL <-
      rbind( val$write$CI_TDL
        ,paste(
           format(val$sum$TDL$time[i_time],format="%Y-%m-%d")
          ,val$sum$TDL$site[i_time]
          ,TDL_cycle$table_name[(TDL_cycle$table[,1] == val$sum$TDL$site[i_time])]
          ,val$sum$TDL$first_ind[i_time]
          ,val$sum$TDL$ind[i_time]
          ,val$sum$TDL$n_sam[i_time]
          ,val$CI$TDL$conc12CO2[i_time,1]           ,val$CI$TDL$conc12CO2[i_time,2]                   #,val$sum$TDL$conc12CO2[i_time]
          ,val$CI$TDL$conc13CO2[i_time,1]           ,val$CI$TDL$conc13CO2[i_time,2]                   #,val$sum$TDL$conc13CO2[i_time]
          ,val$CI$TDL$TGApressure[i_time,1]         ,val$CI$TDL$TGApressure[i_time,2]                 #,val$sum$TDL$TGApressure[i_time]
          ,val$CI$TDL$MassFlow1[i_time,1]           ,val$CI$TDL$MassFlow1[i_time,2]                   #,val$sum$TDL$MassFlow1[i_time]
          ,val$CI$TDL$Pressure1[i_time,1]           ,val$CI$TDL$Pressure1[i_time,2]                   #,val$sum$TDL$Pressure1[i_time]
          ,val$CI$TDL$MassFlow2[i_time,1]           ,val$CI$TDL$MassFlow2[i_time,2]                   #,val$sum$TDL$MassFlow2[i_time]
          ,val$CI$TDL$Pressure2[i_time,1]           ,val$CI$TDL$Pressure2[i_time,2]                   #,val$sum$TDL$Pressure2[i_time]
          ,val$CI$TDL$PressureProMan[i_time,1]      ,val$CI$TDL$PressureProMan[i_time,2]              #,val$sum$TDL$PressureProMan[i_time]
          ,val$CI$TDL$interp_tank_hi_12[i_time,1]   ,val$CI$TDL$interp_tank_hi_12[i_time,2]           #,val$sum$TDL$interp_tank_hi_12[i_time]
          ,val$CI$TDL$interp_tank_hi_13[i_time,1]   ,val$CI$TDL$interp_tank_hi_13[i_time,2]           #,val$sum$TDL$interp_tank_hi_13[i_time]
          ,val$CI$TDL$interp_tank_low_12[i_time,1]  ,val$CI$TDL$interp_tank_low_12[i_time,2]          #,val$sum$TDL$interp_tank_low_12[i_time]
          ,val$CI$TDL$interp_tank_low_13[i_time,1]  ,val$CI$TDL$interp_tank_low_13[i_time,2]          #,val$sum$TDL$interp_tank_low_13[i_time]
          ,val$CI$TDL$interp_reference_12[i_time,1] ,val$CI$TDL$interp_reference_12[i_time,2]         #,val$sum$TDL$interp_reference_12[i_time]
          ,val$CI$TDL$interp_reference_13[i_time,1] ,val$CI$TDL$interp_reference_13[i_time,2]         #,val$sum$TDL$interp_reference_13[i_time]
          ,val$CI$TDL$chamber_12[i_time,1]          ,val$CI$TDL$chamber_12[i_time,2]                  #,val$sum$TDL$chamber_12[i_time]
          ,val$CI$TDL$chamber_13[i_time,1]          ,val$CI$TDL$chamber_13[i_time,2]                  #,val$sum$TDL$chamber_13[i_time]
          , sep=",")
      )
  }

  write(val$write$CI_TDL, file=output_CI_TDL_fn, append=FALSE);#, colnames=FALSE, row.names=FALSE)

  return( val$write );
  ### val$write
}

