select to_char(round(sqrt(power(max(lat_n)-max(long_w),2)+power((min(lat_n)-min(long_w)),2)),4),'00.0000') 
from station;
