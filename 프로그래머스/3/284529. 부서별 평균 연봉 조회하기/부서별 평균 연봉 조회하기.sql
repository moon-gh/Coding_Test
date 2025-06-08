SELECT 
    a.DEPT_ID AS DEPT_ID, 
    a.DEPT_NAME_EN AS DEPT_NAME_EN, 
    ROUND(AVG(b.SAL), 0) AS AVG_SAL
FROM hr_department a
    JOIN hr_employees b ON a.dept_id = b.dept_id
GROUP BY a.DEPT_ID, a.DEPT_NAME_EN
ORDER BY AVG(b.SAL) DESC;