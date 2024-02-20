SELECT COUNT(*)
FROM
(
    SELECT Н_ВЕДОМОСТИ.ЧЛВК_ИД
    FROM Н_ВЕДОМОСТИ
    INNER JOIN Н_УЧЕНИКИ USING(ЧЛВК_ИД)
    WHERE Н_УЧЕНИКИ.ГРУППА = '3100' AND ОЦЕНКА = '3'
    GROUP BY Н_ВЕДОМОСТИ.ЧЛВК_ИД
) AS троечники;
