CREATE TABLE Student (
student_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(50) NOT NULL
);
CREATE TABLE Lecture (
lecture_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(50) NOT NULL,
teacher varchar(50) NOT NULL,
len int NOT NULL
);
CREATE TABLE Comment (
comment_id int AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(500) NOT NULL,
student_id int,
lecture_id int,
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (lecture_id) REFERENCES Lecture(lecture_id),
);



