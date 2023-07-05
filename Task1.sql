SELECT dbo.Sluch.ID FROM dbo.LU
JOIN dbo.Sluch ON dbo.LU.Code = dbo.Sluch.Code_MO
WHERE MONTH(Date_2) = 05 AND YEAR(Date_2) = 2023 AND (dbo.Sluch.Vid_Pom = 1 AND (DATEDIFF(month, Date_1, Date_2) > 1 OR (DATEDIFF(month, Date_1, Date_2) = 1 AND (DAY(Date_1) != DAY(Date_2))))) AND (dbo.Sluch.Vid_Pom != 1 AND (DATEDIFF(day, Date_1, Date_2) > 14)
