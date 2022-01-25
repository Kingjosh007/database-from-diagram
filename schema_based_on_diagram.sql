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

--Table: Medical Histories
DROP TABLE IF EXISTS medical_histories;
CREATE TABLE IF NOT EXISTS invoices
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    admitted_at TIMESTAMP,
    patient_id INT,
    status VARCHAR(100)
)

--Table: Invoices
DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT
)

--Table: Invoice_items
DROP TABLE IF EXISTS invoice_items;
CREATE TABLE IF NOT EXISTS invoice_items
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
    invoice_id INT,
    treatment_id INT
)



