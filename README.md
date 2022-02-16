# projectRpkg
Repository for R package for final project

This R package contains a number of functions to create a numeric vector of mortality rates from a Gompertz model for a heterogeneous population containing n sub-populations. The length of this vector is from 0 to the upper age limit of the population, usually 110, *i.e.* giving a length of 111. 

### Dependencies

`devtools` : need to `install.packages("devtools")`

### Loading the package

`library(devtools)`

`install("projectRpkg")`

### Usage

projectRpkg::gompertz()

### Inputs

- rho0: Numeric vector of length n of initial fractions of sub-populations within total population.
- m0: Numeric vector of length n of initial sub-population mortality rates.
- beta: Numeric vector of length n of sub-population rates of mortality dynamics.
- age_vec: Numeric vector of ages from 0 to upper age limit of population, <img src="https://render.githubusercontent.com/render/math?math=\omega">.

### Returns

Outputs a numeric vector of mortality rates for the heterogeneous population of length 0:<img src="https://render.githubusercontent.com/render/math?math=\omega">.

### Examples

```{r}
age_vec <- 0:110
rho0 <- c(0.5, 0.5); m0 <- c(0.01, 0.002); beta <- c(0.039, 0.039)
mrates <- gompertz(rho0, m0, beta, age_vec)
```

