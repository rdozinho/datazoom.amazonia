
<a href="https://github.com/datazoompuc/datazoom.amazonia"><img src="https://github.com/datazoompuc/datazoom.amazonia/blob/master/logo.png?raw=true" align="left" width="250" hspace="10" vspace="6"></a>

<!-- README.md is generated from README.Rmd. Please edit that file -->

# datazoom.amazonia

<!-- badges: start -->

[![CRAN
version](https://www.r-pkg.org/badges/version/datazoom.amazonia?color=orange)](https://cran.r-project.org/package=datazoom.amazonia)
[![CRAN
downloads](https://cranlogs.r-pkg.org/badges/datazoom.amazonia?color=blue)](https://cran.r-project.org/package=datazoom.amazonia)
<!-- [![R build status](https://github.com/datazoompuc/datazoom.amazonia/workflows/R-CMD-check/badge.svg)](https://github.com/datazoompuc/datazoom.amazonia/actions) -->
<!-- badges: end -->

The goal of package datazoom.amazonia is to facilitate access to
official data about agriculture, deforestation, production and other
activities in the Brazilian Amazon.The package provides functions that
download and pre-process selected datasets. Our users should know that
our functions pull data from databases from other institutions and
therefore if one of these institutions decides to stop sharing their
data with the public then there’s nothing we can do about it.

``` r
datazoom.amazonia::datasets_link()
#> # A tibble: 34 x 6
#>    survey   dataset     sidra_code available_time available_geo    link         
#>    <chr>    <chr>            <dbl> <chr>          <chr>            <chr>        
#>  1 PAM-IBGE pam_all_cr~       5457 1974-2019      Country, State,~ https://sidr~
#>  2 PAM-IBGE pam_perman~       1613 1974-2019      Country, State,~ https://sidr~
#>  3 PAM-IBGE pam_tempor~       1612 1974-2019      Country, State,~ https://sidr~
#>  4 PAM-IBGE pam_corn           839 2003-2019      Country, State,~ https://sidr~
#>  5 PAM-IBGE pam_potato        1001 2003-2019      Country, State,~ https://sidr~
#>  6 PAM-IBGE pam_peanut        1000 2003-2019      Country, State,~ https://sidr~
#>  7 PAM-IBGE pam_beans         1002 2003-2019      Country, State,~ https://sidr~
#>  8 PPM-IBGE ppm_livest~       3939 1974-2019      Country, State,~ https://sidr~
#>  9 PPM-IBGE ppm_sheep_~         95 1974-2019      Country, State,~ https://sidr~
#> 10 PPM-IBGE ppm_animal~         74 1974-2019      Country, State,~ https://sidr~
#> # ... with 24 more rows
```

### Content:

-   [Part 1 - Installation](#installation)
-   [Part 2 - Datasets](#datasets)
-   [Part 3 - The Structure of the
    functions](#the-structure-of-our-functions)

## Installation

You can install the released version of `datazoom.amazonia` from
[CRAN](https://CRAN.R-project.org/package=datazoom.amazonia) with:

``` r
install.packages("datazoom.amazonia")
```

And the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("datazoompuc/datazoom.amazonia")
```

## Datasets

**[1 - INPE data:](#1---inpe-data)**

-   [1.1 - PRODES](#prodes)

-   [1.2 - DETER](#deter)

-   [1.3 - DEGRAD](#degrad)

**[2 - COMEX data](#2---comex-data)**

**[3 - IBGE data:](#3---ibge-data)**

-   [3.1 - PIB-Munic](#pib-munic)

-   [3.2 - CEMPRE](#cempre)

-   [3.3 - PAM](#pam)

-   [3.4 - PEVS](#pevs)

-   [3.5 - PPM](#ppm)

**[4 - IPS data](#4---ips)**

**[5 - SEEG data](#5---seeg)**

**[6 - IBAMA data](#6---ibama)**

**[7 - SIGMINE data](#7---sigmine)**

**[8 - MAPBIOMAS data](#8---mapbiomas)**

**[9 - CIPÓ data](#9---cipó)**

## The Structure of our functions

**[1 - The Structure of the
functions](#the-structure-of-the-functions)**

**[2 - Examples](#examples)**

## 1 - INPE data

### PRODES

Loads information on clearcut deforestation in the Legal Amazon and
annual deforestation rates in the region. Data is available from 2000 to
2020.

    There are four parameters in this function:
      
      1. dataset = "prodes"
     
      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
     
      3. time_period: available from 2000 to 2020
      
      4. language: you can choose between portuguese and english

``` r
# Download raw data (raw_data = TRUE) from 2000 to 2005 (time_period = 2000:2005).
data <- load_prodes(dataset = "prodes", 
                    raw_data = TRUE,
                    time_period = 2000:2005) 

# Download treated data (raw_data = FALSE) from 2010 (time_period = 2010) 
# in portuguese (language = 'pt').
data <- load_prodes(dataset = "prodes", 
                    raw_data = FALSE,
                    time_period = 2010,
                    language = 'pt')  
```

### DETER:

Loads information on change in forest cover in the Amazon.

    There are four parameters in this function:
      
      1. dataset: there are two options:
      # information about Amazon: dataset = "deter_amz" 
      # information about Cerrado: dataset = "deter_cerrado"
      
      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
      
      3. language: you can choose between portuguese and english

``` r
# Download raw data (raw_data = TRUE) from Amazonia (dataset = "deter_amz")
deter_amz <- load_deter(dataset = 'deter_amz',
                        raw_data = TRUE)

# Download treated data (raw_data = FALSE) from Cerrado (dataset = "deter_cerrado")
# in portuguese (language = 'pt')
deter_cer <- load_deter(dataset = 'deter_cerrado',
                        raw_data = FALSE,
                        language = "pt")
```

### DEGRAD:

Loads information on forest degradation in the Brazilian Amazon,
replaced by DETER-B in December 2016. Data is available from 2007 to
2016.

    There are four parameters in this function:
      
      1. dataset = "degrad"

      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
      
      3. time_period: data is available from 2007 to 2016

      4. language: you can choose between portuguese and english

``` r
# download raw data (raw_data = TRUE) related to forest degradation from 2010 to 2012 (time_period = 2010:2012). 
data <- load_degrad(dataset = 'degrad', 
                    raw_data = TRUE,
                    time_period = 2010:2012)

# download treated data (raw_data = FALSE) related to forest degradation from 2013 (time_period = 2013) in portuguese (language = "pt").
data <- load_degrad(dataset = 'degrad', 
                    raw_data = FALSE,
                    time_period = 2013,
                    language = 'pt')
```

## 2 - COMEX data

The Comex dataset gathers data extracted from Siscomex (Integrated
System of Foreign Trade), which is a database containing information
from all products that are imported to or exported from Brazil. Using
data reported from the companies which are responsible for the process
of transporting the products, the system adheres to internationally
standardized nomenclatures, such as the Harmonized System and the
Mercosul Common Nomenclature (which pertains to members of the Mercosul
organization).

The data has a monthly frequency and is available starting from the year
1989. From 1989 to 1996, a different system of nomenclatures was
adopted, but all conversions are available on a dictionary in the Comex
website
(<https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta/>).

    There are four parameters in this function:
      
      1. dataset: there are three choices:
      # "comex_export_mun": selects exports data by municipality
      # "comex_import_mun": selects imports data by municipality
      # "comex_export_prod": selects exports data by producer
      # "comex_import_prod": selects imports data by producer
      
      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
      
     3. time_period: available starting from the year 1989

     4. language: you can choose between portuguese and english
     

``` r
# download treated (raw_data = FALSE) exports data by municipality (dataset = "comex_export_mun") from 1997 to 2021 (time_period = 1997:2021)
data <- load_br_trade(dataset = "comex_export_mun", 
                      raw_data = FALSE, 
                      time_period = 1997:2021)

# download treated(raw_data = FALSE) imports data by municipality (dataset = "comex_import_mun") from 1997 to 2021 (time_period = 1997:2021) 
data <- load_br_trade(dataset = "comex_import_mun",
                      raw_data = FALSE, 
                      time_period = 1997:2021)
```

## 3 - IBGE data

### PIB-Munic

Loads information on gross domestic product at current prices, taxes,
net of subsidies, on products at current prices and gross value added at
current prices, total and by economic activity, and respective shares.
Data is available at country, state and municipality level and from 2002
to 2018.

    There are six parameters in this function:
      
      1. dataset = "pibmunic"
      
      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
      
      3. time_period: data is available from 2002 to 2018
      
      4. geo_level: there are three options
      # "country"
      # "state"
      # "municipality"
      
      5. language: you can choose between portuguese and english
      
      6. legal_amazon_only: setting the return of Legal Amazon Data (legal_amazon_only = TRUE) or Country Data (legal_amazon_only = FALSE)
      

``` r
# Download raw data (raw_data = TRUE) on gross domestic product 
# (dataset = 'pibmunic') from the entire country (legal_amazon_only = FALSE) 
# by state (geo_level = 'state') from 2012 (time_period = 2012)
data <- load_pibmunic(dataset = 'pibmunic',
                      raw_data = TRUE,
                      geo_level = 'state',
                      time_period = 2012,
                      legal_amazon_only = FALSE)

# Download treated data (raw_data = FALSE) on gross domestic product 
# (dataset = 'pibmunic') from the Legal Amazon (legal_amazon_only = TRUE) 
# by municipality (geo_level = 'municipality') from 2012 (time_period = 2012).  
data <- load_pibmunic(dataset = 'pibmunic',
                      raw_data = FALSE,
                      geo_level = 'municipality',
                      time_period = 2012,
                      legal_amazon_only = TRUE)
```

### CEMPRE

Loads information on companies and other organizations and their
respective formally constituted local units, registered with the CNPJ -
National Register of Legal Entities. Data is available from 2006 to
2019.

    There are seven parameters in this function:
      
      1. dataset = "cempre"
     
      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data.

      3. geo_level: "country", "state" or "municipality"
      
      4. time_period: data is available from 2006 to 2019

      5. language: you can choose between portuguese and english
     
      6. sectors: defines if the data will be return separated by sectors (sectors = TRUE) or not (sectors = FALSE)

      7. legal_amazon_only: setting the return of Legal Amazon Data (legal_amazon_only = TRUE) or Country´s Data (legal_amazon_only = FALSE)
      

``` r
# Download raw data (raw_data = TRUE) with the aggregation level being the country ( geo_level = "country") from 2008 to 2010 (time_period = 2008:2010). 
# In this example, the user did not want to visualize data by sector (sectors = FALSE) and the user also did not want the data to be restricted to the Legal Amazon area (legal_amazon_only = FALSE).
data <- load_cempre(dataset = "cempre", 
                    raw_data = TRUE,
                    geo_level = "country", 
                    time_period = 2008:2010,
                    sectors = FALSE,
                    legal_amazon_only = FALSE) 

# Download treted data (raw_data = FALSE) by state (geo_level = "state") from 2008 to 2010 (time_period = 2008:2010) in portuguese (language = "pt").. 
# In this example, the user wanted to visualize data by sector (sectors = TRUE) and the user also wanted the data to be restricted to the Legal Amazon area (legal_amazon_only = TRUE).
data <- load_cempre(dataset = "cempre", 
                    raw_data = FALSE,
                    geo_level = "state", 
                    time_period = 2008:2010,
                    language = "pt",
                    sectors = TRUE,
                    legal_amazon_only = TRUE) 
```

### PAM

Municipal Agricultural Production (PAM, in Portuguese) is a nationwide
annual survey conducted by IBGE (Brazilian Institute of Geography and
Statistics) which provides information on agricultural products, such as
quantity produced, area planted and harvested, average quantity of
output and monetary value of such output. The products are divided in
permanent and temporary farmed land, as well as dedicated surveys to the
four products that yield multiple harvests a year (beans, potato, peanut
and corn), which all sum to a total survey of 64 agricultural products
(31 of temporary tillage and 33 of permanent tillage). Output, however,
is only included in the dataset if the planted area occupies over 1 acre
or if output exceeds one tonne.

    There are five parameters in this function:
      
      1. dataset: There are seven possible choices. 

      These datasets contain statistics such as quantity produced, area planted and harvested, average quantity of output and monetary value of such output. 
      
      # 'pam_all_crops': it selects data about agricultural products divided in permanent and temporary farmed land. 
      # 'pam_permanent_crops': it selects the data about agricultural products produced in permanent farmed land.
      # 'pam_temporary_crops':it selects the data about agricultural products produced in temporary farmed land.
      # 'pam_corn': it selects the data from the first and the second harvests of corn.
      # 'pam_potato': it selects the data from the first, the second and the third harvests of potato.
      # 'pam_peanut': it selects the data from the first and the second harvests of peanut.
      # 'pam_beans':  it selects the data from the first, the second and the third harvests of bean.

      2. raw_data: there are two options:
      # TRUE: if you want the data as it is in the IBGE's site.
      # FALSE: if you want the treated (more organized) version of the data. 

      3. geo_level: there are four options:
      # "country"
      # "region"
      # "state" 
      # "municipality"

      4. time_period:
      # For pam_all_crops, pam_permanent_crops and pam_temporary_crops, data is available from 1974 to 2019.
      # For pam_corn, pam_potato, pam_peanut and pam_beans, data is avaiable from 2003 to 2019.
        
      5. language: you can choose between portuguese and english
      

``` r
# Download treated (raw_data = FALSE) data related to the production from permanent and temporary farmed lands (dataset = 'pam_all_crops') by state (geo_level = "state") from 1980 to 1990 (time_period = 1980:1990) in english (language = "eng").
data <- load_pam(dataset = 'pam_all_crops', 
                 raw_data = FALSE, 
                 geo_level = "state", 
                 time_period = 1980:1990, 
                 language = "eng")

# Download raw data (raw_data = TRUE) related to the corn production (dataset = 'pam_corn') by municipality (geo_level = "municipality") from 2010 to 2012 (time_period = 2010:2012) in portuguese (language = "pt").
data <- load_pam(dataset = 'pam_corn', 
                 raw_data = TRUE, 
                 geo_level = "municipality", 
                 time_period = 2010:2012, 
                 language = "pt")
```

### PEVS

Loads information on the amount and value of the production of the
exploitation of native plant resources and planted forest massifs, as
well as existing total and harvested areas of forest crops. Survey is
done at the municipal level and data is available from 1986 to 2019.

    There are five parameters in this function:
      
      1. dataset: there are three choices:
      # 'pevs_forest_crops': provides data related to both quantity and value of the forestry activities. The data goes from 1986 to 2019 and it is divided by type of product.
      # 'pevs_silviculture': provides data related to both quantity and value of the silviculture. The data goes from 1986 to 2019 and it is divided by type of product.
      # 'pevs_silviculture_area': total existing area used for silviculture in 12/31.The data goes from 2013 to 2019 and it is divided by forestry species.  
      
      2. raw_data: there are two options:
      # TRUE: if you want the data as it is in the IBGE's site.
      # FALSE: if you want the treated (more organized) version of the data. 
      
      3. geo_level: there are four options:
      # "country"
      # "region"
      # "state"
      # "municipality"
      
      4. time_period: data goes from 1986 to 2019, except for the pevs_silviculture_area dataset where data is available from 2013 to 2019.

      5. language: you can choose between portuguese and english

``` r
# Download treated (raw_data = FALSE) silviculture data (dataset = 'pevs_silviculture') by state (geo_level = 'state') from 2012 (time_period =  2012) in portuguese (language = "pt")
data <- load_pevs(dataset = 'pevs_silviculture', 
                  raw_data = FALSE,
                  geo_level = 'state', 
                  time_period = 2012, 
                  language = "pt")

# Download raw (raw_data = TRUE) forest crops data (dataset = 'pevs_forest_crops') by municipality (geo_level = 'municipality') from 2012 to 2013 (time_period = 2012:2013) in english (language = "eng")
data <- load_pevs(dataset = 'pevs_forest_crops', 
                  raw_data = TRUE, 
                  geo_level = "municipality", 
                  time_period = 2012:2013, 
                  language = "eng")
```

### PPM

Downloads data from PPM (“Pesquisa da Pecuária Municipal”). This survey
contains information of the livestock inventories (e.g:cattle, pigs and
hogs) in Brazilian Municipalities. It also provides information on the
production of animal origin (e.g:output of milk, hen eggs, quail eggs,
honey) and the value of the production during the reference year.

The periodicity of the survey is annual. The geographic coverage is
national, with results released for Brazil, Major Regions, Federation
Units, Mesoregions, Microregions and Municipalities.

    There are five parameters in this function:
      
      1. dataset: There are five possible choices. 
      # 'ppm_livestock_inventory'
      # 'ppm_sheep_farming'
      # 'ppm_animal_orig_production' 
      # 'ppm_cow_farming'
      # 'ppm_aquaculture' 

      2. raw_data: there are two options:
      # TRUE: if you want the data as it is in the IBGE's site.
      # FALSE: if you want the treated (more organized) version of the data. 

      3. geo_level: there are four options:
      # "country"
      # "region"
      # "state"
      # "municipality"
        
      4. time_period:
      
      # For ppm_livestock_inventory, ppm_sheep_farming, ppm_animal_orig_production and ppm_cow_farming: data is avaiable from 1974 to 2019.
      # For ppm_aquaculture: data is avaiable from 2013 to 2019 
      
      5. language: you can choose between portuguese and english

``` r
# Download treated data (raw_data = FALSE) about aquaculture (dataset = 'ppm_aquaculture') from 2013 to 2015 (time_period = 2013:2015) in english (language = "eng") with the level of aggregation being the country (geo_level = "country"). 
data <- load_ppm(dataset = 'ppm_aquaculture', 
                 raw_data = FALSE, 
                 geo_level = "country", 
                 time_period = 2013:2015, 
                 language = "eng")

# Download raw data (raw_data = TRUE) about sheep farming (dataset = 'ppm_sheep_farming') by state (geo_level = "state") from 1980 to 1995 (time_period = 1980:1995) in portuguese (language = "pt")
data <- load_ppm(dataset = 'ppm_sheep_farming', 
                 raw_data = TRUE, 
                 geo_level = "state", 
                 time_period = 1980:1995, 
                 language = "pt")
```

## 4 - IPS

Loads information on the social and environmental performance of the
Legal Amazon. Survey is done at the municipal level and data is
available in 2014 and 2018.

    There are four parameters in this function:
      
      1. dataset = "ips"

      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
      
      3. time_period: data is available in 2014 and 2018.

      4. language: you can choose between portuguese and english

``` r
# Download raw data (raw_data = TRUE) from 2014 (time_period = 2014)
data <- load_ips(dataset = "ips", raw_data = TRUE, time_period = 2014)

# Download treated data (raw_data = FALSE) from 2018 
# (time_period = 2018) in portuguese (language = 'pt')
data <- load_ips(dataset = "ips", raw_data = FALSE,
                 time_period = 2018, language = 'pt')
```

## 5 - SEEG

Loads data of estimates of emission of greenhouse gases of Brazilian
cities and states.

According to the “SEEG Brasil” website: all five sectors that are
sources of emissions - Agriculture, Energy, Land Use Change, Industrial
Processes and Waste with the same degree of detail contained in the
emissions inventories are evaluated. The data provided in SEEG’s
Collection 9 is a series covering the period from 1970 to 2020, except
for the Land Use Change Sector that has the series from 1990 to 2020.

    There are four parameters in this function:
      
      1. dataset: There are six choices:
      # "seeg": provides all sectors in a same dataframe. Only works with raw_data = TRUE.
      # "seeg_farming"
      # "seeg_industry"
      # "seeg_energy"
      # "seeg_land"
      # "seeg_residuals"
      
      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
      
      3. geo_level: there are three options:
      # "country" 
      # "state"  
      # "municipality"
      
      4. language: you can choose between portuguese and english

``` r
# Download raw data (raw_data = TRUE) of greenhouse gases (dataset = "seeg") by municipality (geo_level = "municipality")
data <- load_seeg(dataset = "seeg", 
                  raw_data = TRUE,
                  geo_level = "municipality")
  

# Download treated data (raw_data = FALSE) of industry greenhouse gases (dataset = "seeg_industry") by state (geo_level = "state")
data <- load_seeg(dataset = "seeg_industry", 
                  raw_data = FALSE,
                  geo_level = "state")


# Download treated data (raw_data = FALSE) of energy greenhouse gases (dataset = "seeg_energy") by state (geo_level = "state")
data <- load_seeg(dataset = "seeg_energy", 
                  raw_data = FALSE,
                  geo_level = "state")

# Download treated data (raw_data = FALSE) of land greenhouse gases (dataset = "seeg_land") by country (geo_level = "country")
data <- load_seeg(dataset = "seeg_land", 
                  raw_data = FALSE,
                  geo_level = "country")

# Download raw data (raw_data = TRUE) of greenhouse gases (dataset = "seeg") by state (geo_level = "state")
data <- load_seeg(dataset = "seeg", 
                  raw_data = TRUE,
                  geo_level = "state")
```

## 6 - IBAMA

Downloads and compiles data on environmental fines at the municipality
or state levels considering the Amazon region.

The function returns either the raw data or a data frame with aggregates
considering, for eachtime-location period, counts for total the number
of infractions, infractions that already went to trial, and number of
unique perpetrators of infractions.

    There are five parameters in this function:

      1. dataset = "areas_embargadas"
      
      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed version of the data. 
     
      3. geo_level: "municipality"
      
      4. language: you can choose between portuguese and english
      
      5. legal_amazon_only: setting the return of Legal Amazon Data (legal_amazon_only = TRUE) or Country´s Data (legal_amazon_only = FALSE)

``` r
# Download treated data (raw_data = FALSE) from the entire country 
# (legal_amazon_only = FALSE) in english (language = "eng")
data <- load_ibama(dataset = "areas_embargadas", raw_data = FALSE, 
                   language = "eng", legal_amazon_only = FALSE)

# Download raw data (raw_data = TRUE) from Legal Amazon region 
# (legal_amazon_only = TRUE)
data <- load_ibama(dataset = "areas_embargadas", raw_data = TRUE, 
                   legal_amazon_only = TRUE)
```

## 7 - SIGMINE

Loads information the mines being explored legally in Brazil, including
their location, status, product being mined and area in square meters
etc. Survey is done at municipal and state level. The National Mining
Agency (ANM) is responsible for this survey.

    There are three parameters in this function:
      
      1. dataset = 'sigmine_active'

      2. raw_data: there are two options:
      # TRUE: if you want the raw data.
      # FALSE: if you want the processed data. 

      3. language: you can choose between portuguese and english
      

``` r
# Download raw data (raw_data = TRUE).
data <- load_sigmine(dataset = 'sigmine_active', raw_data = TRUE)

# Download treated data (raw_data = FALSE) in portuguese (language = "pt").
data <- load_sigmine(dataset = 'sigmine_active', 
                     raw_data = FALSE,
                     language = "pt")
```

## 8 - MAPBIOMAS

The MAPBIOMAS project gathers data reporting the type of land covering
each year by area, that is, for example, the area used for a temporary
crop of soybeans. It also reports the transition between coverings
during given years.

    1. dataset: There are five possible choices.

    'mapbiomas_cover': type of land covering by biomes, states and municipalities.
                      data is available from 1985 to 2020.

    'mapbiomas_transition': transition between coverings by biomes, states and municipalities.
                            data is available from 1985 to 2020.


    'mapbiomas_deforestation_regeneration': deforestation and regeneration by biomes and states. 
                                            data is available from 1988 to 2020.

    'mapbiomas_irrigation': data about irrigation area by biomes and states.
                            data is available from 2000 to 2020

    'mapbiomas_grazing_quality': data about grazing quality by biome, state and municipality
                                 data is available from 2010 and 2018


    2. raw_data: there are two options:
      # TRUE: if you want the data as it is in the mapbiomas's site.
      # FALSE: if you want the treated (more organized) version of the data. 

    3. geo_level: 'state', 'municipality', 'biomes'
                   Read the details on the datasets because some of them don't have data for 'municipality'

    4. time_period: The data availability for each dataset is detailed above

    5. language: you can choose between portuguese ('pt') and english ('eng')

    6. time_id: 'year'

    7. cover_level: Five options: 
                    # cover_level = 0 has categories such as: Anthropic, Natural, Not Applied 
                    # cover_level = 1 has categories such as: Forest, Non Forest Natural Formation, Farming, Non Vegetated Area, Water, Non Observed
                    # cover_level = 2 has categories such as: Agriculture, Aquaculture, Beach and Dune, Forest Plantation,  Pasture, River, Lake and Ocean                                # cover_level = 3 has categories such as: Aquaculture, Beach and Dune, Forest Formation, Forest Plantation 
                    # cover_level = 4 has categories such as: Aquaculture, Beach and Dune, Forest Formation, Forest Plantation 

## 9 - CIPÓ

Loads Plataforma CIPÓ’s mappings on the organizations involved in
combatting environmental crimes. Each mapping consists on a listing of
actors or agreements along with attributions and many descriptions.

    There are two parameters in this function:
      
      1. dataset: There are three choices:
      # "brazilian_actors": mapping of Brazilian actors involved in preventing environmental crimes.
      # "international_cooperation": mapping of international agreements, treaties and conventions.
      # "forest_governance": mapping of forest governance arrangements.

      2. search: Filters the dataset to the rows containing the chosen search parameter.
      

``` r
# download the spreacdsheet on Brazilian actors involved in fighting environmental crimes
brazilian_actors <- load_cipo(dataset = "brazilian_actors")

# searching only for entries containing IBAMA
actors_ibama <- load_cipo(dataset = "brazilian_actors",
                          search = "ibama")

# entries containing IBAMA or FUNAI
actors_ibama <- load_cipo(dataset = "brazilian_actors",
                          search = "ibama|funai")
```

## The Structure of the functions

**1. Bind Global Variables:** The goal is to ensure that all the
variables in the function were initialized to some value. We also do
this to avoid errors when we check the function.

**2. Define Basic Parameters:** Create a list with all the parameters
from the function. The list *param* will be an organized list with all
the parameters of interest.

**3. Download Data:** In the majority of our functions, we download data
by using external_download(). However, when we download data from IBGE,
we use a function called sidra_download(). Both of these functions can
be found in the “download.R” file.

**4. Data Engineering:** In this section of the code, we (i) exclude
variables that we judge not to be relevant;(ii) sometimes we change the
class of some variables; (iii) sometimes we change data to be organized
in the long format or in the wide format depending on what we want; (iv)
generally speaking, it’s in this part of the code that we make the most
changes in the original Data Frame.

**5. Harmonizing Variable Names:** Rename columns with better names.

**6. Load Dictionary:** In the functions that work with IBGE’s data, we
use the function “load_dictionary()”. This function creates an organized
correspondence between the code of each product, its name, its unit of
measure and other attributes.

**7. Translation / add variables:** After having organized the Data
Frame, we then translate it. In some functions, the translation will
start in a section called “Labelling” and data from the “dictionary.R”
file will be used. In other functions, you will see the names of the
columns being translated first and then each line of the original Data
Frame will be translated.

**8. Return Data Frame:** In the structure of our functions, you will
see **(raw_data == TRUE){return(dat)}** right after “Downloading Data”.
All the changes explained in this document will only happen in case the
user specifies **(raw_data == FALSE)**.

## Examples

**1. Bind Global Variables:** example from *load_cempre()*

``` r
sidra_code <- available_time <- AMZ_LEGAL <- municipio_codigo <- ano <- ano_codigo <- classificacao_nacional_de_atividades_economicas_cnae_2_0_codigo <- geo_id <- id_code <- nivel_territorial <- nivel_territorial_codigo <- valor <- variavel <- unidade_de_medida <- unidade_de_medida_codigo <- NULL
```

**2. Define Basic Parameters:** example from *load_deter()*

``` r
# param=list()
#  param$dataset = dataset
#  param$time_period = time_period
#  param$language = language
#  param$raw_data = raw_data

#  param$survey_name = datasets_link() %>%
#    dplyr::filter(dataset == param$dataset) %>%
#    dplyr::select(survey) %>%
#    unlist()

#  param$url = datasets_link() %>%
#    dplyr::filter(dataset == param$dataset) %>%
#    dplyr::select(link) %>%
#    unlist()
```

**3. Download Data:** example from *load_degrad()*. It uses the
*external_download()* function.

``` r
# dat = suppressWarnings(as.list(param$time_period) %>%
#      purrr::map(
#        function(t){external_download(dataset = param$dataset,
#                                      source='degrad', year = t) %>%
#            janitor::clean_names()
#        }
#      ))
```

**4. Data Engineering**: example from *load_pam()*. In this process, we
decided to exclude some columns and convert the variable “valor” to
become numeric. After that we excluded all the lines with **NA**.

``` r
# dat = dat %>%
#           janitor::clean_names() %>%
#           dplyr::mutate_all(function(var){stringi::stri_trans_general(str=var,id="Latin-ASCII")})# %>%
          # dplyr::mutate_all(clean_custom)


#   dat = dat %>%
#     dplyr::select(-c(nivel_territorial_codigo,nivel_territorial,ano_codigo)) %>%
#     dplyr::mutate(valor=as.numeric(valor))



#   dat = dat %>%
#     dplyr::filter(!is.na(valor))
```

**5. Harmonizing Variable Names:** example from *load_pam()*. We
localize some datasets by using their numerical codes and within each of
these datasets we renamed some columns.

``` r
# if (param$code == 5457){
#     dat = dat %>%
#       dplyr::rename(produto_das_lavouras_codigo = produto_das_lavouras_temporarias_e_permanentes_codigo,
#                     produto_das_lavouras = produto_das_lavouras_temporarias_e_permanentes)
#   }

#   if (param$code == 1613){
#     dat = dat %>%
#       dplyr::rename(produto_das_lavouras_codigo = # produto_das_lavouras_permanentes_codigo,
#                     produto_das_lavouras = produto_das_lavouras_permanentes)
#   }


#   if (param$code %in% c(839,1000,1001,1002,1612)){
#     dat = dat %>%
#       dplyr::rename(produto_das_lavouras_codigo = # produto_das_lavouras_temporarias_codigo,
#                   produto_das_lavouras = produto_das_lavouras_temporarias)
#   }
```

**6. Load Dictionary:** example from *load_pam()*. For functions with
data from IBGE, we load the dictionary and then we convert the variable
“var_code” to become a character. Finally we exclude the observations
where var_code == “0”.

``` r
# dic = load_dictionary(param$dataset)

#  types = as.character(dic$var_code)

#  types = types[types != "0"] 
```

**7. Translation / add variables:** example from *load_degrad()*.This
section translates the names of the columns of the original Data
Frame.In this example, the original columns (variables) were in English
and therefore we translated it to Portuguese in case the user chooses
it.

``` r
# if (param$language == 'pt'){

#    dat_mod = dat %>%
#      dplyr::select(ano = year, linkcolumn, scene_id,
#                    cod_uf = code_state, cod_municipio = code_muni,
#                    classe = class_name, pathrow, area, data = view_date,
#                    julday, geometry
#      ) %>%
#      dplyr::arrange(ano, cod_municipio, classe)

#  }
```

## Credits

DataZoom is developed by a team at Pontifícia Universidade Católica do
Rio de Janeiro (PUC-Rio), Department of Economics. Our official website
is at: <http://www.econ.puc-rio.br/datazoom/>.
