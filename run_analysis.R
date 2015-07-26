run_analysis <-function(){
    #El presente script fue preparado para la clase de Getting and Cleaning Data
    #de coursera (getdata-030-2015). Autora: ducuchu
    library(dplyr)
    
#read the data of Training set and Test set.
    wd <- getwd()
    dbTrain <- read.table(paste(wd, "/train/X_train.txt", sep = ""))
    dbTest <-read.table(paste(wd, "/test/X_test.txt", sep = "")) 
    #read the labels of Training set and test set
    lbTrain <- read.table(paste(wd, "/train/y_train.txt", sep = ""))
    lbTest <- read.table(paste(wd, "/test/y_test.txt", sep = "")) 
    #read the subject of training set and test set 
    idTrain <- read.table(paste(wd, "/train/subject_train.txt", sep = ""))
    idTest <- read.table(paste(wd, "/test/subject_test.txt", sep = ""))

#merge database
    idc <- rbind(idTrain, idTest)
    colnames(idc)[1] <- "subject"
    lbc <- rbind(lbTrain, lbTest)
    colnames(lbc)[1] <- "activity"
    data <- rbind(dbTrain, dbTest)
    datai <- cbind(idc, lbc)
    dataf <- cbind(datai, data)

    #names of the column
    colnms <- read.table("features.txt")
    cn<- as.vector(colnms$V2)
    namsv <- paste0("V",1:561) 
    out <- rename_(dataf, .dots=setNames(namsv, cn))
    
#Extracts only the measurements on the mean and standard deviation for each measurement. 
    valid_column_names <- make.names(names=names(out), unique=TRUE, allow_ = TRUE)
    names(out) <- valid_column_names #the names on the data is duplicated
    
    datatemp<-select(out, -matches("meanF", ignore.case = FALSE))
    data2 <- select(datatemp, subject, activity, matches(".mean...", ignore.case = FALSE), 
                         matches(".std..."))

#Uses descriptive activity names to name the activities in the data set  
    acty <- read.table("activity_labels.txt")
    data2 <- merge(data2, acty, by.x = "activity", by.y ="V1")
    data2 <- select(data2, 2, 51, 3:50)
    colnames(data2)[2] <- "activityf"

#Appropriately labels the data set with descriptive variable names.
    names(data2) <- gsub("BodyAcc", "Accelerometer", names(data2))
    names(data2) <- gsub("BodyGyro", "Gyroscope", names(data2))
    names(data2)<-gsub("^t", "time", names(data2))
    names(data2)<-gsub("^f", "frequency", names(data2))

#creates a second, independent tidy data set with the average of each variable 
#for each activity and each subject.
    tidydatao <- group_by(data2, subject, activityf)
    tidydata<-tidydatao %>% summarise_each(funs(mean))
    write.table(tidydata, file = "TidyData.txt", row.names = FALSE)
    return(tidydata)
    print("your data is saved with the name: TidyData.txt")
}
