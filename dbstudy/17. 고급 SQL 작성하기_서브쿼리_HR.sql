-- 1. 모든 사원의 LAST_NAME, SALARY, 본인이 근무하는 부서의 평균연봉(SALARY)을 조회하시오.
SELECT
    LAST_NAME,
    SALARY,
    -- 내 부서의 평균연봉
    -- 나 : EMPLOYEES ME
    -- 남 : EMPLOYEES YOU
    (SELECT AVG(ME.SALARY) AS 평균연봉
     FROM EMPLOYEES ME
     WHERE ME.DEPARTMENT_ID = YOU.DEPARTMENT_ID)
FROM
    EMPLOYEES YOU;
    
    
-- 2. 부서(DEPARTMENT_ID)별로 DEPARTMENT_ID, DEPARTMENT_NAME, 평균연봉을 조회하시오.
SELECT
    D.DEPARTMENT_ID,
    D.DEPARTMENT_NAME,
    (SELECT AVG(E.SALARY)
     FROM EMPLOYEES E
     WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID)
FROM
    DEPARTMENTS D;


-- 3. 모든 사원들의 EMPLOYEE_ID, LAST_NAME, DEPARTMENT_NAME 을 조회하시오.
SELECT
    E.EMPLOYEE_ID,
    E.LAST_NAME,
    (SELECT D.DEPARTMENT_NAME
     FROM DEPARTMENTS D
     WHERE D.DEPARTMENT_ID = E.DEPARTMENT_ID)
FROM
    EMPLOYEES E;









