import 'dart:core';
import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../widgets/box_students.dart';

final List<List<String>> _students = [
    ['Camila Fernandes', 'Bacharelado em Engenharia Elétrica', 'lalala'],
    ['Claber toledo', 'Tecnologia e sistemas de Redes', 'lalalallalal'],
    ['Felipe lalalla', 'Tecnologia e sistemas de Redes', 'lalalallalal']
  ];
final CustomTheme _customTheme = CustomTheme();
final CustomDetailsTheme _customDetailsTheme = CustomDetailsTheme(
    colorTheme: Colors.grey.shade200,
    colorTheme2: Colors.grey
  );

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _customDetailsTheme.colorTheme,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Container(
            height: 100,
            width: 150,
            // padding: EdgeInsets.symmetric(horizontal: 200, vertical: 80),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/utfpr_logo.png'),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: _customTheme.decorationBoxPrincipalAboutUs(context),
            child: Column(
              children: [
                const SizedBox(height: 8),

                Text('Projeto Integrador',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: CustomTheme.yellow
                ),
                ),
                const SizedBox(height: 8),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(style: TextStyle(
                      fontSize: 15,
                      color: _customDetailsTheme.colorTheme),
                       children: const [
                      TextSpan(text: 'blablalblalfmsdkjfnskdfns'),
                      TextSpan(text: 'blablalblalfmsdkjfnskdfns'),
                      TextSpan(text: 'blablalblalfmsdkjfnskdfns'),
                      TextSpan(text: 'blablalblalfmsdkjfnskdfns'),
                      TextSpan(text: 'blablalblalfmsdkjfnskdfns'),
                    ]),
                  ),
                ),
                const SizedBox(height: 8),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.flutter_dash_rounded,
                    color: _customDetailsTheme.colorTheme2),
                  Icon(Icons.apple),
                  Icon(Icons.adb_rounded)
                  ],)
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: ListView(
              padding: EdgeInsets.all(20),
              shrinkWrap: true,
              controller: ScrollController(initialScrollOffset: 2),
              // scrollDirection: Axis.horizontal,
              children: [
                StudentBox(
                  studentName: _students[0][0],
                  studentCourse: _students[0][1],
                  imageStudentPath: _students[0][2],
                ),
               StudentBox(
                  studentName: _students[1][0],
                  studentCourse: _students[1][1],
                  imageStudentPath: _students[1][2],
                ),
                StudentBox(
                  studentName: _students[2][0],
                  studentCourse: _students[2][1],
                  imageStudentPath: _students[2][2],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
