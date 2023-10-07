import 'dart:core';
import '../../models/students_model.dart';

class StudentsController {
  final List<Student> students;

  StudentsController() : students = loadStudents();

  static List<Student> loadStudents() {
    return const [
      Student(
        name: "Camila Fernandes Lopes",
        course: "Bachelor's Degree in Electrical Engineering",
      ),
      Student(
        name: "Cleber Brantl de Souza",
        course: "Technology in Telecommunications Systems",
      ),
      Student(
        name: "Felipe Gabriel Moreira",
        course: "Technology in Telecommunications Systems",
      ),
    ];
  }
}
