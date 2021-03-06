# Run this script to generate all the country PDF reports and load them into the 
# read folder of the shinyTCMN app
##################################
# setwd() to handle images and other files
setwd('/Users/asanchez3/Desktop/Work/reportGenerator360/')
source('global_utils.R') # data and functions needed
source('helper_functions.R') # charts and table functions needed
#source(paste0("templates/",input_reportID,"_charts.R"))
# Create the data reports --------------------------------------
exclude <- c("Channel Islands","Virgin Islands (U.S.)","Northern Mariana Islands",
             "Marshall Islands","Greenland","Gibraltar","Cayman Islands","British Virgin Islands",
             "St. Martin (French part)","Sint Maarten (Dutch part)")
processed <- c()
for (couName in filter(countries, !(name %in% exclude))$name) {
#for (couName in c("China","Spain","Sweden")) {
  .reportGenerator(couName, input_reportID)
  # if (!(substr(c,1,1)=="(") & !(filter(countries, name==c)$iso3=="")){
  #   iso3 <- .getCountryCode(c)
  #   knit2pdf('PDF_LaTeX.Rnw', clean = TRUE,
  #            encoding = "UTF-8",
  #            output = paste0(input_reportID,"_",iso3,".tex"))
  #   # copy file to pdf directory
  #   file.copy(paste0(input_reportID,"_",iso3,".pdf"), paste0("templates/",input_reportID,"_final_pdf/"),overwrite=TRUE)
  #   file.remove(paste0(input_reportID,"_",iso3,".pdf"))
  #   file.remove(paste0(input_reportID,"_",iso3,".tex"))
  #   processed <- c(processed,c)
  # }
}
