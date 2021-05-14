--list employee number, last name, first name, sex, and salary
SELECT  emp.employ_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        sal.salary
FROM employees as emp
    LEFT JOIN salaries as sal
    ON (emp.employ_no = sal.employ_no)
ORDER BY emp.employ_no;

--list first name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--list managers in each department and include department number, department name, manager's employee number, last name, & first name
SELECT  dm.dept_no,
        d.dept_name,
        dm.employ_no,
        e.last_name,
        e.first_name
FROM dept_managers AS dm
     JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
     JOIN employees AS e
        ON (dm.employ_no = e.employ_no);
		
--list department of each employee and include employee number, last name, first name, & department name		
SELECT  e.employ_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_employ AS de
        ON (e.employ_no = de.employ_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
ORDER BY e.employ_no;		
		
--list employees with the first name Hercules, last name that begin with B, & include their sex
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--list the employees in the sales department & include their employee number, last name, first name, & department name
SELECT  e.employ_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_employ AS de
        ON (e.employ_no = de.employ_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name='Sales';	


--list the employees in the sales & development departments & include their employee number, last name, first name, & department name
SELECT  e.employ_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_employ AS de
        ON (e.employ_no = de.employ_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name in ('Sales', 'Development'); 

--in descending order list the frequency count of employee last names aka how many employees share each last name
SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count desc;

