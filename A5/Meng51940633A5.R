# Question 1
#a. 
secant = function(x1,x2,f){
  for(i in 1:3){
    x3 = x2-(f(x2)*(x2-x1)/(f(x2)-f(x1)))
    x2 = x1
    x1 = x3
  }
  return(x3)
}

#b. 
f = function(x){
    cos(x)
}
secant(1.56, 1.58, f)

#c)
f = function(x){
  ((x^3)-(2*x)+3)
}
secant(-2,-1.8, f)

# Question 2
#a. 
WHunif = function(n,x,y,z){
  u = numeric(n)
  for (i in 1:n){
    x =  (171*(x-1)) %% 30269
    y = (172*(x-1)) %% 30307
    z = (170*(x-1)) %% 30323
    v = (x/30269) + (y/30307) + (z/30323)
    u[i] = v - floor(v)
  }
  return(u)
}

#b. 
WHunif(20,1,2,3)

# Question 3 
#a. 
WHcointoss = function(n, p){
  tosses = WHunif(n, 1, 2, 3)
  results = numeric(n)
  for(i in 1:length(tosses)){
    if(tosses[i] > p){
      results[i] <- 1
    }else{
      results[i] <- 0
    }
  }
  return(results)
}
#b.
WHcointoss(20, 0.5)

# Question 4
func = function(x){
  return(log(x)+x)
}
secant(0.5,1,func)

# Question 5
#a.
myrandom  = function(n,x){
  set.seed(x)
  toReturn = numeric(n)
  for (i in 1:n){
    x = (171*(x-1)) %% 30269
    toReturn[i] = x/30269
  }
  return(toReturn)
}
#b. 
myrandom(10,25)
# Question 6
#a.
myguesses = function(n){
  x = myrandom(n,325)
  toReturn = as.integer(x <= 0.25)
  return(toReturn)
  
}
#b. 
myguesses(20)
cat(sum(myguesses(20)), "  out of 20 answers were correct")

