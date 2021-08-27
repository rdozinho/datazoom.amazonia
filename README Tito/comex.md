load\_br\_trade
================

# Usage:

``` r

There are five parameters in this function:
  
  1. dataset: there are three choices:
  # "comex_export_mun" : selects exports data by municipality
  # "comex_import_mun" : selects imports data by municipality
  # "comex_export_prod" 
  # "comex_import_prod"
  
  2.raw_data : there are two options:
  
  # TRUE: if you want to visualize the raw data.
  # FALSE: if you want to visualize the processed version of the data. 
  
 
 3. time_period : 
  
 # Can be a sequence of numbers such as 2010:2012

 4. language : you can choose between portuguese and english
  
 # "pt"
 # "eng"
 
 5. prod_class: A string indicating the classification to be downloaded. Defaults to "hs".
 
 # "hs"   : (SH - Sistema Harmonizado/Harmonized System) - this is an international system that classifies products. It was created by the World Customs Organization (Organização Mundial das Alfândegas)
 
 # "cuci" : (CUCI - Classificação Uniforme do Comércio Internacional/ Standard International Trade Classification). It is based on the type of material utilised during the production, the stage of the production process, the importance of the product in international trade and the tecnology used. 
 
 # "isic" : (ISIC - Classificação Internacional Padrão por Atividade Econômica/– International Standard Industrial Classification). According to the United Nations: the scope of ISIC in general covers productive activities, i.e., economic activities within the production boundary of the System of National Accounts (SNA). A few exceptions have been made to allow for the classification of activities beyond the production boundary but which are of importance for various other types of statistics. These economic activities are subdivided in a hierarchical, four-level structure of mutually exclusive categories, facilitating data collection, presentation and analysis at detailed levels of the economy in an internationally comparable, standardized way. The categories at the highest level are called sections, which are alphabetically coded categories intended to facilitate economic analysis. The sections subdivide the entire spectrum of productive activities into broad groupings, such as “Agriculture, forestry and fishing”, “Manufacturing” and “Information and communication”.The classification is then organized into successively more detailed categories, which are numerically coded: two-digit divisions; three-digit groups; and, at the greatest level of detail, four-digit classes. 
 
 # "cgce" : (CGCE - Classificação por Grandes Categorias Econômicas/Broad Economic Categories). Organizes data of the international trade in large groups following the classification of CUCI (Standard International Trade Classification).


  
```

# Examples:

``` r
# download treated (raw_data = FALSE) exports data by municipality (dataset = "comex_export_mun") from 1997 to 2021(time_period = 1997:2021) following the "hs" classification (prod_class = "hs")

exp_mun <- load_br_trade(dataset = "comex_export_mun", 
                         raw_data = FALSE, time_period = 1997:2021, prod_class = "hs")

# download treated(raw_data = FALSE) imports data by municipality (dataset = "comex_import_mun") from 1997 to 2021 (time_period = 1997:2021) using "CUCI" classification (prod_class = "cuci")
 imp_mun_cuci <- load_br_trade(dataset = "comex_import_mun",
                               raw_data = FALSE, time_period = 1997:2021,
                               prod_class = "cuci")
```
