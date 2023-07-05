SELECT ROW_NUMBER() OVER(ORDER BY COUNT(dbo.Sluch.ID) DESC), dbo.Sluch.FIO, COUNT(dbo.Sluch.ID) FROM dbo.LU
JOIN dbo.Sluch ON dbo.LU.Code = dbo.Sluch.Code_MO AND dbo.Sluch.Vid_Pom = 3
WHERE dbo.LU.Type = 1
GROUP BY dbo.Sluch.FIO, dbo.LU.Code
HAVING COUNT(dbo.Sluch.ID) > 3
