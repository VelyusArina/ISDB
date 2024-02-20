
SELECT Н_УЧЕНИКИ.ГРУППА, AVG(EXTRACT(YEAR FROM AGE(NOW(), Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ)))
FROM Н_УЧЕНИКИ
INNER JOIN Н_ЛЮДИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
GROUP BY Н_УЧЕНИКИ.ГРУППА
HAVING AVG(EXTRACT(YEAR FROM AGE(NOW(), Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ))) >
(
    SELECT AVG(EXTRACT(YEAR FROM AGE(NOW(), Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ)))
    FROM Н_УЧЕНИКИ
    INNER JOIN Н_ЛЮДИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
    WHERE Н_УЧЕНИКИ.ГРУППА = '1101'
);
