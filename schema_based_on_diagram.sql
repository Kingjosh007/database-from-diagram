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

-- Table: medical_histories
DROP TABLE IF EXISTS medical_histories;
CREATE TABLE IF NOT EXISTS medical_histories
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    admitted_at TIMESTAMP,
    patient_id INT,
    status VARCHAR(100)
    CONSTRAINT fk_patients FOREIGN KEY(patient_id) REFERENCES patient(id) 
            ON DELETE CASCADE
            ON UPDATE CASCADE
)

-- Table: invoices
DROP TABLE IF EXISTS invoices;
CREATE TABLE IF NOT EXISTS invoices
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT,
    CONSTRAINT fk_medical_histories FOREIGN KEY(medical_history_id) REFERENCES medical_histories(id) 
            ON DELETE CASCADE
            ON UPDATE CASCADE
)

-- Table: invoice_items
DROP TABLE IF EXISTS invoice_items;
CREATE TABLE IF NOT EXISTS invoice_items
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
    invoice_id INT,
    treatment_id INT,
    CONSTRAINT fk_invoces FOREIGN KEY(invoice_id) REFERENCES invoices(id) 
            ON DELETE CASCADE
            ON UPDATE CASCADE,
    CONSTRAINT fk_treatments FOREIGN KEY(treatment_id) REFERENCES treatments(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
)




