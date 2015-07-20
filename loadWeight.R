w.data <- read.csv("weight.csv", colClass = c(rep("character", 2),
                                            rep("numeric", 3),
                                            "character",
                                            "numeric",
                                            "character",
                                            rep("numeric", 2)))

dateTime <- paste(w.data[, 1], w.data[, 2])
w.data <- w.data[, -c(1:2)]
dateTime <- as.POSIXct(dateTime, format="%d/%m/%y %H:%M:%S")
w.data <- cbind(DateTime=dateTime, w.data)
w.data$Weight.loss <- with(w.data, Weight.before - Weight.after)
w.data$Weight.loss.per.km <- with(w.data, Weight.loss/Distance.km)

convHMSToM <- function(HMS) {
## convert H:M:S character to numeric, decimal M (minutes)
    s <- rev(as.numeric(unlist(strsplit(HMS, split=":"))))
    s.out <- 0
    for (i in 1:length(s)) {
        s.out <- s.out + s[i]*60^(i-2)
    }
    return(s.out)
}

w.data$Duration.minutes <- sapply(w.data$Duration.M.S, convHMSToM)
w.data$Garmin.pace.minutes.per.km <- sapply(w.data$Garmin.pace.M.S.km, convHMSToM)

