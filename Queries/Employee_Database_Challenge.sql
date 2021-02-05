COMMIT

SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name,
e.last_name,
e.birth_date,
d.from_date,
d.to_date,
ti.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS d
ON (e.emp_no = d.emp_no)
INNER JOIN titles AS ti
ON (d.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;