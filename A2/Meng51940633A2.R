# Question 1
#a.
chickwts[14,]

#b.
chickwts$weight[c(7,14,37)]

#c.
chickwtsCasein <- chickwts[chickwts$feed == "casein", ]
chickwtsCasein

#d. 
mean(chickwtsCasein$weight)

#e.
Feed = levels(chickwts$feed)
Feed

#f.
chick240 = subset(chickwts, chickwts$weight<240)
chick240

#g.
chick240Table = table(chick240$feed)
chick240Table
barplot(chick240Table)


#Question 2
#a.
nrow(cuckoos)

#b.
cuckoos$length[27]

#c.
cuckoos[40,]

#d.
cuckoosSpecies = levels(cuckoos$species)
cuckoosSpecies

#e.
cuckoos$m.pipitFactor = cuckoos$species
levels(cuckoos$m.pipitFactor) = c("other","meadow.pipit", rep("other",4))
levels(cuckoos$m.pipitFactor)
cuckoos$m.pipitFactor=="meadow.pipit"

#g.
cuckoosMPipit = subset(cuckoos, m.pipitFactor=="meadow.pipit")
cuckoosMPipit
cuckoosOther <- subset(cuckoos, m.pipitFactor=="other")
cuckoosOther

#h.
cuckoosLongLength = subset(cuckoos, length>23)
cuckoosLongLength
mean(cuckoosLongLength$breadth)

#Question 3
#a.
rain.df = read.table("rain.txt",header=FALSE,sep="")
rain.df

#b.
rain.df[2,4]

#c.
rainColumn = levels(rain.df)
rainColumn

#d.
rain.df[2,]

#e.
colnames(rain.df) = c("year","month","day1","day2","day3","day4","day5","day6","day7","day8","day9",
                    "day10","day11","day12","day13","day14","day15","day16","day17","day18","day19",
                    "day20","day21","day22","day23","day24","day25")
rain.df

#Question 4
#a.
temps <-
  c(-0.64, -0.56, -0.54, -0.65, -0.72, -0.76, -0.75, -0.77, -0.64, 
    -0.56, -0.81, -0.68, -0.71, -0.74, -0.75, -0.65, -0.59, -0.55, 
    -0.72, -0.6, -0.53, -0.59, -0.71, -0.79, -0.88, -0.72, -0.67, 
    -0.84, -0.87, -0.91, -0.86, -0.88, -0.79, -0.78, -0.6, -0.55, 
    -0.78, -0.84, -0.7, -0.66, -0.71, -0.65, -0.72, -0.68, -0.72, 
    -0.65, -0.54, -0.65, -0.65, -0.8, -0.59, -0.53, -0.61, -0.73, 
    -0.58, -0.64, -0.59, -0.47, -0.47, -0.47, -0.36, -0.32, -0.35, 
    -0.31, -0.19, -0.32, -0.48, -0.49, -0.53, -0.53, -0.62, -0.51, 
    -0.43, -0.36, -0.57, -0.59, -0.64, -0.4, -0.37, -0.41, -0.46, 
    -0.39, -0.41, -0.38, -0.64, -0.54, -0.49, -0.46, -0.51, -0.37, 
    -0.42, -0.53, -0.43, -0.29, -0.51, -0.46, -0.55, -0.26, -0.37, 
    -0.27, -0.17, -0.11, -0.31, -0.14, -0.29, -0.32, -0.25, -0.11, 
    -0.03, -0.15, 0, -0.01, -0.21, -0.2, -0.12, 0.02, -0.09, 0.04, 
    0.2, -0.02, -0.02, 0.11, 0.19, 0.18, 0.11, 0.25, 0.19, 0.22, 
    0.1, 0.2, 0.27, 0.16, 0.19, 0.21, 0.3, 0.43, 0.55)

#b.
temp.df = data.frame(TempDiff=temps,Year= c(1880:2016))
temp.df

#c.
temp.df$Period = ifelse(temp.df$Year<1939, "EARLY",ifelse(temp.df$Year>1980,"CURRENT","MIDDLE"))
temp.df

#d.
summary(temp.df)

#e.
tempPeriod = factor(temp.df$Period)
summary(tempPeriod)

#f.
temp.df[["TempAct"]] = (temp.df$TempDiff + 6)
temp.df

#g.
summary(temp.df)

#h.
var1 = with(temp.df, sample(temp.df$Year,6))
var1

 




