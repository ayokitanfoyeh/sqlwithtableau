 select 
     ee.gender,
	 d.dept_name,
     round(avg(s.salary), 2) as salary,
     year(s.from_date) AS calendar_year 
     from t_employees ee 
     join 
     t_salaries s on ee.emp_no = s.emp_no
     join
     t_dept_emp de on s.emp_no = de.emp_no
     join 
     t_departments d on de.dept_no = d.dept_no
     group by calendar_year, d.dept_no, ee.gender
     having calendar_year <= 2002
     order by d.dept_no, ee.gender, calendar_year;
     select * from t_salaries;