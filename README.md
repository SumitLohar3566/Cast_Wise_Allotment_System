### Cast-Wise Allotment System (SQL Project)

A complete SQL-based data analysis project designed to study student admissions, caste-category-wise seat allotment, college distribution, and special reservation insights.
This project demonstrates real-world SQL usage — Joins, Grouping, Aggregation, Subqueries, Filtering, and Analytical Reporting.

- Project Preview:
- <img width="1536" height="1024" alt="a" src="https://github.com/user-attachments/assets/17187b61-fd8d-421e-b1d0-73b40cb2aaac" />

- Project Highlights:

- Fully Structured Database

- Real-world SQL Analytical Queries

- Caste Category–wise Insights

- College Allotment Analysis

- Performance & Reservation Category Insights

- Useful for dashboards & BI tools

### Database Structure
1. Students Table
Column	Description
StudentID	Unique student identifier
Name	Student full name
CasteCategory	General / OBC / SC / ST
Marks	Admission marks
2. Colleges Table
Column	Description
CollegeID	Unique college ID
CollegeName	Name of college
Location	City/Area
3. Admissions Table
Column	Description
AdmissionID	Unique admission entry
StudentID	Foreign key → Students
CollegeID	Foreign key → Colleges
Status	Yes / No

- SQL Objectives Covered

Total admissions

Category-wise student distribution

College-wise selection counts

Status-based filtering

Students with marks thresholds

Seats allotted category-wise

Ranking and sorting

Inner join, multi-table join, group-by aggregates

- SQL Queries (20+ Important Queries)
 Q1: Total students admitted
SELECT COUNT(*) AS Total_Admitted
FROM Admissions
WHERE Status = 'Yes';

 Q2: Students with college & their admission status
SELECT s.Name, s.CasteCategory, s.Marks,
       c.CollegeName, a.Status
FROM Students s
JOIN Admissions a ON s.StudentID = a.StudentID
JOIN Colleges c ON a.CollegeID = c.CollegeID;

 Q3: Students admitted with marks < 75

Useful for special reservation category.

SELECT Name, CasteCategory, Marks
FROM Students
WHERE Marks < 75;

 Q4: Category-wise total students
SELECT CasteCategory, COUNT(*) AS Total_Students
FROM Students
GROUP BY CasteCategory;

 Q5: Category-wise admitted students
SELECT s.CasteCategory, COUNT(*) AS Total_Admitted
FROM Students s
JOIN Admissions a ON s.StudentID = a.StudentID
WHERE a.Status = 'Yes'
GROUP BY s.CasteCategory;

 Q6: College-wise admissions
SELECT c.CollegeName, COUNT(*) AS Admitted_Count
FROM Colleges c
JOIN Admissions a ON c.CollegeID = a.CollegeID
WHERE a.Status = 'Yes'
GROUP BY c.CollegeName;

 Q7: Highest marks student per category
SELECT CasteCategory, Name, Marks
FROM (
    SELECT *, 
        ROW_NUMBER() OVER(PARTITION BY CasteCategory ORDER BY Marks DESC) AS rn
    FROM Students
) t
WHERE rn = 1;

 Q8: Students NOT admitted
SELECT s.Name, s.CasteCategory
FROM Students s
LEFT JOIN Admissions a ON s.StudentID = a.StudentID
WHERE a.Status = 'No' OR a.Status IS NULL;

 Q9: Average marks per category
SELECT CasteCategory, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY CasteCategory;

 Q10: Colleges with zero admissions
SELECT CollegeName
FROM Colleges
WHERE CollegeID NOT IN (SELECT CollegeID FROM Admissions WHERE Status = 'Yes');

- Final Notes:

# This SQL project is perfect for:

- College admission analytics

- Government reservation & caste-wise allotment study

- BI dashboard creation

- Interview portfolio

- Contact Developer: Sumit Lohar
- Email:sumitlohar063@gmail.com
- GitHub: https://github.com/SumitLohar3566
- LinkedIn:(https://www.linkedin.com/in/sumit-lohar-498341317/)


