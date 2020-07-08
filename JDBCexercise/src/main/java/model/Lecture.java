package model;

public class Lecture {
    private int lenght;
    private String name;
    private String teacher;

    public int getLenght() {
        return lenght;
    }

    public void setLenght(int lenght) {
        this.lenght = lenght;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    @Override
    public String toString() {
        return "Lecture{" +
                "lenght=" + lenght +
                ", name='" + name + '\'' +
                ", teacher='" + teacher + '\'' +
                '}';
    }

    public Lecture(int lenght, String name, String teacher) {
        this.lenght = lenght;
        this.name = name;
        this.teacher = teacher;
    }
}
