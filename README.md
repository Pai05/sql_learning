# SQL Learning Project

This repository contains SQL queries that analyze a real-world Data Analyst job postings dataset. The project explores job salaries, in-demand skills, high-paying skills, and the relationship between salary and market demand.

---

## Project Structure

```
sql_learning/
│
├── project_sql/
│   ├── top_paying_jobs.sql
│   ├── top_paying_job_skills.sql
│   ├── top_demanding_skills.sql
│   ├── top_paying_skills.sql
│   └── most_optimal_skill.sql
│
├── sql_load/
└── README.md
```

---

# Queries

## 1. Top Paying Data Analyst Jobs

**Objective**

Identify the highest-paying remote Data Analyst jobs.

### SQL File

[View Query](https://github.com/Pai05/sql_learning/blob/main/project_sql/top_paying_jobs.sql)

### Insights

- Filters only remote Data Analyst positions.
- Removes jobs without salary information.
- Returns the Top 10 highest-paying jobs.
- Includes company information.

### Visualization

Replace with your chart after uploading.

```
project_sql/images/top_paying_jobs.png
```

```markdown
![Top Paying Jobs](project_sql/images/top_paying_jobs.png)
```

---

## 2. Skills Required for Top Paying Jobs

**Objective**

Find the skills required for the highest-paying Data Analyst jobs.

### SQL File

[View Query](https://github.com/Pai05/sql_learning/blob/main/project_sql/top_paying_job_skills.sql)

### Insights

- Joins top-paying jobs with required skills.
- Shows which technologies employers expect.
- Helps identify skills worth learning.

### Visualization

```markdown
![Top Paying Job Skills](project_sql/images/top_paying_job_skills.png)
```

---

## 3. Top Demanding Skills

**Objective**

Find the most frequently requested skills for remote Data Analyst jobs.

### SQL File

[View Query](https://github.com/Pai05/sql_learning/blob/main/project_sql/top_demanding_skills.sql)

### Insights

- Counts how often every skill appears.
- Returns the Top 10 most requested skills.
- Useful for understanding current market demand.

### Visualization

```markdown
![Top Demanding Skills](project_sql/images/top_demanding_skills.png)
```

---

## 4. Top Paying Skills

**Objective**

Identify the highest-paying technical skills.

### SQL File

[View Query](https://github.com/Pai05/sql_learning/blob/main/project_sql/top_paying_skills.sql)

### Insights

- Calculates average salary for each skill.
- Excludes records without salary.
- Returns the Top 10 highest-paying skills.

### Visualization

```markdown
![Top Paying Skills](project_sql/images/top_paying_skills.png)
```

---

## 5. Most Optimal Skills

**Objective**

Identify skills that have both:

- High salary
- High demand

### SQL File

[View Query](https://github.com/Pai05/sql_learning/blob/main/project_sql/most_optimal_skill.sql)

### Insights

- Combines skill demand with average salary.
- Computes a salary-to-demand ratio.
- Highlights skills that provide the best career value.

### Visualization

```markdown
![Most Optimal Skills](project_sql/images/most_optimal_skill.png)
```

---

# SQL Concepts Used

- Common Table Expressions (CTEs)
- INNER JOIN
- LEFT JOIN
- Aggregate Functions
- GROUP BY
- ORDER BY
- LIMIT
- AVG()
- COUNT()
- ROUND()
- UNION ALL
- Filtering with WHERE
- Multiple Table Joins

---

# Dataset

The project analyzes a Data Analyst job postings dataset containing:

- Job Posting Facts
- Company
- Skills
- Skills-Job

---

# Key Learnings

Through this project I learned:

- Writing complex SQL queries
- Using multiple JOIN operations
- Building Common Table Expressions (CTEs)
- Performing salary analysis
- Finding market-demanded skills
- Combining multiple datasets for business insights
- Optimizing analytical SQL queries

---

# Author

**Sudarshan Pai**

GitHub: https://github.com/Pai05