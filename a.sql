SELECT
    d.A2 AS district_name,
    format(l.amount, 2, 'de_DE') AS amount_borrowed,
    format(floor(avg(l.amount)), 2, 'de_DE') AS average_loan_amount
FROM
    district d
    INNER JOIN `client` c ON d.A1 = c.district_id
    INNER JOIN `account` a ON c.district_id = a.district_id
    INNER JOIN loan l ON a.account_id = l.account_id
GROUP BY
    1
ORDER BY
    2 DESC
LIMIT
    10;