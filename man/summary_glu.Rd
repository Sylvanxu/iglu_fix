% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary_glu.R
\name{summary_glu}
\alias{summary_glu}
\title{Calculate summary glucose level}
\usage{
summary_glu(data)
}
\arguments{
\item{data}{DataFrame object with column names "id", "time", and "gl",
or numeric vector of glucose values.}
}
\value{
If a DataFrame object is passed, then a tibble object with
a column for subject id and then a column for each summary value is returned. If a vector of glucose
values is passed, then a tibble object without the subject id is returned.
`as.numeric()` can be wrapped around the latter to output a numeric vector with
values in order of Min, 1st Quantile, Median, Mean, 3rd Quantile and Max.
}
\description{
The function `summary_glu` is a wrapper for the base function
`summary()`. Output is a tibble object with subject id and the summary value:
Minimum, 1st Quantile, Median, Mean, 3rd Quantile and Max.
}
\details{
A tibble object with 1 row for each subject, a column for subject id and
a column for each of summary values is returned. `NA` glucose values are
omitted from the  calculation of the summary values.
}
\examples{
data(example_data_1_subject)
summary_glu(example_data_1_subject)

data(example_data_5_subject)
summary_glu(example_data_5_subject)

}
