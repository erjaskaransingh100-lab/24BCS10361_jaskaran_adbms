````markdown
# Experiment X

Name: Jaskaran Singh

UID: 24BCS10361

## Aim

To practice `INNER JOIN` and `LEFT JOIN` operations by joining the `student` and `course` tables using the `Course_id` column and observing the difference between matching and non-matching rows.

## Question

### Left Joins

We've learned that by default SQL removes the rows which doesn't match while joining tables.

However, if we wish to join two tables whose rows doesn't match, we can do that using **LEFT JOIN**.

When two tables are joined using `LEFT JOIN`, and if the rows don't match:

- All the rows in the first table (left) will be kept as such.
- Whenever a row doesn't have a corresponding row in the second table (right), those columns will be kept blank (`NULL`).

Below is the query to join the table `customer` and `order` using `LEFT JOIN`:

```sql
SELECT *
FROM customer
LEFT JOIN order
ON customer.cust_id = order.cust_id;
```

### Task

Write a query to do the following:

- JOIN the tables `student` and `course` using `Course_id` to match both the tables and output the joined table.
- LEFT JOIN the tables `student` and `course` using `Course_id` to match both the tables and output the joined table.

### Expected Output

#### INNER JOIN

| St_id | St_Name | Department | Course_id | Course_id | Course_Name | Credits | Prof_id |
|------:|---------|------------|-----------|-----------|-------------|--------:|--------:|
| 1001 | John Smith | Computer Science | CS101 | CS101 | Introduction to Computer Science | 3 | 2001 |
| 1002 | Emily Brown | History | HIS102 | HIS102 | World History II | 3 | 2004 |
| 1003 | David Lee | Mathematics | MAT202 | MAT202 | Linear Algebra | 2 | 2002 |
| 1004 | Sarah Johnson | English | ENG201 | ENG201 | Advanced Writing | 4 | 2003 |

#### LEFT JOIN

| St_id | St_Name | Department | Course_id | Course_id | Course_Name | Credits | Prof_id |
|------:|---------|------------|-----------|-----------|-------------|--------:|--------:|
| 1001 | John Smith | Computer Science | CS101 | CS101 | Introduction to Computer Science | 3 | 2001 |
| 1002 | Emily Brown | History | HIS102 | HIS102 | World History II | 3 | 2004 |
| 1003 | David Lee | Mathematics | MAT202 | MAT202 | Linear Algebra | 2 | 2002 |
| 1004 | Sarah Johnson | English | ENG201 | ENG201 | Advanced Writing | 4 | 2003 |
| 1005 | Michael Chen | Biology | BIO103 | NULL | NULL | NULL | NULL |

## SQL Queries Used

### 1. INNER JOIN Student and Course

```sql
select * from student as s1

inner join  course as c1

on s1.Course_id=c1.Course_id;
```

### 2. LEFT JOIN Student and Course

```sql
select * from student 

left join  course 

on student.Course_id=course.Course_id;
```

## Output

### 1. INNER JOIN Output

```text
+-------+---------------+------------------+----------+----------+----------------------------------+---------+---------+
| St_id | St_Name       | Department       | Course_id| Course_id| Course_Name                      | Credits | Prof_id |
+-------+---------------+------------------+----------+----------+----------------------------------+---------+---------+
| 1001  | John Smith    | Computer Science | CS101    | CS101    | Introduction to Computer Science | 3       | 2001    |
| 1002  | Emily Brown   | History          | HIS102   | HIS102   | World History II                 | 3       | 2004    |
| 1003  | David Lee     | Mathematics      | MAT202   | MAT202   | Linear Algebra                   | 2       | 2002    |
| 1004  | Sarah Johnson | English          | ENG201   | ENG201   | Advanced Writing                 | 4       | 2003    |
+-------+---------------+------------------+----------+----------+----------------------------------+---------+---------+
```

### 2. LEFT JOIN Output

```text
+-------+---------------+------------------+----------+----------+----------------------------------+---------+---------+
| St_id | St_Name       | Department       | Course_id| Course_id| Course_Name                      | Credits | Prof_id |
+-------+---------------+------------------+----------+----------+----------------------------------+---------+---------+
| 1001  | John Smith    | Computer Science | CS101    | CS101    | Introduction to Computer Science | 3       | 2001    |
| 1002  | Emily Brown   | History          | HIS102   | HIS102   | World History II                 | 3       | 2004    |
| 1003  | David Lee     | Mathematics      | MAT202   | MAT202   | Linear Algebra                   | 2       | 2002    |
| 1004  | Sarah Johnson | English          | ENG201   | ENG201   | Advanced Writing                 | 4       | 2003    |
| 1005  | Michael Chen  | Biology          | BIO103   | NULL     | NULL                             | NULL    | NULL    |
+-------+---------------+------------------+----------+----------+----------------------------------+---------+---------+
```

## Output Screenshot

![Experiment X Output](leftjoins.png)

## Image Explanation

The screenshot shows the SQL queries executed using both `INNER JOIN` and `LEFT JOIN` on the `student` and `course` tables.

The `INNER JOIN` returns only the students whose `Course_id` has a matching record in the `course` table.

The `LEFT JOIN` retains all records from the `student` table. For `Michael Chen`, whose `Course_id` is `BIO103` and has no matching record in the `course` table, the corresponding columns from the `course` table are displayed as `NULL`.

## Result

The `student` and `course` tables were successfully joined using both `INNER JOIN` and `LEFT JOIN`. The `INNER JOIN` returned only matching records, while the `LEFT JOIN` retained all students and displayed `NULL` values for the unmatched course record.
````

