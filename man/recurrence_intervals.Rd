% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recurrence_bin_functions.R
\name{recurrence_intervals}
\alias{recurrence_intervals}
\title{Calculate Recurrence Intervals Between Motor Units or Neuron Discharge Trains}
\usage{
recurrence_intervals(motor_unit_1, motor_unit_2, order = 1)
}
\arguments{
\item{motor_unit_1, motor_unit_2}{Numeric vectors of strictly increasing
numbers denoting sequential discharge times of a motor unit or neuron or
any strictly increasing point process.}

\item{order}{Numeric as a positive integer for the number of forward and
backward orders for calculating recurrence times. Default = 1.}
}
\value{
A list of lists containing the names of each discharge train used,
  number of discharges, the interspike intervals (ISI), mean ISI, and the
  recurrence times associated with each order.
}
\description{
Take two vectors representing time points of motor unit or neuron discharges
and calculate multi-order recurrence times between them. This function will
return recurrence times in whatever unit is input but will only accept
numeric vectors (e.g. 0.01 sec, 25 ms, or 17.5 minutes).
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
}
\keyword{action}
\keyword{discharge}
\keyword{motor}
\keyword{potentials,}
\keyword{recurrence,}
\keyword{trains}
\keyword{unit,}
