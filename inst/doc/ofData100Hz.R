## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(catapultR)
suppressMessages(suppressWarnings(library(dplyr)))

## ---- include = TRUE,  comment = "", echo=TRUE--------------------------------
sCSV <- ofDataFileCSV()
hiFreq <- read_CATcsv(sCSV)
df <- hiFreq$data
if (suppressMessages(suppressWarnings(require("ggplot2"))))
{
	g <- ggplot(df, aes(seq_len(NROW(df)))) + geom_line(aes(y=RawPlayerLoad)) + labs(x = "ticks (cs)", y = "Smoothed PL")
	plot(g)
}

