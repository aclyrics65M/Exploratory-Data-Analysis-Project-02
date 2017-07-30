# Read data files
# read national emissions data
NEI <- readRDS("exdata-data-NEI_data/summarySCC_PM25.rds")
# str(NEI)
# dim(NEI)
# head(NEI)
#read source code classification data
SCC <- readRDS("exdata-data-NEI_data/Source_Classification_Code.rds")
# str(SCC)
# dim(SCC)
# head(SCC)
# visualization

# Setting the Dimensions.
number.add.width<-800                             # width length to make the changes faster
number.add.height<-800                             # height length to make the changes faster

require(dplyr)
