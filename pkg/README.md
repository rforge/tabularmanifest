[![Build Status](https://travis-ci.org/Melinae/TabularManifest.png?branch=master)](https://travis-ci.org/Melinae/TabularManifest)

Tabular Manifest
=======
Our consulting company, [Melinae](http://melinae.com/), frequently assists clients with large datasets consisting of many variables of varying quality.  Before we can develop sophisticated statistical models to provide our client with insight and a competitive advantage, we first learn the characteristics of their existing datasets.  This package provides tools that assist our initial exploration of real-world datasets.  Although these tools are not a substitute of thoughtful inspection in our later analyses, these make the exploration more time efficient.  These tools allow us to more quickly start developing innovative solutions and delivering results.

The idea behind this [R](http://www.r-project.org/) package is that *configuring* metadata is quicker and more robust than *coding* the same repetitive code.

Our company has benefited from many tools developed by the community, and we'd like to contribute back.  Suggestions, criticisms, and code contributions are welcome.  If any developer is interested in trying a direction that suits them better, we'll be happy to explain the package's internals and help you fork your own version.  We have some starting material described in the `./documentation_for_developers/` directory.

Thanks, the [Melinae](http://melinae.com/) Analytics Team

Steve Soloway and Will Beasley

If your organization is interested in the consulting services of Melinae, please contact [Steve Soloway](https://www.linkedin.com/profile/view?id=64434549) at <ssoloway@melinae.com>

For those interested in use the development version of `TabularManifest`, run the following code:
```r
#Install the 'devetools' package (assuming it's not already installed)
install.packages("devtools")

#Install the 'TabularManifest' package.
devtools::install_git(repo="Melinae/TabularManifest")

#Load the package into memory
library(TabularManifest)
```
