select round(abs(max(lat_n)-max(long_w))+abs((min(lat_n)+-min(long_w))),4) 
from station;
