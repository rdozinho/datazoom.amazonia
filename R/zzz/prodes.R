#' @importFrom dplyr %>%
#' @importFrom rlang .data
NULL

#' Loads and cleans deforestation data from INPE.
#'
#' @inheritParams load_prodes_raw
#' @param geo_aggregation A string that indicates the level of aggregation of the data. It can be by "Municipality" or
#'   "State".
#' @param language A string that indicates in which language the data will be returned. The default is "eng", so your data will be returned in English.
#'   The other option is "pt" for Portuguese.
#' @return A \code{tibble}.
#'
#' @seealso [load_prodes_raw] for loading raw data.
#'
#' @author DataZoom, Department of Economics, Pontifical Catholic University of Rio de Janeiro.
#'
#' @encoding UTF-8
#' @export
#'
#' @examples
#' \dontrun{
#' load_prodes(2018)
#'
#' load_prodes(
#'   c(2017, 2018),
#'   geo_aggregation = "state",
#'   language = "pt"
#' )
#'
#' load_prodes(
#'   system.file("extdata", package = "datazoom.amazonia"),
#'   geo_aggregation = "state",
#'   language = "en"
#' )
#'
#' load_prodes(
#'   system.file("extdata", "DesmatamentoMunicipios2015.txt", package = "datazoom.amazonia"),
#'   geo_aggregation = "municipality",
#'   language = "pt"
#' )
#' }
load_prodes <- function(source, geo_aggregation = "municipality", language = "eng") {
  # Downloading raw data
  raw_data <- load_prodes_raw(source)

  # Treating data according to parameters selected
  list_df <- lapply(raw_data, treat_prodes_data, geo_aggregation = geo_aggregation, language = language)

  dplyr::bind_rows(list_df)
}

#' Loads deforestation data from INPE.
#'
#' @param source A number of different sources are supported:
#'
#' Passing a numeric \code{vector} of years will download the corresponding data from the INPE website (data is organized by prodes-year - from august to july - for more information, see the vignette).
#'
#' Passing a \code{string} with a directory's path will read data from all files named
#'   "\{path\}/DesmatamentoMunicipiosXXXX.txt".
#'
#' Alternatively, \code{source} may be a list of full file paths, or anything else readable by \code{utils::read.csv()}.
#'
#' @return A list of \code{tibble}.
#'
#' @seealso [load_prodes] for loading and treating the data.
#'
#' @author DataZoom, Department of Economics, Pontifical Catholic University of Rio de Janeiro.
#'
#' @encoding UTF-8
#' @export
#'
#' @examples
#' \dontrun{
#' load_prodes_raw(2017)
#' }
#'
#' \dontrun{
#' load_prodes_raw(c(2016, 2017, 2018))
#' }
#'
#' \dontrun{
#' load_prodes_raw(system.file("extdata", package = "datazoom.amazonia"))
#' }
#'
#' \dontrun{
#' load_prodes_raw(
#'   system.file("extdata", "DesmatamentoMunicipios2015.txt", package = "datazoom.amazonia")
#' )
#' }
#'
#'
load_prodes_raw <- function(source) {
  # If source is a list of numbers (years), we construct the URLs to download data
  if (is.numeric(source)) {
    source <- purrr::map(source, urls_prodes)
  }
  # If source is a directory, we expand and filter the list of files
  else if (is.character(source) && length(source) == 1 && dir.exists(source)) {
    source <-
      list.files(path = source, full.names = TRUE) %>%
      grep(pattern = "DesmatamentoMunicipios\\d{4}.txt", value = TRUE)
  }
  # Otherwise, we assume that source is something that can already be interpreted by read.csv()

  # Identifies column type ("d" - integer; "c" - character)
  csv_types <- readr::cols("d", "d", "d", "c", "c", "c", "c", "c", "d", "d", "d", "d", "d", "d", "d", "d", "d")

  # Reads the csvs containing the data
  source = lapply(source, readr::read_csv, col_types = csv_types, locale = readr::locale(encoding = "latin1"))

  return(source)

  }

treat_prodes_data <- function(df, geo_aggregation, language) {
  geo_aggregation <- tolower(geo_aggregation)
  if (geo_aggregation == "state") {
    df <-
      df %>%
      # Adds column with UF codes, eg. MA = 21
      dplyr::mutate(CodIBGE = as.factor(substr(.data$CodIbge, start = 1, stop = 2))) %>%
      # Removes unnecessary columns
      dplyr::select(-c("Latgms", "Lat", "Long", "Longms", "Municipio", "CodIbge")) %>%
      dplyr::group_by(.data$Estado, .data$CodIBGE) %>%
      # Collapses data by state
      dplyr::summarize_if(is.numeric, sum, na.rm = TRUE)
  }
  else if (geo_aggregation == "municipality") {
    df <- dplyr::mutate(df, CodIBGE = as.factor(.data$CodIbge)) %>% dplyr::select(-c("CodIbge"))
  }
  else {
    warning("Aggregation level not supported. Proceeding with Municipality.")
  }

  # Get year from column names and put it into its own column
  df$Ano <-
    colnames(df) %>%
    purrr::detect(function(x) startsWith(x, "Des")) %>%
    gsub(pattern = ".*(\\d{4}).*", replacement = "\\1") %>%
    as.numeric()


  # Removes year from column name
  colnames(df) <- gsub("(.*)\\d{4}?", "\\1", colnames(df))


  # Translation
  language <- tolower(language)
  if (language == "eng") {
    df <- translate_prodes_to_english(df)
  }
  else if (language != "pt") {
    warning("Selected language is not supported. Proceeding with Portuguese.")
  }

  # Removes useless columns
  dplyr::select(df, -c("Nr", "Soma"))
}

translate_prodes_to_english <- function(df) {

  #################
  ## Translation ##
  #################

  dplyr::rename_with(
    df,
    dplyr::recode,
    Municipio = "Municipality",
    CodIBGE = "CodIBGE",
    Estado = "State",
    Incremento = "Increment",
    Desmatado = "Deforested",
    Floresta = "Forest",
    Nuvem = "Cloud",
    NaoObservado = "NotObserved",
    NaoFloresta = "NotForest",
    Hidrografia = "Hydrography",
    Ano = "Year"
  )
}

urls_prodes <- function(year) {
  # Generates urls to get prodes data from corresponding year
  paste0(
    "http://www.dpi.inpe.br/prodesdigital/tabelatxt.php?ano=",
    year,
    "&estado=&ordem=MUNICIPIO&type=tabela&output=txt&"
  )
}
