# First, import all necessary packages
library(usethis)
library(devtools)
library(checkmate)


#' Calculation of either the tonnes of Carbon instead of CO2 Emissions yearly
#' or the CO2 emissions
#'
#' @param pop numeric indicating Population size (in millions)
#' @param gdp numeric indicating GDP per capita (in 1000$/person)
#' @param enInt numeric indicating Energy intensity (in Gigajoule/$1000GDP)
#' @param carbInt numeric indicating Carbon intensity (in tonnes CO2/Gigajoule)
#' @param output_type character either "CO2" or "C"
#'
#' @return numeric representing yearly co2 emissions of a country
#' @author Thuy Ngoc Phuong Ta
#' @export
#'
#' @examples
#' Kaya_equation(82.4, 44, 5, 0.05, "CO2")
Kaya_equation<- function(pop, gdp, enInt, carbInt, output_type = "CO2") {
  checkmate::assert_numeric(pop, any.missing = FALSE, lower = 0)
  checkmate::assert_numeric(gdp, any.missing = FALSE, lower = 0)
  checkmate::assert_numeric(enInt, any.missing = FALSE, lower = 0)
  checkmate::assert_numeric(carbInt, any.missing = FALSE, lower = 0)
  checkmate::assert_choice(output_type, c("CO2", "C"))

  co2 = pop * gdp * enInt * carbInt
  if(output_type == "CO2"){
    return(co2)
  }
  else
  {
    return(co2/3.67)
  }

}

# Inputs of Germany:
# pop = 82.4
# gdp = 44
# enInt = 5
# carbInt = 0.05

# Calculating co2 emissions of Germany
Kaya_equation(82.4,44,5,0.05,"CO2")
# 906.4

# Calculating the tonnes of Carbon (C)
Kaya_equation(82.4,44,5,0.05, "C")
# 246.9755

