# ChatGPT prompting for the workshop "Using geneerative AI to implement a script for bioanalysis"

This file reproduces the dialog between the teacher (Jacques van Helden) and a generative AI (ChatGPT) 
to generate an R script to reproduce a figure from an article about a transcriptomic analysis of yeast cell cycle. 


## Prompting 

ChatGPT chat (made discoverable on June 15, 2025, I don't know how long it will remain available). 

- <https://chatgpt.com/share/684efb6e-4d00-8000-9bc4-2a618913e9d0>


>Hi, I would like to write a script to download and analyse a tabular dataset.
>I would like to proceed by steps, and, for each step
>
>- write a function that runs the task corresponding to this step
>- write a unit test to make sure that this steps worked
>
>I will first try this in R (I will also do it later in Python).
>
>Some general recommendations :
>
- each function should be properly documented (in roxygen2 or another recommended standard)
- the code should be properly documented (explain the underlying logics)
- the code should be well structured, with separate functions for each task, and a section to specify the parameters. 
>
>Here is the first step: download a tab-separated file available at this URL: 
>
> https://ifb-elixirfr.github.io/AI-for-scripting-bioanalysis/data/yeast-transcriptome-cell-cycle/oscillating-genes_normalized-profiles.tsv
>
>The R script should
>
>- create a directory in my home, entitled “yeast-cell-cycle-analysis”
>- download the file
>- check that the file has been downloaded (test its presence in the directory, and check that it is not empty)
>
>Can you write the code to do this ?
>
>I will tell you later the next steps


Here is a clean and well-structured R script for Step 1: downloading and checking a dataset. The code includes:

- A function to perform the task
- A test function to verify the step worked
- Proper documentation using roxygen2 format
- Clear parameter section and inline comments



