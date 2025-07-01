show databases;

use task_4_elevate_lab;

select * from orders;



SELECT
    EXTRACT(YEAR FROM OrderDate) AS sales_year,
    EXTRACT(MONTH FROM OrderDate) AS sales_month,
    SUM(TotalAmount) AS total_revenue,
    COUNT(DISTINCT O_ID) AS total_orders
FROM
    orders
WHERE
    EXTRACT(YEAR FROM OrderDate) BETWEEN 2024 AND 2026
GROUP BY
    sales_year,
    sales_month
ORDER BY
    sales_year ASC,
    sales_month ASC;