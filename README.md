## Linear Regression to Predict MPG

For this project, we are starting with a baseline p-Value Significance Level of 0.05. With this in mind, looking at the summary output of the Multiple Linear Regression, vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values. vehicle_weight also has a level of non-random contribution, but it is slightly above our 0.05 cutoff. This interpretation is backed up by consulting our series of Univariate Linear Regressions, where Vehicle Length and Ground Clearance both show positive correlation to mpg, with the highest Coefficient of Determination (r-squared) values among the variables modeled.

The slope of the linear model is not considered to be zero. This is because the two values that provide a non-random amount of variance to the mpg values have non-zero slopes for their regression equations.

This linear model effectively predicts the mpg of MechaCar prototypes. With a Combined Coefficient of Determination of 0.7, this shows that 70% of the variation of mpg values can be attributed to the 5 variables modeled against mpg. This result is better than chance, and would be a good starting point for helping to guide engineering decisions for future prototypes, if maximizing mpg was a stated design outcome.

## Summary Statistics on Suspension Coils

According to the current manufacturing data, all lots in total do meet this design specification. Although lot 3 does not meet this design specification, this is because if all samples are examined at once, there are enough coils within specification in Lots 1 and 2 to average out the variance present in Lot 3

## T-Tests on Suspension Coils

According to these tests, for the 150 samples we fail to reject the Null Hypothesis, meaning that the means are statistically similar. For Lot 1, we reject the Null Hypothesis and determine that the mean of the sample is not statistically similar to the mean of the population. For Lot 2, we reject the Null Hypothesis and determine that the mean of the sample is not statistically similar to the mean of the population. For Lot 3, we fail to reject the Null Hypotheses and determine that the means are statistically similar.

## Study Design: MechaCar vs Competition

Q: What metric or metrics will be tested?

  - Despite what features and style of automobiles are being marketed to American consumers, we Hypothesize that their buying decisions can reliably be predicted by a combination of Cost and City Fuel Efficiency.

Q: What is the Null Hypothesis or Alternative Hypothesis?

  - To test our Hypothesis, we will need to specify a Null Hypothesis.
Namely: There is no statistical correlation between Number of Vehicle Units sold within a given year and vehicle Model and either that vehicle Model's Cost or City Fuel Efficiency.

Q: What statistical test(s) will be used and why?

  - In order to test our Hypothesis, we will use a series of Paired Two-Sample t-tests, Two-Way Analysis of Variance, and Multiple Linear Regression. For all tests where p-value carries significance, a significance level of 0.05 will be used.

Q: What data is needed?

  - In order to test our Hypothesis, we will need to combine data from a few different sources. To narrow the scope of our study, we will limit our analysis to the most recent complete 5 year periods prior to the COVID-19 Pandemic, or Calendar Year 2014-2019 in the Continental United States.
