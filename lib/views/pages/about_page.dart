import 'dart:core';
import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../widgets/box_students.dart';

final List<List<String>> _students = [
  ['Camila Fernandes Lopes', 'Bacharelado em Engenharia Elétrica', 'lalala'],
  [
    'Cleber Brantl de Souza',
    'Tecnologia em Sistemas de Telecomunicações',
    'lalalallalal'
  ],
  [
    'Felipe Grabriel Moreira',
    'Tecnologia em Sistemas de Telecomunicações',
    'lalalallalal'
  ]
];
final CustomTheme _customTheme = CustomTheme();
final CustomDetailsTheme _customDetailsTheme = CustomDetailsTheme(
    colorTheme: Colors.grey.shade200, colorTheme2: Colors.grey);

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _customDetailsTheme.colorTheme,
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: Container(
            height: 110,
            width: 180,
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
                            fontSize: 12,
                            color: _customDetailsTheme.colorTheme),
                        children: const [
                          TextSpan(
                              text:
                                  'Projeto de IoT (Internet of Things) desenvolvido pelos alunos da '),
                          TextSpan(
                              text:
                                  'Universidade Tecnológica Federal do Paraná (UTFPR) '),
                          TextSpan(
                              text:
                                  'como componente curricular da disciplina de Projeto Integrador 1 '),
                          TextSpan(
                              text:
                                  'do curso Tecnologia em Sistemas de Telecomunicações. '),
                          TextSpan(
                              text:
                                  'com o objetivo de criar uma automação de dispositivos via conexão wireless '),
                          TextSpan(text: 'direcionado ao usuário doméstico. '),
                          TextSpan(
                              text:
                                  'Utilizamos o microcontrolador ESP32 para automatizar e ser a ponte entre o '),
                          TextSpan(
                              text:
                                  'aplicativo móvel aos dispositivos conectados na rede.'),
                        ]),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Integrantes:',
                  style: TextStyle(
                      fontSize: 15, color: _customDetailsTheme.colorTheme),
                ),
                const SizedBox(height: 4),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     const Text('Dispositivos: ',
                //     style: TextStyle(
                //             fontSize: 15,
                //             color: Colors.grey),),
                //     Icon(Icons.apple),
                //     Icon(Icons.adb_rounded)
                //   ],
                // ),
                Column(
                  // child: ListView(
                  //   padding: EdgeInsets.all(20),
                  //   shrinkWrap: true,
                  //   controller: ScrollController(initialScrollOffset: 2),
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
              ],
            ),
          ),
        ),
        // Expanded(
        //     child: Column(
        //     // child: ListView(
        //     //   padding: EdgeInsets.all(20),
        //     //   shrinkWrap: true,
        //     //   controller: ScrollController(initialScrollOffset: 2),
        //       // scrollDirection: Axis.horizontal,
        //       children: [
        //         StudentBox(
        //           studentName: _students[0][0],
        //           studentCourse: _students[0][1],
        //           imageStudentPath: _students[0][2],
        //         ),
        //        StudentBox(
        //           studentName: _students[1][0],
        //           studentCourse: _students[1][1],
        //           imageStudentPath: _students[1][2],
        //         ),
        //         StudentBox(
        //           studentName: _students[2][0],
        //           studentCourse: _students[2][1],
        //           imageStudentPath: _students[2][2],
        //         ),
        //       ],
        //     ),
        //   ),
      ]),
    );
  }
}
