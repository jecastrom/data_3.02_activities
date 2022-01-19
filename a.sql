SELECT
    client_id AS clients_with_no_credit_cards,
    card_id
FROM
    disp d
    LEFT JOIN card c ON d.disp_id = c.disp_id
WHERE
    card_id IS NULL
LIMIT
    10;