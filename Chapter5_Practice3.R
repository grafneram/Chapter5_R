
houseData <-read.csv("C:/Users/Crash/Downloads/Housing.csv")
head(houseData,6 )


summary_by_bedrooms <- describeBy( x=houseData, group=houseData$bedrooms)
summary_by_bedrooms


mean_bedrooms_furnishing <- aggregate(x= price ~ bedrooms + furnishingstatus,
                                      data = houseData,
                                      FUN = mean)
print(mean_bedrooms_furnishing)

sd_bedrooms_bathrooms_furnishing <- aggregate(x= price ~ bedrooms + furnishingstatus,
                                              data= houseData,
                                              FUN = sd)
print(sd_bedrooms_bathrooms_furnishing)