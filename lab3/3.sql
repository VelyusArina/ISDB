SELECT COUNT(*) FROM (
    SELECT ФАМИЛИЯ
    FROM Н_ЛЮДИ
    GROUP BY ФАМИЛИЯ
) AS surname;
