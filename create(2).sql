
CREATE TABLE EMPLOYEES(
    employee_id NUMBER(6),
    first_name VARCHAR2(20),
    last_name VARCHAR2(25) NOT NULL,
    email VARCHAR2(25) NOT NULL,
    phone_number VARCHAR2(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR2(10) NOT NULL,
    salary NUMBER(8,2),
    commission_pct NUMBER(2,2),
    manager_id NUMBER(6),
    department_id NUMBER(4)
)

CREATE TABLE JOBS(
    job_id VARCHAR2(10),
    job_title VARCHAR2(35) NOT NULL,
    min_salary NUMBER(6),
    max_salary NUMBER(6)
)

CREATE TABLE JOB_GRADES(
    grade_level VARCHAR2(3),
    lowest_sal NUMBER,
    highest_sal NUMBER    
)

CREATE TABLE JOB_HISTORY(
    employee_id NUMBER(6) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR2(10) NOT NULL,
    department_id NUMBER(4)
)

CREATE TABLE LOCATIONS(
    LOCATION_id NUMBER(4),
    street_address VARCHAR2(40),
    postal_code VARCHAR2(12),
    city VARCHAR2(30) NOT NULL,
    state_province VARCHAR2(25),
    country_id char(2)
)
