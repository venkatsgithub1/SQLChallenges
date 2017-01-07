select Doctor,Professor,Singer,Actor from (
SELECT NAME,OCCUPATION,ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS RNBR FROM OCCUPATIONS )
PIVOT
(MIN (NAME) FOR OCCUPATION IN ('Doctor' as Doctor,'Professor' as Professor,'Singer' as Singer,'Actor' as Actor))
order by RNBR
;
