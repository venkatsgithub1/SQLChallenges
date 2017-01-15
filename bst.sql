select N, 
case 
when P is null then 'Root'
when P is not null and N in (select distinct P from bst) then 'Inner'
else 'Leaf' end from bst order by N;
