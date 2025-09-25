# Hands-on session Day 4: Cross-immunization

## Introduction
In this hands-on session we will compute the cross-immunization between the variants JN.1 and EG.5 using [VASIL](https://github.com/KleistLab/VASIL). VASIL computes the cross-immunization between different SARS-CoV-2 variants in a population using the mutational profile of the variants and the population immunity. 

In this hands-on, however, we are using the web-app of VASIL that you can found at [here](https://projects-raharinirina.pythonanywhere.com/vasil/FoldR_PNeut/).


## Input files

### 1. Mutation profiles
Mutation profiles can be found and extracted from [outbreak.info](https://outbreak.info/)
Please visit [here](https://outbreak.info/compare-lineages?pango=JN.1&pango=EG.5&gene=S&threshold=75&nthresh=1&dark=false) to check the differences in the S protein between the two variants JN.1 and EG.5.

You can download these mutation profiles here: [JN.1](JN.1_mutationsprofile.txt)  [EG.5](EG.5_mutationsprofile.txt)


## Run VASIL web-app
Go to the [VASIL web-app](https://projects-raharinirina.pythonanywhere.com/vasil/FoldR_PNeut/). Upload the two mutation profiles for lineage1 and lineage2 and run the app. 
The computation will take a while. 
Note: Please use either Chrome or Safari (Firefox is not supported).


