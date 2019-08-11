

# count <- 0
# total <- 0
# 
# rowmean <- function(a){
# count <- 0
# total <- 0
# 
# for(i in a){
#   
#   total <- i + total
#   count <- count + 1
#   
# }
# return(total/count)
# }
# rowmean(dat[3,])
# rowmean(dat[1,])
# 
# 
# for(ii in c(1,2,3)){
#   
#   
#   
#  y[ii] <- rowmean(dat[ii,])
#   
# }
# print(y)
# 
# get_storm_event_table <- function (filename) {
#   dat <- read.csv(filename,stringsAsFactors=FALSE)
#   dat <- transform(dat,
#                    lat  = round(LATITUDE),
#                    long = round(LONGITUDE))
#   dat <- transform(dat,
#                    lat  = factor(lat,-14:63),
#                    long = factor(long,-171:-65))
#   return(table(dat$lat,dat$long))
# }
# 
# #Contour plot
# x       <- strsplit(names(counts)," ")
# cplot18 <- data.frame(lat  = as.numeric(sapply(x,function (a) a[1])), 
#                       long = as.numeric(sapply(x,function (a) a[2])), 
#                       count = as.vector(counts))
# 
# # Plot 1.
# ggplot(cplot18, aes(x = long, y = lat, color = count)) + 
#   geom_point(size = 2) +
#   scale_color_gradient(low = "lightyellow",high = "darkred")
# 
# ggplot(dat2, aes(x = LONGITUDE, y = LATITUDE)) +
#   geom_density_2d(bins = 20)
# 
# # Plot of the differences
# dat2018minus2017 = dat2018 - dat2017
# hist(dat2018minus2017, n = 50)
# cplot2018m2017 <- data.frame(lat   = as.vector(matrix(as.numeric(colnames(dat2018minus2017)),78,107,byrow=TRUE)),
#                              long  = as.vector(matrix(as.numeric(rownames(dat2018minus2017)),78,107,byrow=FALSE)),
#                              count = as.vector(dat2018minus2017))
# p1 <- ggplot(cplot2018m2017, aes(x = lat, y = long, color = count)) +
#   geom_point(size = 3) +
#   scale_color_gradient2(low = "darkgreen",high = "darkred",mid = "white") +
#   theme_minimal()
# 
# # Plot of the ratio
# dat2018ratio2017 = (dat2018 + 1)/(dat2017 + 1)
# cplot2018r2017 <- data.frame(lat   = as.vector(matrix(as.numeric(colnames(dat2018ratio2017)),78,107,byrow=TRUE)),
#                              long  = as.vector(matrix(as.numeric(rownames(dat2018ratio2017)),78,107,byrow=FALSE)),
#                              count = as.vector(dat2018ratio2017))
# p2 <- ggplot(cplot2018r2017, aes(x = lat, y = long, color = log10(count))) +
#   geom_point(size = 3) +
#   scale_color_gradient2(low = "darkgreen",high = "darkred",mid = "white") +
#   theme_minimal()
# plot_grid(p1,p2,nrow=2)
# 
# for (i in 1:868)
#   print(x[[i]][1])
# 
# events2018 <- read.csv("~/Downloads/StormEvents_locations-ftp_v1.0_d2018_c20190617.csv",stringsAsFactors=FALSE)
# x <- subset(events2018,round(LATITUDE) == 43 & round(LONGITUDE) == -96)
# 
# dat2017 <- get_storm_event_table("~/Downloads/StormEvents_locations-ftp_v1.0_d2017_c20190716.csv")
# dat2018 <- get_storm_event_table("~/Downloads/StormEvents_locations-ftp_v1.0_d2018_c20190617.csv")
# 
# library(ggplot2)
# quickplot(as.vector(dat2017),as.vector(dat2018),xlim = c(0,900),ylim = c(0,900))
# e <- 0.05*rnorm(8346)
# quickplot(log10(as.vector(dat2017)) + e,log10(as.vector(dat2018)) + e) +
#   geom_abline(intercept = 0, slope = 1,color = "orange")
# x <- which(dat2017 == 1 & dat2018 > 100, arr.ind = TRUE)
# plot(log10(as.vector(dat2017)),log10(as.vector(dat2018)))
# datplot <- data.frame(datLnum = NULL,
#                    datL2num = NULL)
# 
# ggplot(dat17, aes(x = long, y = lat)) + geom_point()
# for(columndatl in colnames(datL)){
#   if(is.element(columndatl,colnames(datL2))){
#     
#   
#     for(rowdatl in row.names(datL)){
#       if(is.element(rowdatl, row.names(datL2))){
#         datplot <- rbind(datplot,data.frame(datL[rowdatl,columndatl], datL2[rowdatl,columndatl]))
#       }
#     }
#   }
# }
# plot(datplot)
# counts <- table(dat2$LL)
# countslarge <- which(counts > 200)
# dat3 <- subset(dat2,is.element(LL, names(countslarge)) )
# library(rnaturalearth)
# library(sp)
# 
# sp::plot(ne_states(country = 'united states of america'))
# #points(dat2$LONGITUDE,dat2$LATITUDE,pch=20, col = "orange")
# points(dat3$LONGITUDE,dat3$LATITUDE,pch=20, col = "yellow")
# quickplot(events2018$LONGITUDE,events2018$LATITUDE,color = events2018$LOCATION_INDEX)
# 
# library(ggplot2)
# library(cowplot)
# 
# 
# # New code:
# dat3 <- subset(dat2,is.element(LOCATION,names(datLBig)))
# x <- paste(dat3$lat,dat3$long)
# rows <- !duplicated(x)
# dat3 <- dat3[rows,]
# keep_cities <- names(which(table(dat3$LOCATION) == 1))
# rows <- !duplicated(dat3$LOCATION)
# 
# dat3 <- data.frame(YEARMONTH = NULL,
#                    EPISODE_ID = NULL,
#                    EVENT_ID = NULL,
#                    LOCATION_INDEX = NULL,
#                    RANGE = NULL,
#                    AZIMUTH = NULL,
#                    LOCATION = NULL,
#                    LATITUDE = NULL,
#                    LONGITUDE = NULL,
#                    LAT2 = NULL,
#                    LON2 = NULL)
# system.time({
# for (i in 1:100){
#   for(j in 1:nrow(as.data.frame(datLBig))){
#     if(row.names(as.data.frame(datLBig[j])) == dat2[i,]$LOCATION){
#       dat3 <- rbind(dat3,dat2[i,])
#       
#     }
#   }
# }
# })
# plot(dat3$LONGITUDE,dat3$LATITUDE,pch=20)
# 
# totalpoints = 0
# for(j in 1:nrow(as.data.frame(x))){
#   if(x[j] > 20){
#     totalpoints <- totalpoints + as.numeric(x[j])
#   }
#   
# }
# print(totalpoints)

#print(row.names(as.data.frame(datLBig[1])))
#print(dat2[1,]$LOCATION)

