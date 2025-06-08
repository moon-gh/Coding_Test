SELECT 
    ID,
    CASE
        WHEN percentile <= 0.25 THEN 'CRITICAL'
        WHEN percentile <= 0.50 THEN 'HIGH'
        WHEN percentile <= 0.75 THEN 'MEDIUM'
        WHEN percentile <= 100 THEN 'LOW'
    END AS COLONY_NAME
FROM (
        SELECT 
            ID,
            PERCENT_RANK() OVER( ORDER BY size_of_colony DESC ) AS percentile
        FROM ecoli_data
    ) AS ranked
ORDER BY ID;