##############################################
# Read in SE data
##############################################
SE_source_data <- readRDS("inst/data-raw/natSE_source_data_n20.RDS") # n >=20 in at least one sector
area_classification <- read_csv("inst/data-raw/Country-and-area-classification.csv")

FP_2030_countries <- c("Afghanistan","Benin","Burkina Faso","Cameroon",
                       "Congo", "Congo Democratic Republic", "Cote d'Ivoire",
                       "Ethiopia", "Ghana","Guinea","India","Kenya", "Liberia", "Madagascar",
                       "Malawi","Mali", "Mozambique", "Myanmar", "Nepal", "Niger", "Nigeria", "Pakistan",
                       "Philippines", "Rwanda", "Senegal", "Sierra Leone", "Togo", "Tanzania", "Uganda", "Zimbabwe")

area_classification <- area_classification %>%
  dplyr::select(`Country or area`, `Region`) %>%
  dplyr::rename(Country = `Country or area`)

# Y and SE transformation to account for (0,1) limits (total in sector)
SE_source_data <- SE_source_data %>%
  dplyr::left_join(area_classification) %>%
  dplyr::mutate(prop.trans = proportion*((nrow(SE_source_data)-1)+0.33333)/nrow(SE_source_data)) %>%
  dplyr::mutate(SE.prop.trans = SE.proportion*((nrow(SE_source_data)-1)+0.33333)/nrow(SE_source_data)) %>%
  dplyr::filter(SE.prop.trans != 0)

# Adding missing country world regions
national_FPsource_data <- SE_source_data %>%
  dplyr::mutate(Region = case_when(Country=="Bolivia" ~ "South America",
                            Country=="Kyrgyz Republic" ~ "Central Asia",
                            Country=="Moldova" ~ "Eastern Europe",
                            TRUE ~ as.character(Region)))

national_FPsource_data <- national_FPsource_data %>%
  dplyr::select(!c(Method_collapse, check_sum)) %>%
  dplyr::rename(Super_region = Region) %>%
  dplyr::select(Country, Super_region, Method, average_year, sector_category, prop.trans, SE.proportion, n) %>%
  dplyr::rename(proportion = prop.trans)

usethis::use_data(national_FPsource_data, overwrite=TRUE)
