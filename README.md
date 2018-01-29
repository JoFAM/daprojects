# daprojects

An R package containing RStudio templates for data analysis. 

## What it does

I created this package to have an easy template with a general setup that can be used by
my students and freelancers. It merely sets up a directory structure with the following directories:

- Data
- Data_Processed
- Functions
- Graphs
- Reports

Additionally it adds two options to the wizard.

1. add README.md : selecting this option will add a markdown file as a template for the information file
2. Description: this option allows you to give a short(!) description of the project. This description
    is then used as the title for the file README.md.
3. add example files : selecting this option will add a single example file
Mainscript.R to the main directory of the project.

## Installation

This package can be installed using:

```
devtools::install_github("JoFAM/daprojects")
```

After installing and loading the package, RStudio will automatically add the option
"Basic Project for Data Analsysis" to the list of project types in the wizard.

If for some reason this doesn't work, a zip file with the package can be 
downloaded from [the release page](https://github.com/JoFAM/daprojects/releases)
and installed using:

```
install.packages("path/to/daprojects_x.y.z.zip", repos = NULL)
```

## Development

This package is in (not very) active development, so things might change. I set this up merely to have
something I can easily use in my classes, but I want to expand on it in order to make it more useful
for data scientists at large. If you have ideas or requests, do file an issue and I'll see what I can do.
