import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BoxProjetoIntegrador extends StatelessWidget {
  const BoxProjetoIntegrador({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // padding: EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: CustomTheme.yellow,
          minimumSize: const Size(230, 55),
        ),
        child: const Text(
          'Projeto Integrador',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/about');
        },
      ),
    );
  }
}
