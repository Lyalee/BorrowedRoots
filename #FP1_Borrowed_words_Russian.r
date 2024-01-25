#FP1 - Borrowed words in Russian
ibrary(dplyr)
my_import <- read.delim("D:\\Users\\claud\\Desktop\\Project\\dataverse_files\\Borrowed language\\01_rnc_borrowed_lemmata.txt",
                        header = TRUE)
attach(my_import)
my_import
print(head(my_import))
print(table(my_import$borrowed))
years <- table(my_import$year_first_occ)
print(years)
dplyr_import <- filter(my_import, borrowed != "N/A")
dplyr_import_sort <- dplyr_import %>% arrange(year_first_occ)
print(head(dplyr_import_sort))

#calculer la moyenne et median selon une condition
print(mean(my_import[my_import$borrowed == "True", "year_first_occ"]))
print(median(my_import[my_import$borrowed == "True", "year_first_occ"]))