
<!-- badges: start -->

[![Package
Site](https://github.com/lter/lterdatasampler/workflows/pkgdown/badge.svg)](https://github.com/lter/lterdatasampler/actions)
[![R-CMD-check](https://github.com/lter/lterdatasampler/workflows/R-CMD-check/badge.svg)](https://github.com/lter/lterdatasampler/actions)

<!-- badges: end -->

# lterdatasampler <a href='https://lter.github.io/lterdatasampler/'><img src="man/figures/logo.png" id="home_logo" align="right" height="180"/></a>

The mission of the [Long Term Ecological Research program (LTER)
Network](https://lternet.edu/) is to “*provide the scientific community,
policy makers, and society with the knowledge and predictive
understanding necessary to conserve, protect, and manage the nation’s
ecosystems, their biodiversity, and the services they provide.*” A
specific goal of the LTER is [education and
training](https://lternet.edu/education-and-training/) - “*to promote
training, teaching, and learning about long-term ecological research and
the Earth’s ecosystems, and to educate a new generation of scientists.*”

The goal of this package is to provide a sampler to gather feedback from
the community of what will be a larger package containing 28 datasets -
one from each of the existing [US LTER
sites](https://lternet.edu/site/). Those datasets are subsets of the
original data and have been updated - sometimes substantially - from the
raw data. They are aimed to be useful for teaching and training in
environmental data science. **This content is thus not suitable for
research and should only be used for teaching purposes**.

We encourage you to explore existing LTER [teaching and training
initiatives](https://lternet.edu/education-and-training/), and the
**many** other available LTER datasets which can be accessed via the
[Environmental Data Initiative](https://edirepository.org/). Please
contact cited researchers directly to discuss using data for research
purposes or in publication.

## Installation

You can install the development version of `lterdatasampler` from GitHub
with:

``` r
# install.packages("remotes")
remotes::install_github("lter/lterdatasampler")
```

## The dataset samples

Dataset samples currently included in the package are summarized below;
see individual Articles for data and source details. Note: the three
letter prefix for each dataset indicates the LTER site (see full list of
[site abbreviations](https://lternet.edu/site/)).

- [`and_vertebrates`](https://lter.github.io/lterdatasampler/reference/and_vertebrates.html):
  Records for aquatic vertebrates (cutthroat trout and salamanders) in
  Mack Creek, Andrews Experimental Forest, Oregon (1987 - present)
- [`arc_weather`](https://lter.github.io/lterdatasampler/reference/arc_weather.html):
  Daily meteorological (e.g. air temperature, precipitation) records
  from Toolik Field Station, Alaska (1988 - present)
- [`hbr_maples`](https://lter.github.io/lterdatasampler/reference/hbr_maples.html):
  Sugar maple seedlings at Hubbard Brook Experimental Forest (New
  Hampshire) in calcium-treated and reference watersheds in August 2003
  and June 2004
- [`knz_bison`](https://lter.github.io/lterdatasampler/reference/knz_bison.html):
  Bison masses recorded for the herd at Konza Prairie Biological Station
  LTER
- [`luq_streamchem`](https://lter.github.io/lterdatasampler/reference/luq_streamchem.html):
  stream chemistry data for the Quebrada Sonadora (QS) location part of
  the Luqillo tropical forest LTER site
- [`ntl_icecover`](https://lter.github.io/lterdatasampler/reference/ntl_icecover.html):
  Ice freeze and thaw dates for Madison, Wisconsin Area lakes (1853 -
  2019), North Temperate Lakes LTER
- [`ntl_airtemp`](https://lter.github.io/lterdatasampler/reference/ntl_airtemp.html):
  Daily average air temperature data for Madison, Wisconsin (1869 -
  2019), North Temperate Lakes LTER
- [`nwt_pikas`](https://lter.github.io/lterdatasampler/reference/nwt_pikas.html):
  Pika observations for habitat and stress analysis at Niwot Ridge LTER,
  Colorado
- [`pie_crab`](https://lter.github.io/lterdatasampler/reference/pie_crab.html):
  Fiddler crab body size recorded summer 2016 in salt marshes from
  Florida to Massachusetts including Plum Island Ecosystem LTER,
  Virginia Coast LTER, and NOAA’s National Estuarine Research Reserve
  System

## Which data sample should I use?

These data samples are selected because they have features we feel are
commonly useful in introductory environmental data science and
statistics courses.

In the table below, we list some introductory methods / skills, then
share which data samples in this package we think are well-suited to use
when teaching or learning them! It is not comprehensive - there are
*many* different analyses & skills that these data samples would
facilitate. Here we highlight a few that we think would be commonly
useful

<div id="egeuswuvcc" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}
&#10;#egeuswuvcc .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#egeuswuvcc .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#egeuswuvcc .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#egeuswuvcc .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#egeuswuvcc .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#egeuswuvcc .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#egeuswuvcc .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#egeuswuvcc .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#egeuswuvcc .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#egeuswuvcc .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#egeuswuvcc .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#egeuswuvcc .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#egeuswuvcc .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#egeuswuvcc .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#egeuswuvcc .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#egeuswuvcc .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#egeuswuvcc .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#egeuswuvcc .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#egeuswuvcc .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#egeuswuvcc .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#egeuswuvcc .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#egeuswuvcc .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#egeuswuvcc .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#egeuswuvcc .gt_left {
  text-align: left;
}
&#10;#egeuswuvcc .gt_center {
  text-align: center;
}
&#10;#egeuswuvcc .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#egeuswuvcc .gt_font_normal {
  font-weight: normal;
}
&#10;#egeuswuvcc .gt_font_bold {
  font-weight: bold;
}
&#10;#egeuswuvcc .gt_font_italic {
  font-style: italic;
}
&#10;#egeuswuvcc .gt_super {
  font-size: 65%;
}
&#10;#egeuswuvcc .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}
&#10;#egeuswuvcc .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#egeuswuvcc .gt_indent_1 {
  text-indent: 5px;
}
&#10;#egeuswuvcc .gt_indent_2 {
  text-indent: 10px;
}
&#10;#egeuswuvcc .gt_indent_3 {
  text-indent: 15px;
}
&#10;#egeuswuvcc .gt_indent_4 {
  text-indent: 20px;
}
&#10;#egeuswuvcc .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <thead class="gt_header">
    <tr>
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style>Recommended data samples for introducing selected topics</td>
    </tr>
    &#10;  </thead>
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id=""></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="Data sample">Data sample</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="For example you could:">For example you could:</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_row_group_first"><td headers="Linear relationships stub_1_1 stub_1" rowspan="3" class="gt_row gt_left gt_stub_row_group" style="vertical-align:middle">Linear relationships</td>
<td headers="Linear relationships stub_1_1 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/pie_crab_vignette.html">`pie_crab`</a></td>
<td headers="Linear relationships stub_1_1 data_description" class="gt_row gt_left">Model the relationship between fiddler crab size and latitude using `pie_crab` , while learning about Bergmann's Rule!</td></tr>
    <tr><td headers="Linear relationships full_link_2 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/ntl_icecover_vignette.html">`ntl_icecover`</a></td>
<td headers="Linear relationships full_link_2 data_description" class="gt_row gt_left">Investigate the relationship between winter temperatures and ice cover duration for Wisconsin lakes using `ntl_icecover`</td></tr>
    <tr><td headers="Linear relationships full_link_3 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/hbr_maples_vignette.html">`hbr_maples`</a></td>
<td headers="Linear relationships full_link_3 data_description" class="gt_row gt_left">Explore seedling height-mass relationships for sugar maples using `hbr_maples`</td></tr>
    <tr class="gt_row_group_first"><td headers="Non-linear relationships stub_1_4 stub_1" rowspan="2" class="gt_row gt_left gt_stub_row_group" style="vertical-align:middle">Non-linear relationships</td>
<td headers="Non-linear relationships stub_1_4 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/knz_bison_vignette.html">`knz_bison`</a></td>
<td headers="Non-linear relationships stub_1_4 data_description" class="gt_row gt_left">Model the relationship between bison age and mass for male and female bison using `knz_bison`, for example estimating parameters in the Gompertz model</td></tr>
    <tr><td headers="Non-linear relationships full_link_5 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/and_vertebrates_vignette.html">`and_vertebrates`</a></td>
<td headers="Non-linear relationships full_link_5 data_description" class="gt_row gt_left">Model the length-mass relationships for cutthroat trout and salamanders in Mack Creek, Oregon</td></tr>
    <tr class="gt_row_group_first"><td headers="Time series analysis stub_1_6 stub_1" rowspan="2" class="gt_row gt_left gt_stub_row_group" style="vertical-align:middle">Time series analysis</td>
<td headers="Time series analysis stub_1_6 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/arc_weather_vignette.html">`arc_weather`</a></td>
<td headers="Time series analysis stub_1_6 data_description" class="gt_row gt_left">Explore seasonality, wrangling dates, or practice forecasting using daily meteorological records from Toolik Station, Alaska</td></tr>
    <tr><td headers="Time series analysis full_link_7 full_link" class="gt_row gt_center"><a href = "">`luq_streamchem`</a></td>
<td headers="Time series analysis full_link_7 data_description" class="gt_row gt_left">Investigate the impact of a hurricane on stream water chemistry</td></tr>
    <tr class="gt_row_group_first"><td headers="Spatial data introduction stub_1_8 stub_1" rowspan="1" class="gt_row gt_left gt_stub_row_group" style="vertical-align:middle">Spatial data introduction</td>
<td headers="Spatial data introduction stub_1_8 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/nwt_pikas_vignette.html">`nwt_pikas`</a></td>
<td headers="Spatial data introduction stub_1_8 data_description" class="gt_row gt_left">Introduce basics of spatial data (e.g. CRS, projections) and tools for working with spatial data by visualizing pika locations at Niwot Ridge in the Colorado Rockies</td></tr>
    <tr class="gt_row_group_first"><td headers="Comparing groups stub_1_9 stub_1" rowspan="2" class="gt_row gt_left gt_stub_row_group" style="vertical-align:middle">Comparing groups</td>
<td headers="Comparing groups stub_1_9 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/hbr_maples_vignette.html">`hbr_maples`</a></td>
<td headers="Comparing groups stub_1_9 data_description" class="gt_row gt_left">Compare sugar maple seedling heights in previously calcium-treated versus untreated watersheds using `hbr_maples`, using the exercise as an opportunity to think about acid rain and soil acidification</td></tr>
    <tr><td headers="Comparing groups full_link_10 full_link" class="gt_row gt_center"><a href = "https://lter.github.io/lterdatasampler/articles/and_vertebrates_vignette.html">`and_vertebrates`</a></td>
<td headers="Comparing groups full_link_10 data_description" class="gt_row gt_left">Explore differences in size and abundance of cutthroat trout and salamanders in old growth versus previously clear cut forest sections (2 groups) or in different conditions (&gt; 2 groups, e.g. pool, cascade, riffle) of Mack Creek, Oregon</td></tr>
  </tbody>
  &#10;  
</table>
</div>

## How to provide feedback

The best way to provide feedback on this package is to open an
[issue](https://github.com/lter/lterdatasampler/issues) and assign the
`feedback` label. Thank you!

## Acknowledgements

Thank you to the amazing students who contributed to this project: *Sam
Guo, Adhitya Logan, Lia Ran, Sophia Sternberg, Karen Zhao* as part of
their [UCSB Data Science capstone
project](https://ucsb-ds-capstone-2021.github.io/projects/nceas/update3.html).
Thank you also go to their Course Advisor Prof. Sang-yun Oh.

People / organizations who supported this project:

- LTER Network Office
- LTER Information Managers
- LTER Education Committee
- All the LTER Researchers and Site PIs
- Cyber-infrastructures: [EDI](https://edirepository.org/) and
  [DataONE](https://www.dataone.org/)

We gratefully acknowledge all authors and contributors of the
[`roxygen2`](https://roxygen2.r-lib.org/),
[`usethis`](https://usethis.r-lib.org/),
[`pkgdown`](https://pkgdown.r-lib.org/),
[`devtools`](https://devtools.r-lib.org/),
[`tidyverse`](https://www.tidyverse.org/) and
[`metajam`](https://github.com/NCEAS/metajam/) packages. This website
relies heavily on themes created by Dr. Desirée DeLeon and Dr. Alison
Hill.

<hr>

<img src="man/figures/logos.png" width="100%" align="center" style="display: block; margin: auto;"/>
