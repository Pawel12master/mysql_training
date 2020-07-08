package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.mapping.MetadataSource;
import org.w3c.dom.ls.LSOutput;

import java.util.List;
import java.util.Scanner;

public class HibernateDemo {
    public static void main(String[] args) {
       final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                .configure()
                .build();
       final SessionFactory sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
       final Session session = sessionFactory.openSession();

        Scanner scanner = new Scanner(System.in);
        System.out.println("Witaj! Podaj swoj login: ");
        String login = scanner.next();
        System.out.println("Podaj haslo");
        String haslo = scanner.next();


       session.close();
       StandardServiceRegistryBuilder.destroy(registry);

    }
}
