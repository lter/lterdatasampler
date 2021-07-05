
<!-- badges: start -->

[![Package
Site](https://github.com/lter/lterdatasampler/workflows/pkgdown/badge.svg)](https://github.com/lter/lterdatasampler/actions)
[![R-CMD-check](https://github.com/lter/lterdatasampler/workflows/R-CMD-check/badge.svg)](https://github.com/lter/lterdatasampler/actions)
<!-- badges: end -->

# {lterdatasampler}: LTER Data Sampler

The mission of the [Long Term Ecological Research program (LTER)
Network](https://lternet.edu/) is to “provide the scientific community,
policy makers, and society with the knowledge and predictive
understanding necessary to conserve, protect, and manage the nation’s
ecosystems, their biodiversity, and the services they provide.” A
specific goal of the LTER is [education and
training](https://lternet.edu/education-and-training/) - “to promote
training, teaching, and learning about long-term ecological research and
the Earth’s ecosystems, and to educate a new generation of scientists.”

The goal of this package is to provide a small sample of datasets to
gather feedback from the community. The end goal is to create a package
with one data sample from each of the [28 LTER Network
sites](https://lternet.edu/site/) - that are useful for teaching and
training in environmental data science. These datasets are subsets of
the original data and have been updated - sometimes substantially - from
the raw data, as described in the articles. **This content is thus not
suitable for research and should only be used for teaching purposes**.

We encourage you to explore existing LTER [teaching and training
initiatives](https://lternet.edu/education-and-training/), and the
**many** other available LTER datasets which can be accessed via the
[Environmental Data
Initiative](https://environmentaldatainitiative.org/). Please contact
cited researchers directly to discuss using data for research purposes
or in publication.

## The datasets

The `lterdatasampler` package currently contains 4 stored data objects
(from 3 LTER sites). The data are summarized below; see individual
Articles for data and source details. Note: the three letter prefix for
each dataset indicates the LTER site (see full list of site
abbreviations [here](https://lternet.edu/site/)).

-   [`ntl_icecover`](https://lter.github.io/lterdatasampler/reference/ntl_icecover.html):
    Ice Freeze and Thaw Dates for Madison, WI Area Lakes (1853 - 2019),
    North Temperate Lakes LTER
-   [`ntl_airtemp`](https://lter.github.io/lterdatasampler/reference/ntl_airtemp.html):
    Daily Average Temperature Data in Madison, WI (1869 - 2019), North
    Temperate Lakes LTER
-   [`pie_crab`](https://lter.github.io/lterdatasampler/reference/pie_crab.html):
    Fiddler crab body size in salt marshes from Florida to Massachusetts

## Analysis opportunities

Here: grid of which datasets provide opportunities for which types of
analyses

## Acknowledgements

Thank you to the amazing students who contributed to this project: *Sam
Guo, Adhitya Logan, Lia Ran, Sophia Sternberg, Karen Zhao* as part of
their [UCSB Data Science capstone
project](https://ucsb-ds-capstone-2021.github.io/projects/nceas/update3.html).
Thank you also go to their Course Advisor Prof. Sang-yun Oh.

People / organizations who supported this project:

-   LTER Network Office
-   LTER Information Managers
-   LTER Education Committee
-   All the LTER Researchers and Site PIs
-   Cyber-infrastructures:
    [EDI](https://environmentaldatainitiative.org/) and
    [DataONE](https://www.dataone.org/)

We gratefully acknowledge all authors and contributors of the
`roxygen2`, `usethis`, `pkgdown`, `devtools`, `tidyverse` and `metajam`.
This website relies heavily on themes created by Desirée DeLeon and
Alison Hill.
