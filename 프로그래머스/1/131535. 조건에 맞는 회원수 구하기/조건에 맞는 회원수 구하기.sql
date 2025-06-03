SELECT count(*) AS USERS
FROM user_info
WHERE 
    DATE_FORMAT(joined, '%Y') = '2021'
    AND age BETWEEN 20 AND 29;
    
    