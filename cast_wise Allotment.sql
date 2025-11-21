CREATE DATABASE 17A;
USE 17A;
-- 1. Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    CasteCategory VARCHAR(50),
    Marks INT
);
-- 2. Colleges Table
CREATE TABLE Colleges (
    CollegeID INT PRIMARY KEY,
    CollegeName VARCHAR(150),
    Course VARCHAR(50),
    CutoffMarks INT
);
-- 3. Admissions Table
CREATE TABLE Admissions (
    AdmissionID INT PRIMARY KEY,
    StudentID INT,
    CollegeID INT,
    Status VARCHAR(10),  -- Yes/No
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CollegeID) REFERENCES Colleges(CollegeID)
);
-- Insert Data:
INSERT INTO Students (StudentID, Name, CasteCategory, Marks) VALUES
(101, 'Sumit', 'Maratha', 85),
(102, 'Aayush', 'OBC', 76),
(103, 'Piyush', 'General', 92),
(104, 'Nirvahita', 'SC', 67),
(105, 'Aayushi', 'ST', 73),
(106, 'Shardha', 'Maratha', 81),
(107, 'Sayali', 'OBC', 69),
(108, 'Sakshi', 'General', 88),
(109, 'Pallavi', 'SC', 74),
(110, 'Ram', 'ST', 79),
(111, 'Raj', 'Maratha', 91),
(112, 'Amit', 'OBC', 63),
(113, 'Sham', 'General', 86),
(114, 'Sunny', 'SC', 71),
(115, 'Rohan', 'ST', 77),
(116, 'Saif', 'Maratha', 83),
(117, 'Kiran', 'OBC', 72),
(118, 'Meera', 'General', 95),
(119, 'Pranav', 'SC', 64),
(120, 'Neha', 'ST', 82),
(121, 'Omkar', 'Maratha', 89),
(122, 'Siddharth', 'OBC', 75),
(123, 'Anjali', 'General', 90),
(124, 'Deepak', 'SC', 62),
(125, 'Komal', 'ST', 84),
(126, 'Madhuri', 'Maratha', 87),
(127, 'Chetan', 'OBC', 70),
(128, 'Priya', 'General', 93),
(129, 'Vikas', 'SC', 66),
(130, 'Rutuja', 'ST', 80),
(131, 'Nilesh', 'Maratha', 78),
(132, 'Varun', 'OBC', 65),
(133, 'Tanvi', 'General', 96),
(134, 'Aditya', 'SC', 73),
(135, 'Pooja', 'ST', 81),
(136, 'Kunal', 'Maratha', 88),
(137, 'Rekha', 'OBC', 74),
(138, 'Gaurav', 'General', 85),
(139, 'Sneha', 'SC', 69),
(140, 'Yash', 'ST', 83),
(141, 'Harsh', 'Maratha', 90),
(142, 'Krishna', 'OBC', 68),
(143, 'Devika', 'General', 94),
(144, 'Akshay', 'SC', 72),
(145, 'Vidya', 'ST', 86),
(146, 'Tejas', 'Maratha', 79),
(147, 'Payal', 'OBC', 71),
(148, 'Mayur', 'General', 97),
(149, 'Amruta', 'SC', 64),
(150, 'Soham', 'ST', 82);


