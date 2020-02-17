DROP SCHEMA IF EXISTS ontario CASCADE;
CREATE SCHEMA ontario;

SET SEARCH_PATH to ontario;

CREATE TABLE city(
  name VARCHAR(100) primary key NOT NULL UNIQUE,
  -- Municipality's phone number
  phone VARCHAR(16) NOT NULL,
  -- Municipality's general email address
  email VARCHAR(50) NOT NULL,
  -- Mayor of that municipality
  mayor VARCHAR(50) NOT NULL,
  -- Manually extracted mayors' email addresses`
  mayor_email VARCHAR(50) NOT NULL
);

\COPY city FROM 'data_email.csv' DELIMITER ',' CSV header;