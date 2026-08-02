USE hr_analytics_db;

DROP VIEW IF EXISTS v_hr_analytics_data;

CREATE VIEW v_hr_analytics_data AS
SELECT 
    *,
    CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END AS AttritionFlag
FROM hr_raw_data;

SELECT * FROM v_hr_analytics_data LIMIT 5;

