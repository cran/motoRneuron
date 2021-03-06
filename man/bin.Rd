% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recurrence_bin_functions.R
\name{bin}
\alias{bin}
\title{Bin Recurrence Times}
\usage{
bin(recurrences, binwidth = 0.001)
}
\arguments{
\item{recurrences}{Numeric vector representing recurrence times.}

\item{binwidth}{Numeric. Default = 0.001 (0.001 second or 1 ms). This must
have the same significant digits as the recurrences parameter.}
}
\value{
data frame containing frequency data.
}
\description{
Discretizes recurrence times vector into a data frame according to specified
binwidth parameter. A recurrence time of "0" indicates two events happening
simultaneously. The "0" bin is treated as the center.
}
\examples{
  x <- c(0.035, 0.115, 0.183, 0.250, 0.306, 0.377, 0.455, 0.512, 0.577,
  0.656, 0.739, 0.821, 0.866, 0.950, 1.014, 1.085, 1.153, 1.213, 1.279,
  1.355, 1.431, 1.482, 1.551, 1.631, 1.692, 1.749, 1.832, 1.897, 1.964,
  2.106, 2.149, 2.229, 2.302, 2.384, 2.420, 2.505, 2.592, 2.644, 2.722,
  2.801, 2.870, 2.926, 3.011, 3.098, 2.030, 3.183, 3.252, 3.319, 3.395,
  3.469, 3.560, 3.589, 3.666, 3.744, 3.828, 3.876, 3.943, 4.020, 4.104)
  x <- sort(x)
  y <- sort(jitter(x))
  y <- round(y, digits = 3)
  z <- recurrence_intervals(x, y, order = 1)
  a <- unlist(z[10])
  b <- bin(a, binwidth = 0.001)
}
\keyword{action}
\keyword{bin,}
\keyword{discharge}
\keyword{group,}
\keyword{motor}
\keyword{potentials,}
\keyword{trains}
\keyword{unit,}
