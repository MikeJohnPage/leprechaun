% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update.R
\name{update_scaffold}
\alias{update_scaffold}
\title{Update}
\usage{
update_scaffold(force = FALSE)
}
\arguments{
\item{force}{Force update, ignore safety checks.}
}
\description{
Update the scaffolded code to a new version of
leprechaun.
}
\details{
This reads the content of the \code{.leprechaun} lock file
and updates it too.
}
