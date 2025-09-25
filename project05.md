Freie Universität Berlin, Robert-Koch Institute

Practical course: SARS-2 Bioinformatics & Data Science

Max von Kleist, Daniela Börnigen


# Project 5

## Cross-Immunization

**Deadline**: 04.10.2024, 15:00


*The project should be worked out in groups of two or three students. Students should document their progress and present their work on Friday; 04.10.2024; 15:00 to the lecturers and students. The talk should be about 30-40 min, and allowing for 10-15min of questions.*


**a) The presentation should be uploaded via whiteboard as `Project5.pdf`, no later than the above stated deadline.**

An exemplary structure of the talk: 
*	Title including group composition (possibly a link to the code repository)
*	Short background (what is this good for?) & description of task
*	Methods: A step-by-step explanation of what has been done; troubleshooting
*	Results: A summary of the outcomes and analysis
*	Discussion of results; aspects that were unclear; how the workflow could be improved 
*	Outlook

**b) Codes for conducting the project tasks should be zipped into `Project5.zip` and uploaded either via whiteboard or made accessible via GitHub or GitLab.** In the latter case, a link to the repo should be provided on the slides and the repo must be accessible to the lecturers.

**Detailed Tasks:**

1) Get a GISAID user account: [GISAID] https://gisaid.org/register/
This will take a few days!

2) Write a small R script to download mutation profiles from [outbreak.info](https://outbreak.info/) API for the following SARS-CoV-2 variants using your gisaid account:

* JN.1
* JN.2
* JN.3
* KP.3
* XBB.1.5


__R code__
```bash
# login
library(outbreakinfo)

outbreakinfo::authenticateUser()

# get mutations for JN.1 and KP.3:
mutations = getMutationsByLineage(pangolin_lineage="JN.1" , frequency=0.75, logInfo = FALSE)

# filter for Spike:
mutations_s <- subset(mutations, gene=="S")
```

Save the mutations as text files with each mutation in a new line. 


3) Go to the [VASIL web-app](https://projects-raharinirina.pythonanywhere.com/vasil/FoldR_PNeut/). Upload the all mutation profiles pairwise for lineage1 and lineage2 and run the app. Compute the cross-immunization between all pairs of variants. 
The computation will take a while.

4) Analyze results.

5) Prepare a talk to present the results & analysis
