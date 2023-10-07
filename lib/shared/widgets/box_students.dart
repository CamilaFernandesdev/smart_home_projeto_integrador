import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class StudentBox extends StatelessWidget {
  final String studentName;
  final String studentCourse;

  const StudentBox({
    super.key,
    required this.studentName,
    required this.studentCourse,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: CustomTheme.lightGrey,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: CustomTheme.standardGrey,
                child: Text(
                  studentName[0],
                  style: TextStyle(color: CustomTheme.lightGrey),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    studentName,
                    style: TextStyle(
                        fontSize: 15,
                        color: CustomTheme.turnOffColorContainer,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    studentCourse,
                    style: TextStyle(
                        fontSize: 11, color: CustomTheme.turnOffColorContainer),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
