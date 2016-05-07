def wonky_coins(n)

    return 1 if n == 0
    
    return wonky_coins((n/2).truncate) + wonky_coins((n/3).truncate) + wonky_coins((n/4).truncate)

end
 
