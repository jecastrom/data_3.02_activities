SELECT
    d.A2 AS district_name,
    c.client_id,
    dp.account_id,
    dp.`type` AS client_type
FROM
    client c
    INNER JOIN district d ON c.district_id = d.A1
    INNER JOIN disp dp ON c.client_id = dp.client_id
WHERE
    `type` = 'OWNER'
ORDER BY
    1
LIMIT
    10;