-- Table: patients
DROP TABLE IF EXISTS patients;
CREATE TABLE IF NOT EXISTS patients
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(150),
    date_of_birth DATE
)

-- Table: treatments
DROP TABLE IF EXISTS treatments;
CREATE TABLE IF NOT EXISTS treatments
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    type VARCHAR(100),
    name VARCHAR(100)
)