INSERT INTO Colleges (CollegeID, CollegeName, Course, CutoffMarks) VALUES
(201, 'COEP', 'B.Tech', 85),
(202, 'Sinhgad Institute of Technology', 'B.E', 75),
(203, 'JSPM', 'B.Com', 80),
(204, 'MIT WPU', 'B.Sc', 78),
(205, 'DY Patil College of Engineering', 'MBA', 82),
(206, 'Fergusson College', 'B.A', 70),
(207, 'Pune University', 'BCA', 77),
(208, 'VIT Pune', 'B.Tech', 88),
(209, 'Symbiosis College', 'BBA', 83),
(210, 'Modern College', 'B.Com', 74),
(211, 'Bharati Vidyapeeth', 'B.Sc', 79),
(212, 'Indira College of Engineering', 'MBA', 81),
(213, 'AISSMS College of Engineering', 'B.Tech', 86),
(214, 'MES Garware College', 'B.A', 72),
(215, 'MIT School of Business', 'MBA', 84),
(216, 'Sinhgad College of Commerce', 'B.Com', 73),
(217, 'SP College', 'B.Sc', 76),
(218, 'Dr. D.Y. Patil Arts & Commerce', 'B.A', 71),
(219, 'COEP Technological University', 'M.Tech', 89),
(220, 'JSPM Narhe', 'BCA', 75),
(221, 'MIT College of Engineering', 'B.Tech', 87),
(222, 'Fergusson College', 'M.Sc', 85),
(223, 'VIT Pune', 'MBA', 82),
(224, 'Symbiosis Institute of Technology', 'B.Tech', 90),
(225, 'Indira Institute of Management', 'MBA', 80),
(226, 'Modern College of Arts', 'B.A', 73),
(227, 'Pune University', 'M.Com', 88),
(228, 'Bharati Vidyapeeth', 'M.Sc', 83),
(229, 'Sinhgad Pharmacy College', 'B.Pharm', 78),
(230, 'DY Patil Medical College', 'MBBS', 92),
(231, 'MIT WPU', 'B.Tech', 84),
(232, 'COEP', 'M.Sc', 86),
(233, 'Symbiosis College of Arts', 'B.A', 75),
(234, 'JSPM Wagholi', 'B.Tech', 81),
(235, 'VIT Pune', 'MCA', 85),
(236, 'Indira College of Commerce', 'B.Com', 74),
(237, 'Fergusson College', 'BBA', 80),
(238, 'MIT School of Engineering', 'B.E', 83),
(239, 'Sinhgad Institute of Management', 'MBA', 82),
(240, 'SP College', 'B.Com', 77),
(241, 'DY Patil College of Architecture', 'B.Arch', 79),
(242, 'Symbiosis Medical College', 'MBBS', 91),
(243, 'JSPM Hadapsar', 'B.Tech', 84),
(244, 'Modern College of Commerce', 'M.Com', 78),
(245, 'Pune University', 'M.Sc', 87),
(246, 'AISSMS Institute of Management', 'MBA', 83),
(247, 'MIT WPU', 'M.Tech', 88),
(248, 'Sinhgad Law College', 'LLB', 76),
(249, 'Fergusson College', 'PhD', 92),
(250, 'COEP', 'PhD', 95);

INSERT INTO Admissions (AdmissionID, StudentID, CollegeID, Status) VALUES
(301, 101, 201, 'Yes'),
(302, 102, 202, 'Yes'),
(303, 103, 203, 'Yes'),
(304, 104, 204, 'No'),
(305, 105, 205, 'No'),
(306, 106, 206, 'Yes'),
(307, 107, 207, 'No'),
(308, 108, 208, 'Yes'),
(309, 109, 209, 'Yes'),
(310, 110, 210, 'Yes'),
(311, 111, 211, 'Yes'),
(312, 112, 212, 'No'),
(313, 113, 213, 'Yes'),
(314, 114, 214, 'No'),
(315, 115, 215, 'Yes'),
(316, 116, 216, 'Yes'),
(317, 117, 217, 'Yes'),
(318, 118, 218, 'Yes'),
(319, 119, 219, 'Yes'),
(320, 120, 220, 'No'),
(321, 121, 221, 'Yes'),
(322, 122, 222, 'Yes'),
(323, 123, 223, 'Yes'),
(324, 124, 224, 'No'),
(325, 125, 225, 'Yes'),
(326, 126, 226, 'No'),
(327, 127, 227, 'Yes'),
(328, 128, 228, 'Yes'),
(329, 129, 229, 'No'),
(330, 130, 230, 'Yes'),
(331, 131, 231, 'Yes'),
(332, 132, 232, 'Yes'),
(333, 133, 233, 'Yes'),
(334, 134, 234, 'No'),
(335, 135, 235, 'Yes'),
(336, 136, 236, 'Yes'),
(337, 137, 237, 'Yes'),
(338, 138, 238, 'Yes'),
(339, 139, 239, 'No'),
(340, 140, 240, 'Yes'),
(341, 141, 241, 'Yes'),
(342, 142, 242, 'No'),
(343, 143, 243, 'Yes'),
(344, 144, 244, 'No'),
(345, 145, 245, 'Yes'),
(346, 146, 246, 'Yes'),
(347, 147, 247, 'Yes'),
(348, 148, 248, 'No'),
(349, 149, 249, 'Yes'),
(350, 150, 250, 'Yes');

SELECT*FROM Students;
SELECT*FROM Colleges;
SELECT*FROM Admissions;

-- Q1. Find the total number of students admitted (Status = 'Yes').
SELECT COUNT(*) AS Total_Admitted
FROM Admissions
WHERE Status = 'Yes';

-- Q2. Display the list of students along with their college name and admission
SELECT s.Name, s.CasteCategory, s.Marks, c.CollegeName, a.Status
FROM Students s
JOIN Admissions a ON s.StudentID = a.StudentID
JOIN Colleges c ON a.CollegeID = c.CollegeID;

