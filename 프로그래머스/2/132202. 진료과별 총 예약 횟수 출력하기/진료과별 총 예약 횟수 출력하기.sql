SELECT MCDP_CD as '진료과코드',
        count(pt_no) as '5월예약건수'
FROM appointment
WHERE date_format(apnt_ymd, "%Y-%m") = '2022-05'
GROUP BY mcdp_cd
ORDER BY 5월예약건수 asc, 진료과코드 asc