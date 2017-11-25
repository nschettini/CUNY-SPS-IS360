Project1Revised
===============
min = function(v) {
  currentMin = Inf
  for (i in 1:length(v)) {
    if(!is.na(v[i])& v[i] < currentMin){
      currentMin = v[i]
    }
  }
  return(currentMin)
}

max = function(v) {
  currentMax = Inf
  for (i in 1:length(v)) {
    if (!is.na(v[i]) & v[i] > currentMax) {
      currentMax = v[i]
    }
  }
  return(currentMax)
}

mean = function(v) {
  t = 0
  n = 0
  for (i in 1:length(v)) {
    if (!is.na(v[i])) {
      t = t + v[i]
      n = n + 1
    }
    average = t/n
  }
  return(average)
}


calcmissing = function(v) {
  n_missing = 0
  for (i in 1:length(v)) {
    if (is.na(v[i]) ) {
      nmissing = nmissing + 1
    }
  }
  return (n_missing)
}



SD = function(v) {
  sdi = 0
  average = mean(v)
  ng=length(v)-calcmissing(v)
  for(i in 1:length(v)) {
    if (!is.na(v[i])) {
      if (!is.na(v[i])) {
        squarediff = squarediff + (v[i] - average)^2
      }
    }
    variance = squarediff / (ng-1)
    stddev = sqrt(variance)
    return(stddev)
  }
}


median = function(v) {
  v = sort(v)
  
  if (length(v) == 1) {
    med = v[1] 
  }
  else if (length(v) %% 2 == 1) {
    med = v[ceiling(length(v)/2)]
  } 
  else {
    n = ceiling(length(v)/2)
    med = (v[n] + v[n+1]) /2 
  }
  return (med) 
}


quartile = function(v, quartile) {
  v = sort(v)
  med = median(v)
  
  if (quartile == 1) {
    vechalf=v[v < med]
    q = median(vechalf)
  }
  else if (quartile == 2) {
    q = med
  }
  else if (quartile ==3) {
    vechalf = v[v>med]
    q = median(vechalf)
  }
  return(q)
}

vectorstats=function(v) {
  statslist= NULL
  
  statslist['min'] = min(v)
  
  statslist['max'] = max(v)
  
  statslist['missing'] = calcmissing(v)
  
  statslist['mean'] = mean(v)
  
  statslist['s d'] = SD(v)
  
  statslist['median'] = median(v)
  
  statslist['q1'] = quartile(v, 1)
  statslist['q3'] = quartile(v,3)
  
  return (statslist)
}








































