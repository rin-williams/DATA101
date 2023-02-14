##Question 1

#a.
11 * 11
#Answer is 121

#b.
11 * 111
#Answer is 1221

#c.
11 * 1111
#Answer is 12221

#d.
11 * 11111
#Answer is 122221

#e.
#Answer: Based on the pattern I see above, I can safely predict that the product of
# 11 and 1111111111111111111 is 12222222222222222221

#f.
options(digits=15)
11 * 1111111111111111111
#Answer: 12222222222222223360, I am the one who is right. The number shown is because R cannot
#handle such numbers.

##Question 2

#a.
riversYards <- rivers * 1760

#b.
riversYards[1:10]
#Answer: 1293600  563200  572000  689920  922240  792000 2567840  237600  818400 1056000

#c.
riversBetween <- riversYards[(riversYards<1000000) & (riversYards>500000)]
riversBetween

#d.
barplot(rivers[1:5])
#Answer: No, it is not recorded in a decreasing order.

#e.
Rivers <- sort(rivers, decreasing = TRUE)
barplot(Rivers[1:10])
#Answer: There are 4 rivers that are longer than 2000 miles.

#f.
barplot(rivers[1:10])
rivers[1:10]
#Answer: There are 0 river that are longer than 2000 miles.

#g.
#Answer: There are 0 river that are longer than 1500 miles.

#h.
#Answer: There are 3 rivers that are longer than 500 miles.

##Question 3

#3a. Generate this code pattern: 
## [1] 1 4 9 16 25 36 49 64 81 100
#Answer is:
(1:10)^2

#3b. Generate this code pattern:
## [1] 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32
## [17] 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64
## [33] 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96
## [49] 98 100
#Answer is:
seq(2, 100, 2)

#3c.
#Answer:
n <- 1:5
an <- 1 - (1/n)
an #[1] 0.0000000 0.5000000 0.6666667 0.7500000 0.8000000

#3d. 
#Answer:
n <- 5
an <- 1 - (1/n)
an #[1] 0.8
# it seems that R gave me a much less sig fig number for this one.


#3e.
#Answer:
#i: 
sum(1:200) #[1] 20100

#ii:
nVec = 1:20
GLseq <- (-1)^(nVec+1)/(2*nVec-1) 
sum(GLseq) #[1] 0.772906
pi/4 #[1] 0.7853982

nVec2 = 1:100
GLseq <- (-1)^(nVec2+1)/(2*nVec2-1)
sum(GLseq) #[1] 0.7828982
pi/4 #[1] 0.7853982

nVec2 = 1:1000
GLseq <- (-1)^(nVec2+1)/(2*nVec2-1)
sum(GLseq) #[1] 0.7851482
pi/4 #[1] 0.7853982

nVec2 = 1:10000
GLseq <- (-1)^(nVec2+1)/(2*nVec2-1)
sum(GLseq) #[1] 0.7853732
pi/4 #[1] 0.7853982

nVec2 = 1:100000
GLseq <- (-1)^(nVec2+1)/(2*nVec2-1)
sum(GLseq) #[1] 0.7853957
pi/4 #[1] 0.7853982

nVec2 = 1:1000000
GLseq <- (-1)^(nVec2+1)/(2*nVec2-1)
sum(GLseq) #[1] 0.7853979
pi/4 #[1] 0.7853982

#Answer: as n is from 1:higher & higher number, we can expect the Gregory formula to simplify
#closer to pi/4.

#3f.
#Answer
#i:
vec = rep(c(5:1,1:5),10)
rep(seq(1,100), vec)


#ii: 
2^(seq(0,8))

#iii:
rep(rep(seq(3,7),c(3,2,4,2,1)),5)

#iv:
seq(-6,21,by=3)










