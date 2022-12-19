## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(catapultR)

## ---- include = TRUE,  comment = "", echo=TRUE--------------------------------
if (suppressMessages(require("DT")))
{
	x <- suppressMessages(readr::read_csv(of10HzDataFileCSV()))
	DT::datatable(x) %>% DT::formatRound('x', 3) %>% DT::formatRound('y', 3)
}

## ---- include = TRUE,  comment = "", echo=TRUE, results='asis'----------------
cat(paste('- ', ima_events()), sep='\n')

## ---- include = TRUE,  comment = "", echo=TRUE, eval=FALSE--------------------
#  token <- ofCloudGetToken("APAC", "sergey", "password", "clientID", "clientSecret")
#  to <- as.integer(Sys.time()); from <- to - 7*24*60*60
#  activities <- ofCloudGetActivities(token, to = to, from = from)
#  athletes <- ofCloudGetAthletesInActivity(token, activities$id[1])
#  events <- ofCloudGetActivityEvents(token, athletes$id[1], activities$id[1], c("ima_acceleration", "ima_impact"))
#  eventsAcceleration <- events[["ima_acceleration"]]
#  eventsImpact <- events[["ima_impact"]]

## ---- include = TRUE,  comment = "", echo=TRUE--------------------------------
if (suppressMessages(require("DT")))
{
	x <- suppressMessages(readr::read_csv(ofIMAFileCSV()))
	DT::datatable(x)
}

## ---- include = TRUE,  comment = "", echo=TRUE--------------------------------
if (suppressMessages(require("DT")))
{
	x <- suppressMessages(readr::read_csv(ofVelEffortsFileCSV()))
	DT::datatable(x)
}

