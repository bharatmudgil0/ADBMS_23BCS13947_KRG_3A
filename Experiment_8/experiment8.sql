--------------------------Hard--------------------------------
-- Create the students table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    class INT
);

DO $$
BEGIN
    -- Insert Anisha
    BEGIN
        INSERT INTO students(name, age, class) VALUES ('Anisha', 16, 8);
        RAISE NOTICE 'Inserted Anisha successfully';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Failed to insert Anisha';
    END;

    -- Insert Neha
    BEGIN
        INSERT INTO students(name, age, class) VALUES ('Neha', 17, 8);
        RAISE NOTICE 'Inserted Neha successfully';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Failed to insert Neha';
    END;

    -- Insert Mayank
    BEGIN
        INSERT INTO students(name, age, class) VALUES ('Mayank', 19, 9);
        RAISE NOTICE 'Inserted Mayank successfully';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Failed to insert Mayank';
    END;

    -- Insert Rahul (wrong data type)
    BEGIN
        INSERT INTO students(name, age, class) VALUES ('Rahul', 'wrong', 9); -- this will fail
        RAISE NOTICE 'Inserted Rahul successfully';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Failed to insert Rahul (invalid data type)';
    END;

    -- Insert Sita
    BEGIN
        INSERT INTO students(name, age, class) VALUES ('Sita', 17, 10);
        RAISE NOTICE 'Inserted Sita successfully';
    EXCEPTION WHEN OTHERS THEN
        RAISE NOTICE 'Failed to insert Sita';
    END;

END
$$;

-- Verify final table contents
SELECT * FROM students;
