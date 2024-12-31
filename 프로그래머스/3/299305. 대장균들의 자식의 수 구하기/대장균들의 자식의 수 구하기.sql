WITH CHILD_COUNT AS (
    SELECT
        ID,
        CHILD_COUNT
    FROM
        ECOLI_DATA
    
)
SELECT
    ID,
    (SELECT
        COUNT(*)
    FROM
        ECOLI_DATA A
    WHERE
        E.ID = A.PARENT_ID
    ) AS CHILD_COUNT
FROM
    ECOLI_DATA E
ORDER BY
    ID ASC;