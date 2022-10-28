# This is an example function named 'Kaya Equation'
# which expresses yearly CO2 emissions

#' Calculation of co2 Emissions yearly
#'
#' @param pop numeric indicating Population size (in millions)
#' @param gdp numeric indicating GDP per capita (in 1000$/person)
#' @param enInt numeric indicating Energy intensity (in Gigajoule/$1000GDP)
#' @param carbInt numeric indicating Carbon intensity (in tonnes CO2/Gigajoule)
#'
#' @return numeric representing yearly co2 emissions of a country
#' @author Thuy Ngoc Phuong Ta
#' @export
#'
#' @examples
#' Kaya_equation(82.4,44,5,0.05)
Kaya_equation <- function(pop, gdp, enInt, carbInt) {
  co2 = pop * gdp * enInt * carbInt
  return(co2)
}

# Inputs of Germany:
  # pop = 82.4
  # gdp = 44
  # enInt = 5
  # carbInt = 0.05

# Calculating co2 emissions of Germany
Kaya_equation(82.4,44,5,0.05)
# 906.4
