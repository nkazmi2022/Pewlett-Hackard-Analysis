
SELECT emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_titles 
FROM employee AS E
JOIN titles AS T
ON E.emp_no = T.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER by E.emp_no


SELECT DISTINCT ON(emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no 

SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC








SELECT * FROM retirement_titles