-- Q3. Find students who got admission even though their marks are less than 75 (special category check).
SELECT s.Name, s.CasteCategory, s.Marks, c.CollegeName, a.Status
FROM Students s
JOIN Admissions a ON s.StudentID = a.StudentID
JOIN Colleges c ON a.CollegeID = c.CollegeID
WHERE s.Marks < 75 AND a.Status = 'Yes';

--  Q4. Find the college which admitted the maximum number of students.
SELECT c.CollegeName, COUNT(*) AS Total_Admissions
FROM Colleges c
JOIN Admissions a ON c.CollegeID = a.CollegeID
WHERE a.Status = 'Yes'
GROUP BY c.CollegeName
ORDER BY Total_Admissions DESC
LIMIT 1;

-- Q5. List each college with total students admitted, and also show the average marks of those students.
SELECT c.CollegeName, 
       COUNT(a.StudentID) AS Total_Admitted, 
       ROUND(AVG(s.Marks),2) AS AvgMarks
FROM Colleges c
JOIN Admissions a ON c.CollegeID = a.CollegeID
JOIN Students s ON s.StudentID = a.StudentID
WHERE a.Status = 'Yes'
GROUP BY c.CollegeName
ORDER BY AvgMarks DESC;

 -- Q6. Display students with their name, caste, marks, college, and also show whether they scored “Above Average” or “Below Average”.
 SELECT s.Name, s.CasteCategory, s.Marks, c.CollegeName,
       CASE 
          WHEN s.Marks >= (SELECT AVG(Marks) FROM Students) THEN 'Above Average'
          ELSE 'Below Average'
       END AS Performance
FROM Students s
JOIN Admissions a ON s.StudentID = a.StudentID
JOIN Colleges c ON a.CollegeID = c.CollegeID;

-- Q7. Find the top 3 students from each caste category based on marks.
SELECT s.Name, s.CasteCategory, s.Marks
FROM Students s
WHERE (
    SELECT COUNT(*) FROM Students s2 
    WHERE s2.CasteCategory = s.CasteCategory 
      AND s2.Marks > s.Marks
) < 3
ORDER BY s.CasteCategory, s.Marks DESC;

-- Q8 Display all students with their name, caste, marks, admission status, and college name. If a student is not admitted anywhere, display “Not Admitted”.
SELECT s.StudentID, s.Name, s.CasteCategory, s.Marks,
       COALESCE(c.CollegeName, 'No College Assigned') AS CollegeName,
       CASE 
           WHEN a.Status = 'Yes' THEN 'Admitted'
           WHEN a.Status = 'No'  THEN 'Rejected'
           ELSE 'Not Applied'
       END AS AdmissionStatus
FROM Students s
LEFT JOIN Admissions a ON s.StudentID = a.StudentID
LEFT JOIN Colleges c ON a.CollegeID = c.CollegeID
ORDER BY s.Marks DESC, s.Name;

-- Q9 Show a combined list of student names and college names, with type label, and sort alphabetically.
SELECT Name AS EntityName, 'Student' AS EntityType, Marks AS Score FROM Students
WHERE Marks > (SELECT AVG(Marks) FROM Students)
UNION
SELECT CollegeName, 'College', CutoffMarks FROM Colleges
WHERE CutoffMarks > (SELECT MIN(CutoffMarks) FROM Colleges)
ORDER BY EntityName;

-- Q10 List every student with their caste, marks, the college they applied to (if any) and that college’s cutoff, the admission status (Yes/No or Not Applied), and a final Eligibility_Status which should be Eligible when student marks ≥ college cutoff, Not Eligible when marks < cutoff, and Not Applied where no college is linked. Sort by college name (colleges first) and then by student marks descending.
SELECT 
  s.StudentID,
  s.Name          AS StudentName,
  s.CasteCategory AS Caste,
  s.Marks         AS Marks,
  c.CollegeName,
  c.CutoffMarks,
  COALESCE(a.Status, 'Not Applied') AS AdmissionStatus,
  CASE
    WHEN c.CutoffMarks IS NULL THEN 'Not Applied'
    WHEN s.Marks >= c.CutoffMarks THEN 'Eligible'
    ELSE 'Not Eligible'
  END AS Eligibility_Status
FROM Students s
LEFT JOIN Admissions a ON s.StudentID = a.StudentID
LEFT JOIN Colleges c   ON a.CollegeID = c.CollegeID
ORDER BY (c.CollegeName IS NULL), c.CollegeName, s.Marks DESC;



SELECT name FROM students
WHERE CasteCategory="ST";


SELECT*FROM Students;
SELECT*FROM Colleges;

