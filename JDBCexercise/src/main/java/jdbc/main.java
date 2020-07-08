package jdbc;
import model.Comment;
import model.Lecture;
import model.Student;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class main {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        final Class<?> aClass = Class.forName("com.mysql.cj.jdbc.Driver");
        final Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbclecture?serverTimezone=UTC", "root", "!Sto4CZWARTA!");
        final Statement statement = connection.createStatement();
        Scanner scanner = new Scanner(System.in);
        System.out.printf("Aby dodać komentarz musisz najpierw się zalogować, podaj swoje imie:");
        String login = scanner.next();
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT name,student_id FROM student WHERE name=?");
        preparedStatement.setString(1, login);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            if (login.equals(resultSet.getString("name"))) {
                int student_id = resultSet.getInt("student_id");
                System.out.println("Udalo ci sie zalogować wybierz wykład do ktorego chcesz dodać komentarz: ");
                ResultSet resultSet1 = statement.executeQuery("select * from lecture");
                while (resultSet1.next()) {
                    System.out.printf("%d %s %s %n",
                            resultSet1.getInt("lecture_id"),
                            resultSet1.getString("name"),
                            resultSet1.getString("teacher")

                    );
                }
                int pickLecture = scanner.nextInt();
                System.out.println("Dodaj komentarz: ");
                String comment = scanner.next();
                PreparedStatement preparedStatement1 = connection.prepareStatement("INSERT INTO comment (content,lecture_id,student_id) "+" VALUES (?,?,?)");
                preparedStatement1.setString(1,comment);
                preparedStatement1.setInt(2,pickLecture);
                preparedStatement1.setInt(3,student_id);
                preparedStatement1.executeUpdate();

            }
        }


        connection.close();
    }
}
