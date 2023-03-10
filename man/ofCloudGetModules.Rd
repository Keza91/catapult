% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ofCloud.R
\name{ofCloudGetModules}
\alias{ofCloudGetModules}
\title{return the modules allocated to the account, like \code{'HighFrequencyData'} \emph{etc.}}
\usage{
ofCloudGetModules(credentials)
}
\arguments{
\item{credentials}{as returned by \code{\link{ofCloudGetToken}}, \code{\link{safe_ofCloudGetToken}} or \code{\link{safe_ofCloudGetTokenEx}}}
}
\value{
\code{ofCloudGetModules} returns a data frame with modules.
}
\description{
Returns a data frame with modules.
}
\seealso{
Other cloud metadata access APIs: 
\code{\link{ofCloudGetBands}()},
\code{\link{ofCloudGetCustomerInfo}()},
\code{\link{ofCloudGetParameters}()},
\code{\link{ofCloudGetStatistics}()},
\code{\link{ofCloudGetTeams}()},
\code{\link{ofCloudGetUserSettings}()},
\code{\link{ofCloudGetVenues}()}
}
\concept{cloud metadata access APIs}
