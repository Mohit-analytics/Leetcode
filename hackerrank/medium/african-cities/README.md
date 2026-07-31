# New Companies

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Given the **CITY** and **COUNTRY** tables, query the names of all cities where the *CONTINENT* is *'Africa'*.	

**Note:** *CITY.CountryCode* and *COUNTRY.Code* are matching key columns.

**Input Format**

The **CITY** and **COUNTRY** tables are described as follows:
<img src="https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg" title="CITY.jpg" />

<img src="https://s3.amazonaws.com/hr-challenge-images/8342/1449769013-e54ce90480-Country.jpg" title="Country.jpg" />

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-07-31T06:23:29.467Z  

```sql
select 
c.company_code,
c.founder,
count(distinct(lm.lead_manager_code)),
count(distinct(sm.senior_manager_code)),
count(distinct(m.manager_code)),
count(distinct(e.employee_code))
from Company c
left join Lead_Manager lm
on c.company_code=lm.company_code
left join Senior_Manager sm
on c.company_code=sm.company_code
left join Manager m
on c.company_code=m.company_code
left join  Employee e
on c.company_code = e.company_code
group by  c.company_code, c.founder
order by c.company_code;

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/african-cities/problem)