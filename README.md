

  <h1 align="center">A gentle introduction to Julia (for Python users) </h1>




## Table of contents

- [Table of contents](#table-of-contents)
- [Quick start](#quick-start)
- [What's included](#whats-included)
- [Future implementations](#future-implementations)
- [Bugs/Contact](#bugscontact)




## Quick start

This project started not so long ago, while I was reading [this article about Julia](https://towardsdatascience.com/meet-julia-the-future-of-data-science-52414b29ebb). If you don't know, some experts claim that Julia can become a top-notch language for machine learning, mixing Python flexibility and C/C++ performance. While for simple projects you probably don't care about performance speed, for more complex projects or real-time predictions you are going to try a lot of methods to try to optimize speed.

So... Is Julia better overall?

Well... I can't give you that answer! I mean, I'm surely not an expert in the deepest and fundamental aspects of programming languages, but that article caught my attention so I decided to give Julia a try and I think that you should keep an eye on Julia if you are interested in ML news (also in Microsoft's huge investment on improving Python).

In this project I will try to give an introduction to Julia's particularities, working with Dataframes, and MLJ (Machine Learning in Julia library).



## What's included



```text
main/
├── py_folder/
│    ├── project_python.py
│    ├── project_python.ipynb
│    ├── pipeline.py
│    ├── constants.py
│    └── custom_outlier.py
└── julia_folder/
    ├── julia_introduction.ipynb
    ├── project_julia.ipynb
    ├── constants.jl
    ├── Manifest.toml
    └── Project.toml
    
```

I like to learn by doing (and reading documentation) so to introduce myself to Julia I thought of taking some projects that I have on python and implementing them on Julia. 
I'll use [this kaggle challenge](https://www.kaggle.com/competitions/home-credit-default-risk/data) (the application train/test dataset) for this. 

So in "py_folder", you can see a somewhat simple pipeline for data preprocessing. I'm not going to explain in full detail because the idea is more about testing Julia. You can run "project_python.py" or "project_python.ipynb" to test results and measure time.

In "julia_folder" you have: 
- "julia_introduction.ipynb" where you can see how to activate notebooks in Julia (which is useful) and how to activate the environment. After that, in that same notebook, I explain some of Julia's particularities.
- "Manifest.toml" and "Project.toml" for environment and dependencies control
- "project_julia.ipynb" to run the project

## Future implementations

There's still a lot that I would like to test in Julia. Probably the code that I provide here could be improved. Also, the Julia community is growing so maybe in a couple of months I would have new things to try.

## Bugs/Contact


If you catch any bug or if you're more experience with Julia and see some improvements to make, feel free to contact me.

Also, feel free to reach me on [linkedin](https://www.linkedin.com/in/federico-saban/)