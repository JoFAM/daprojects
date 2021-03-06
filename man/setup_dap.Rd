% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setup_dap.R
\name{setup_dap}
\alias{setup_dap}
\title{Set up a project for data analysis.}
\usage{
setup_dap(path, desc = character(0), readme = TRUE, addexamples = FALSE,
  ...)
}
\arguments{
\item{path}{a character vector with the path where the project should be created.}

\item{desc}{a character vector with a short description of the project.
This will be used as title.}

\item{readme}{a logical value indicating whether or not the file README.md
should be created}

\item{addexamples}{a logical value indicating whether or not example
files should be copied into the new project.}

\item{...}{extra arguments captured from the project wizard.
currently ignored.}
}
\value{
NULL invisibly. This function is only called for its side effects.
}
\description{
This function sets up the project template for a simple data analysis.
It creates the directory structure, adds a file ProjectInfo.md and
sets up the main script.
}
\details{
This function is the binding in the dcf file that contains the project
definition.
}
