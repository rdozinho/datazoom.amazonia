load\_ips
================

Loads information on the social and environmental performance of the
Legal Amazon. Survey is done at the municipal level and data is
available in 2014 and 2018.

# Usage:

``` r
There are four parameters in this function:
  
  1. dataset = "ips"

  2.raw_data : there are two options:
  
  # TRUE: if you want to visualize the raw data.
  # FALSE: if you want to visualize the processed version of the data. 
  
 
 3. time_period : data is available in 2014 and 2018.

 4. language : you can choose between portuguese and english
  
 # "pt"
 # "eng"
```

# Examples:

``` r

# Download raw data (raw_data = TRUE) from 2014 (time_period = 2014) in english (language = 'eng')

data = load_ips(dataset = "ips", raw_data = TRUE,
                    time_period = 2014, language = 'eng')

# Download treated data (raw_data = FALSE) from 2014 (time_period = 2018) in portuguese (language = 'pt')

data = load_ips(dataset = "ips", raw_data = FALSE,
                    time_period = 2018, language = 'pt')
```
