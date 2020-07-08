package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Lecture {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int lectureID;

    private String nameOfLecture;
    private String teacher;
    private  int lenght;

    public Lecture(String nameOfLecture, String teacher, int lenght) {
        this.nameOfLecture = nameOfLecture;
        this.teacher = teacher;
        this.lenght = lenght;
    }

    public String getNameOfLecture() {
        return nameOfLecture;
    }

    public void setNameOfLecture(String nameOfLecture) {
        this.nameOfLecture = nameOfLecture;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public int getLenght() {
        return lenght;
    }

    public void setLenght(int lenght) {
        this.lenght = lenght;
    }

    @Override
    public String toString() {
        return "Lecture{" +
                "nameOfLecture='" + nameOfLecture + '\'' +
                ", teacher='" + teacher + '\'' +
                ", lenght=" + lenght +
                '}';
    }
}
