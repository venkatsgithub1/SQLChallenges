select Doctor,Professor,Singer,Actor 
from 
(select name,occupation,row_number() over (partition by occupation order by name) as rnbr from occupations) 
pivot 
( min( name) for (occupation) in ('Doctor' as Doctor,'Professor' as Professor,'Singer' as Singer,'Actor' as Actor)) 
order by rnbr ;
