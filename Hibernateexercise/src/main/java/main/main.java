package main;

import model.Lecture;
import model.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import java.util.List;
import java.util.Scanner;

public class main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                .configure()
                .build();
        final SessionFactory sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
        final Session session = sessionFactory.openSession();
        session.beginTransaction();
        System.out.println("Witaj! Aby sie zalogowac podaj login: ");
        String login=sc.next();
        final List<Student> uzytkownikList = session.createQuery("from Student", Student.class).getResultList();
        if (login.equals(uzytkownikList.get(0).getName()))
        {
            final List<Lecture> lectures = session.createQuery("FROM Lecture", Lecture.class).getResultList();
            for (Lecture l:lectures
                 ) {
                System.out.printf("%s %s %d",
                        l.getNameOfLecture(),
                        l.getTeacher(),
                        l.getLenght());
            }
        }

        session.close();
        StandardServiceRegistryBuilder.destroy(registry);







    }
}
