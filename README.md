# projectRpkg
Repository for R package for final project

This R package contains a number of functions to create a numeric vector of mortality rates from a Gompertz model for a heterogeneous population containing n sub-populations. The length of this vector is from 0 to the upper age limit of the population, usually 110, *i.e.* giving a length of 111. 

It is an implementation of the formulae and algorithms in Avraam *et al*, "A mathematical model of mortality dynamics across the lifespan combining heterogeneity and stochastic effect" (2013):

<img src="https://render.githubusercontent.com/render/math?math=
\begin{align*}
m_{i} = \frac{ \displaystyle \sum_{j=1}^{n} \frac{\rho_{ji} m_{j0} e^{\beta_{j}i}}{1+0.5 m_{j0} e^{\beta_{j} i}} }{1-0.5 \displaystyle \sum_{j=1}^{n} \frac{\rho_{ji} m_{j0} e^{\beta_{j}i}}{1+0.5 m_{j0} e^{\beta_{j} i}}} \\
\\
\rho_{ji} = \frac{\rho_{j0} \displaystyle \prod_{k=0}^{i-1} \left(  \frac{1-0.5 m_{j0} e^{\beta_{j}k}}{1+0.5 m_{j0} e^{\beta_{j}k}} \right)}{\displaystyle \sum_{s=1}^n \left( \rho_{s0} \prod_{k=0}^{i-1} \left( \frac{1-0.5 m_{s0} e^{\beta_{s}k}}{1+0.5 m_{s0} e^{\beta_{s}k}} \right) \right) } 
\end{align*}">

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

