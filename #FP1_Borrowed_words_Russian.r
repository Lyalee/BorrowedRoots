#FP1 - Borrowed words in Russian
my_import <- read.delim("D:\\Users\\claud\\Desktop\\Project\\dataverse_files\\Borrowed language\\01_rnc_borrowed_lemmata.txt",
                        header = TRUE)
library(warn.conflicts = FALSE)
my_import
print(head(my_import))
print(table(my_import$borrowed))
years <- table(my_import$year_first_occ)
print(years)

dplyr_import <- filter(my_import, borrowed != "N/A")
dplyr_import_sort <- dplyr_import %>% arrange(year_first_occ)
print(head(dplyr_import_sort))

#calculer la moyenne et median selon une condition
print(mean(dyplr_import_sort[dyplr_import_sort$borrowed == "True", "year_first_occ"]))
print(median(dyplr_import_sort[dyplr_import_sort$borrowed == "True", "year_first_occ"]))
