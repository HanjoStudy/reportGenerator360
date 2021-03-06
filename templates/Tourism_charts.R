#######################################################
# R functions to generate charts and tables in Generic report
#
# asanchezrodelgo@ifc.org - Feb 2017
#######################################################
# Each R code chunk LaTeX will read is delimited by: ## ---- label ----

## ---- parameters ----
couName <- countryNames[countryNames$Country==c,]$Country
couISO2 <- .getISO2(couName)
# Load data. This doesn't work, I'm afraid
Report_data <- ReportDataList[[input_reportID]]
reportConfig <- ReportConfigList[[input_reportID]]
dataDesc <- dataDescList[[input_reportID]]
########## Header ##########

## ---- figure_sparkline1 ----
figure_sparkline(Report_data,reportConfig,couName,"figure1",rankBig=FALSE)

## ---- figure_sparkline2 ----
figure_sparkline(Report_data,reportConfig,couName, "figure2",rankBig=FALSE)

## ---- figure_sparkline3 ----
figure_sparkline(Report_data,reportConfig,couName, "figure3",rankBig=FALSE)

## ---- figure_sparkline4 ----
figure_sparkline(Report_data,reportConfig,couName, "figure4",rankBig=FALSE)

## ---- figure_sparkline5 ----
figure_sparkline(Report_data,reportConfig,couName, "figure5",rankBig=TRUE)

## ---- figure_sparkline6 ----
figure_sparkline(Report_data,reportConfig,couName, "figure6",rankBig=FALSE)

########## Tourism Demand and Supply ##########

## ---- line1.1 ----
line_chart(Report_data,reportConfig,couName,reportConfig$Section[1],"line1",minTime="2005",neighbor="region",max_neighbors = 1)

## ---- line1.2 ----
line_chart(Report_data,reportConfig,couName,reportConfig$Section[1],"line2",minTime="2005",neighbor="region",max_neighbors = 0)

########## Resource Base ###############

## ---- number1.1 ----
number_chart(Report_data,reportConfig,couName,reportConfig$Section[2],c("radar6","radar7"),str_wrap_size=30,rankBig=TRUE)

## ---- number1.2 ----
number_chart(Report_data,reportConfig,couName,reportConfig$Section[1:4],"radar9",str_wrap_size=30,rankBig=TRUE)

########## Tourism Economic Indicators ##########

## ---- pie2.1 ----
pie_chart_region(Report_data,reportConfig,couName, reportConfig$Section[3],"pie2",neighbor = "region", region=TRUE)

## ---- pie2.2 ----
pie_chart_region(Report_data,reportConfig,couName, reportConfig$Section[3],"number2",neighbor = "region",region=TRUE)

## ---- radar3.1 ----
radar_chart(Report_data,reportConfig,couName,reportConfig$Section[1:4],c("radar1","radar2","radar4","radar5"),neighbor = "region")

## ---- bar2.1 ----
bar_chart(Report_data,reportConfig,couName, reportConfig$Section[1:4],c("bar1","bar2","bar3"),paste_unit = FALSE, percentBar = TRUE)

## ---- number2.1 ----
number_chart(Report_data,reportConfig,couName,reportConfig$Section[1:4],"line5",str_wrap_size=30,rankBig=FALSE,includeUnit = FALSE)

## ---- bar2.2 ----
bar_chart(Report_data,reportConfig,couName, reportConfig$Section[1:4],"line3",paste_unit = FALSE)

## ---- number4.1 ----
number_chart(Report_data,reportConfig,couName,reportConfig$Section[1:4],"radar3",str_wrap_size=30,rankBig=TRUE)

########## Other Competitiveness Indicators

## ---- number4.2 ----
number_chart(Report_data,reportConfig,couName,reportConfig$Section[1:4],c("radar4","radar8"),str_wrap_size=30,rankBig=TRUE)

## ---- number4.3 ----
number_chart(Report_data,reportConfig,couName,reportConfig$Section[1:4],c("radar5"),str_wrap_size=30,rankBig=TRUE)




