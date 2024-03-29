% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regexpr.R
\name{set_PCRE}
\alias{set_PCRE}
\alias{set_TRE}
\alias{use_perl}
\alias{set_regexpr_style}
\alias{auto_set_regexpr_style}
\title{switch regular expression style (PCRE vs TRE)}
\usage{
set_PCRE()

set_TRE()

use_perl()

set_regexpr_style(style)

auto_set_regexpr_style()
}
\arguments{
\item{style}{one of 'PCRE' or 'TRE'}
}
\value{
logical value of whether use perl
}
\description{
The \code{set_regexpr_style()} allows user to specify which style to be used,
while the \code{auto_set_regexpr_style()} automatically set the style depdending on
the operating system (TRE for Windows and PCRE for other OSs (Linux and Mac)).
}
\details{
\code{set_PCRE()} force to use PCRE style while \code{set_TRE()} force to use TRE.

Note that all these functions are not change the behavior of \code{gsub()} and \code{regexpr()}.
The functions are just set a global option to store the user's choice of whether using \code{perl = TRUE}.

Users can access the option via \code{use_perl()} and pass the return value to \code{gusb()} or \code{regexpr()} to specify the style in use.
}
\references{
\url{https://stackoverflow.com/questions/47240375/regular-expressions-in-base-r-perl-true-vs-the-default-pcre-vs-tre}
}
\author{
Guangchuang Yu
}
