-- 1.	Write a PL/SQL block to display "Hello, PL/SQL!" on the screen.
set serveroutput on;
begin
  dbms_output.put_line('Hello World, PL/SQL');
  end; 

--2.	Write a PL/SQL block to display the first 10 natural numbers using a WHILE loop.
DECLARE 
i NUMBER := 1;
BEGIN 
WHILE i <= 10 loop
  dbms_output.put_line('Naturals Numbers: '|| i);
end loop;
end;
/

--3.	Create a PL/SQL program to calculate the factorial of a given number using a FOR loop.
DECLARE 
i number := 1;
fact number := 1;
num number := 5;
begin
FOR i IN 1..num LOOP -- for(int i; i <=num; i ++ ); 1..num = 1 to 5
    fact := fact * i; -- fact logic 1*2*3*4*5 = 120;
  END LOOP; 
  dbms_output.put_line('factorial is ' || fact);

end;

-- 4.	Write a PL/SQL block that accepts a student's marks and prints whether they have passed or failed.
DECLARE 
marks number;
begin
  marks := 45
  if marks > 40  then
    dbms_output.put_line('You have passed.');
  else
    dbms_output.put_line('Sorry try next time.')
  end if;
end;
/

--5.	Develop a PL/SQL program that declares two numbers and swaps them without using a third variable:
DECLARE
num1 number := 10;
num2 number := 20;
begin
  dbms_output.put_line('Befor swapping num1: ' || num1 || ' and ' ' num2: ' || num2);
 num1 = num1 + num2;
 num2 = num1 - num2;
 num1 = num1 - num2;
  dbms_output.put_line('Befor swapping num1: ' || num1 || ' and ' ' num2: ' || num2);
end;

-- 6.	Write a PL/SQL block to check whether a given number is even or odd using IF-ELSE.
DECLARE 
NUM1 NUMBER := 12;
begin  
IF MOD(NUM1, 2) = 0 THEN -- mod is % 
    DBMS_OUTPUT.PUT_LINE('Number is even');
ELSE
    DBMS_OUTPUT.PUT_LINE('Number is odd');
END IF;
end;
/

-- 7.	Develop a PL/SQL program that accepts a student's score and assigns a grade 
-- (A for >80, B for 60-80, C for 40-59, Fail for <40.
DECLARE 
score number;
grader varchar2(10);
begin
  score := 75;
  if score >= 80 then
    grade := 'A';
    elsif score between 60 and 80 then
      grade := 'B';
    elsif score between 40 to 59 then 
    grade := 'C';
    else 
    grade := 'F';
  end if;
  dbms_output.put_line('Student Score: ' || score);
  dbms_output.put_line('Student Grade: ' || grade);
end;
/

-- 8.	 Create a PL/SQL program that accepts a number and checks whether it is prime or not.
DECLARE
    num NUMBER := 29; 
    p BOOLEAN := TRUE;
BEGIN
    IF num <= 1 THEN
        p := FALSE; -- Numbers less than or equal to 1 are not prime
    ELSE
        FOR i IN 2..TRUNC(SQRT(num)) LOOP -- trunk removes the decimal point.
            IF MOD(num, i) = 0 THEN
                p := FALSE; -- If divisible by any number, it's not prime
                EXIT; -- Exit the loop if not prime
            END IF;
        END LOOP;
    END IF;

    IF p THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a prime number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not a prime number.');
    END IF;
END;

--  9.	Create a PL/SQL procedure named findMin that takes two numbers as input and determines 
--the minimum of the two, storing the result in an output variable. Call the procedure with example
-- values 23 and 45, and display the result.
CREATE OR REPLACE PROCEDURE findmin(
  num1 in number,
  num2 in number,
  minvalue out number --out number means 

) as                
begin
  if num1 < num2 then
    minvalue := num1;
  else
    minvalue := num2;
  end if;
  end findmin;
  /
  DECLARE
  minresult number;
  begin
  findmin(23,45, minresult);
  dbms_output.put_line('Minimum number is : ' || minresult);
end;

--10.	Create a PL/SQL function named maxim that takes two numbers as input and returns the 
--maximum of the two. Call the function with example values 6 and 20, and display the result.
CREATE OR REPLACE FUNCTION maxim (
    num1 IN NUMBER,
    num2 IN NUMBER
) RETURN NUMBER AS
    max_value NUMBER;
BEGIN
    IF num1 > num2 THEN
        max_value := num1;
    ELSE
        max_value := num2;
    END IF;
    RETURN max_value;
END;
/

DECLARE
    max_result NUMBER;
BEGIN
    max_result := maxim(6, 20);
    DBMS_OUTPUT.PUT_LINE('Maximum number is: ' || max_result);
END;
/

--11.	Create a PL/SQL trigger named after_student_delete that executes after a row is 
--deleted from the students table. The trigger should insert the deleted student's 
--id, name, and age into the deleted_students table.
--
-- Create students table
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT
);

-- Create deleted_students table
CREATE TABLE deleted_students (
  student_id INT,  -- Fixed column name to match the trigger
  student_name VARCHAR(50),
  student_age INT,
  deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create trigger to log deleted students
CREATE OR REPLACE TRIGGER after_students_delete
AFTER DELETE ON students
FOR EACH ROW 
BEGIN
   INSERT INTO deleted_students (student_id, student_name, student_age, deleted_at)
   VALUES (:OLD.id, :OLD.name, :OLD.age, SYSTIMESTAMP);
END;
/
-- Ensure `/` is included to compile the trigger in Oracle SQL environments

-- Insert sample data (fixed syntax errors)
INSERT INTO students (id, name, age) VALUES (1, 'Alice', 20);
INSERT INTO students (id, name, age) VALUES (2, 'Bob', 22);

-- Delete a record (fixed incorrect keyword "form" -> "from")
DELETE FROM students WHERE id = 1;

-- Check if deletion was logged correctly
SELECT * FROM deleted_students;

--12.	Create a PL/SQL cursor named emp_cursor that retrieves the first_name of employees from the
-- employees table where the department_id is 10. Open the cursor, fetch and display each employee’s 
-- name using a loop, and close the cursor after processing all rows.
DECLARE
    CURSOR mycur IS SELECT name FROM students;
    v_sname students.name%TYPE;
BEGIN
    OPEN mycur;
    LOOP
        FETCH mycur INTO v_sname;
        EXIT WHEN mycur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_sname);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total Students: ' || mycur%ROWCOUNT);
    CLOSE mycur;
END;
/


--13.	Create a PL/SQL cursor named mycur that retrieves the sname of students from the students table.
 --Open the cursor, fetch and display each student's name using a loop, and display the total number of 
 -- students using %rowcount before closing the cursor. 
DECLARE
    CURSOR mycur IS SELECT name FROM students;
    v_sname students.name%TYPE;
    v_count NUMBER := 0;
BEGIN
    OPEN mycur;
    LOOP
        FETCH mycur INTO v_sname;
        EXIT WHEN mycur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_sname);
        v_count := mycur%ROWCOUNT;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total Students: ' || v_count);
    CLOSE mycur;
END;
/

-- 14.	Create a PL/SQL procedure named squareNum that takes a number as an IN OUT parameter and 
-- calculates its square. Call the procedure with the value 23 and display the result.
CREATE OR REPLACE PROCEDURE squareNum (num IN OUT NUMBER) AS
BEGIN
    num := num * num;
END;
/

DECLARE
    v_num NUMBER := 23;
BEGIN
    squareNum(v_num);
    DBMS_OUTPUT.PUT_LINE('Square of 23: ' || v_num);
END;
/
