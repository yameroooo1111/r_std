# To ensure Chinese characters are displayed correctly
options(encoding = "UTF-8")
Sys.setlocale("LC_CTYPE", "en_US.UTF-8")
data1 <- list(
  file = "data/international_flights.json",
  meta = list(
    name = "國際航空定期時刻表",
    source_link = "https://data.gov.tw/dataset/161167")
)

flights <- list(
  data = list(data1)
)
saveRDS(flights, "data/flights.rds")
person1 <- list(
  name = "John",
  age = 30,
  married = TRUE
)
person2 <- list(
  name = "Mary",
  age = 25,
  married = FALSE
)
person3 <- list(
  name = "Tom",
  age = 35,
  married = TRUE
)

# observation by observation stacking
data_obo <- list(person1, person2, person3)
names = c("John", "Mary", "Tom")
ages = c(30, 25, 35)
isMarried = c(TRUE, FALSE, TRUE)

# feature by feature stacking
data_fbf <- list(
  name = names, 
  age = ages, 
  married = isMarried)
simplifyDataFrame = FALSE
head(flights_obo, 3)
