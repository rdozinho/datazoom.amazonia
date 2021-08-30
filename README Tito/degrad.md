load\_degrad
================

Loads information on forest degradation in the Brazilian Amazon,
replaced by DETER-B in December 2016. Data is available from 2007 to
2016.

# Usage:

``` r
There are four parameters inthis function:
  
  1. dataset = "degrad"

  2.raw_data : there are two options:
  
  # TRUE: if you want to visualize the raw data.
  # FALSE: if you want to visualize the processed version of the data. 
  
 
 3. time_period : as mentioned before, the user may choose between 2007 to 2016
  
 # Can be a sequence of numbers such as 2010:2012

 4. language : you can choose between portuguese and english
  
 # "pt"
 # "eng"


  
```

# Examples:

``` r

# download raw data (raw_data = TRUE) related to forest degradation from 2010 to 2012 (time_period = 2010:2012) in portuguese (language = "pt"): 

data = load_degrad(dataset = 'degrad', raw_data = TRUE,
                        time_period = 2010:2012,
                        language = 'pt')

# download treated data (raw_data = FALSE) related to forest degradation from 2013 (time_period = 2013) in english (language = "eng"): 

data = load_degrad(dataset = 'degrad', raw_data = FALSE,
                        time_period = 2013,
                        language = 'eng')
```
