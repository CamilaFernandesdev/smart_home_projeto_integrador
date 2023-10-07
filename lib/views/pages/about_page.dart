import 'dart:core';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../../shared/widgets/box_students.dart';
import '../../controllers/students_controller.dart';

final studentsController = StudentsController();

final CustomDetailsTheme _customDetailsTheme = CustomDetailsTheme(
    colorTheme: Colors.grey.shade200, colorTheme2: Colors.grey);

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 130,
            width: double.infinity,
            // padding: EdgeInsets.symmetric(horizontal: 200, vertical: 80),
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/utfpr_logo.png'),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            'Projeto Integrador',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: CustomTheme.yellow),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 12, color: _customDetailsTheme.colorTheme),
                  children: const [
                    TextSpan(
                        text:
                            'Projeto de IoT (Internet of Things) desenvolvido pelos alunos da '),
                    TextSpan(
                        text:
                            'Universidade Tecnológica Federal do Paraná (UTFPR) '),
                  ]),
            ),
          ), // Padding
          const SizedBox(height: 8),
          Text(
            'Integrantes:',
            style:
                TextStyle(fontSize: 15, color: _customDetailsTheme.colorTheme),
          ),
          const SizedBox(height: 4),

          Expanded(
            child: ListView.builder(
              itemCount: studentsController.students.length,
              itemBuilder: (BuildContext context, int index) {
                final student = studentsController.students[index];
                return StudentBox(
                  studentName: student.name,
                  studentCourse: student.course,
                );
              },
            ),
          ), // ListView
        ]),
      ),
    ); //Column
    // Container
    // Column
    // SingleChildScrollView
    // Scaffold
  }
}
